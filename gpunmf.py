"""
NMF code modified to work on (NVIDIA) GPUs by Sai Krishanth PM
The original code is by Guangtun Ben Zhu (https://github.com/guangtunbenzhu/NonnegMFPy)
and Bin Ren (https://github.com/seawander/nmf_imaging)
For questions/comments, contact saikrishanth@arizona.edu 
"""

import cupy as cp
from time import time
from cupyx.scipy import sparse
# Some magic numbers
_largenumber = 1E100
_smallnumber = 1E-5

class NMF:

    def __init__(self, X, W=None, H=None, V=None, M=None, n_components=5):

        # I'm making a copy for the safety of everything; should not be a bottleneck
        self.X = cp.copy(X) 
        if (cp.count_nonzero(self.X<0)>0):
            print("There are negative values in X. Setting them to be zero...", flush=True)
            self.X[self.X<0] = 0.

        self.n_components = n_components
        self.maxiters = 1000
        self.tol = _smallnumber

        if (W is None):
            self.W = cp.random.rand(self.X.shape[0], self.n_components)
        else:
            if (W.shape != (self.X.shape[0], self.n_components)):
                raise ValueError("Initial W has wrong shape.")
            self.W = cp.copy(W)
        if (cp.count_nonzero(self.W<0)>0):
            print("There are negative values in W. Setting them to be zero...", flush=True)
            self.W[self.W<0] = 0.

        if (H is None):
            self.H = cp.random.rand(self.n_components, self.X.shape[1])
        else:
            if (H.shape != (self.n_components, self.X.shape[1])):
                raise ValueError("Initial H has wrong shape.")
            self.H = cp.copy(H)
        if (cp.count_nonzero(self.H<0)>0):
            print("There are negative values in H. Setting them to be zero...", flush=True)
            self.H[self.H<0] = 0.

        if (V is None):
            self.V = cp.ones(self.X.shape)
        else:
            if (V.shape != self.X.shape):
                raise ValueError("Initial V(Weight) has wrong shape.")
            self.V = cp.copy(V)
        if (cp.count_nonzero(self.V<0)>0):
            print("There are negative values in V. Setting them to be zero...", flush=True)
            self.V[self.V<0] = 0.

        if (M is None):
            self.M = cp.ones(self.X.shape, dtype=cp.bool)
        else:
            if (M.shape != self.X.shape):
                raise ValueError("M(ask) has wrong shape.")
            if (M.dtype != cp.bool):
                raise TypeError("M(ask) needs to be boolean.")
            self.M = cp.copy(M)

        # Set masked elements to be zero
        self.V[(self.V*self.M)<=0] = 0
        self.V_size = cp.count_nonzero(self.V)

    @property
    def cost(self):
        """
        Total cost of a given set s
        """
        diff = self.X - cp.dot(self.W, self.H)
        chi2 = cp.einsum('ij,ij', self.V*diff, diff)/self.V_size
        return chi2

    def SolveNMF(self, W_only=False, H_only=False, sparsemode=False, maxiters=None, tol=None):

        t0 = time()

        if (maxiters is not None): 
            self.maxiters = maxiters
        if (tol is not None):
            self.tol = tol

        chi2 = self.cost
        oldchi2 = _largenumber

        if (W_only and H_only):
            print("Both W_only and H_only are set to be True. Returning ...", flush=True)
            return (chi2, 0.)

        if (sparsemode == True):
            V = sparse.csr_matrix(self.V)
            VT = sparse.csr_matrix(self.V.T)
            multiply = sparse.csr_matrix.multiply
            dot = sparse.csr_matrix.dot
        else:
            V = cp.copy(self.V)
            VT = V.T
            multiply = cp.multiply
            dot = cp.dot

        #XV = self.X*self.V
        XV = multiply(V, self.X)
        XVT = multiply(VT, self.X.T)

        niter = 0

        while (niter < self.maxiters) and ((oldchi2-chi2)/oldchi2 > self.tol):

            # Update H
            if (not W_only):
                H_up = dot(XVT, self.W)
                WHVT = multiply(VT, cp.dot(self.W, self.H).T)
                H_down = dot(WHVT, self.W)
                self.H = self.H*H_up.T/H_down.T

            # Update W
            if (not H_only):
                W_up = dot(XV, self.H.T)
                WHV = multiply(V, cp.dot(self.W, self.H))
                W_down = dot(WHV, self.H.T)
                self.W = self.W*W_up/W_down

            # chi2
            oldchi2 = chi2
            chi2 = self.cost

            # Some quick check. May need its error class ...
            if (not cp.isfinite(chi2)):
                raise ValueError("NMF construction failed, likely due to missing data")

            if (cp.mod(niter, 20)==0):
                print("Current Chi2={0:.4f}, Previous Chi2={1:.4f}, Change={2:.4f}% @ niters={3}".format(chi2,oldchi2,(oldchi2-chi2)/oldchi2*100.,niter), flush=True)

            niter += 1
            if (niter == self.maxiters):
                print("Iteration in re-initialization reaches maximum number = {0}".format(niter), flush=True)

        time_used = (time()-t0)/60.
        print("Took {0:.3f} minutes to reach current solution.".format(time_used), flush=True)

        return (chi2, time_used)
        
def columnize(data, mask = None):
    """  Columnize an image or an image cube, excluding the masked out pixels
    Inputs:
        data: (n * height * width) or (height * width)
        mask: height * width
    Output:
        columnized: (n_pixel * n) where n_pixel is the number of unmasked pixels
    """
    if len(data.shape) == 2:
        #indicating we are flattending an image rather than a cube.
        if mask is None:
            mask = cp.ones(data.shape)
        
        mask[mask < 0.9] = 0
        mask[mask != 0] = 1
        #clean the mask
        
        mask_flt = mask.flatten()
        data_flt = data.flatten()
        
        columnized = cp.zeros((int(cp.prod(cp.array(data.shape))-cp.prod(cp.array(mask.shape))+cp.nansum(mask)), 1))

        columnized[:, 0] = data_flt[mask_flt == 1]
        
        return columnized
        
    elif len(data.shape) == 3:
        #indicating we are vectorizing an image cube
        if mask is None:
            mask = cp.ones(data.shape[1:])
        
        mask[mask < 0.9] = 0
        mask[mask != 0] = 1
        #clean the mask
        
        mask_flt = mask.flatten()
        
        columnized = cp.zeros((int(cp.prod(cp.array(data.shape[1:]))-cp.prod(cp.array(mask.shape))+cp.nansum(mask)), data.shape[0]))
        
        for i in range(data.shape[0]):
            data_flt = data[i].flatten()
            columnized[:, i] = data_flt[mask_flt == 1]
        
        return columnized
        
def decolumnize(data, mask):
    """Decolumize either the components or the modelling result. i.e., to an image!
    data: NMF components or modelling result
    mask: must be given to restore the proper shape
    """
    mask_flatten = mask.flatten()
    
    if (len(data.shape) == 1) or (data.shape[1] == 1):
        #single column to decolumnize
        mask_flatten[cp.where(mask_flatten == 1)] = data.flatten()
        return mask_flatten.reshape(mask.shape)
    else:
        #several columns to decolumnize
        result = cp.zeros((data.shape[1], mask.shape[0], mask.shape[1]))
        for i in range(data.shape[1]):
            results_flatten = cp.copy(mask_flatten)
            results_flatten[cp.where(mask_flatten == 1)] = data[:, i]
            result[i] = results_flatten.reshape(mask.shape)
            
        return result
        
def NMFcomponents(ref, ref_err = None, mask = None, n_components = None, maxiters = 1e3, oneByOne = False, path_save = None):
    """ref and ref_err should be (n * height * width) where n is the number of references. Mask is the region we are interested in.
    if mask is a 3D array (binary, 0 and 1), then you can mask out different regions in the ref.
    if path_save is provided, then the code will star from there.
    """
    if ref_err is None:
        ref_err = cp.sqrt(ref)
    
    if mask is None:
        mask = cp.ones(ref.shape[1:])
        
    if (n_components is None) or (n_components > ref.shape[0]):
        n_components = ref.shape[0]
        
    mask[mask < 0.9] = 0
    mask[mask != 0] = 1    
    
    ref[ref < 0] = 0
    ref_err[ref <= 0] = cp.percentile(ref_err, 95)*10 #Setting the err of <= 0 pixels to be max error to reduce their impact
    
    if len(mask.shape) == 2:
        ref[cp.isnan(ref)] = 0
        ref[~cp.isfinite(ref)] = 0
        ref_err[ref <= 0] = cp.percentile(ref_err, 95)*10 #handling bad values in 2D mask case
        
        ref_columnized = columnize(ref, mask = mask)
        ref_err_columnized = columnize(ref_err, mask = mask)
    elif len(mask.shape) == 3: # ADI data imputation case, or the case where some regions must be masked out
        
        mask[ref <= 0] = 0
        mask[cp.isnan(ref)] = 0
        mask[~cp.isfinite(ref)] = 0 # handling bad values in 3D mask case
        
        mask_mark = cp.nansum(mask, axis = 0) # This new mask is used to identify the regions that are masked out in all refs
        mask_mark[mask_mark != 0] = 1 # 1 means that there is coverage in at least one of the refs
        
        ref_columnized = columnize(ref, mask = mask_mark)
        ref_err_columnized = columnize(ref_err, mask = mask_mark)        
        mask_columnized = cp.array(columnize(mask, mask = mask_mark), dtype = bool)
                
    components_column = 0
    
    if oneByOne:
        print("Building components one by one...")
        if len(mask.shape) == 2:
            if path_save is None:
                for i in range(n_components):
                    print("\t" + str(i+1) + " of " + str(n_components))
                    n = i + 1
                    if (i == 0):
                        g_img = NMF(ref_columnized, V = 1.0/ref_err_columnized**2, n_components= n)
                    else:
                        W_ini = cp.random.rand(ref_columnized.shape[0], n)
                        W_ini[:, :(n-1)] = cp.copy(g_img.W)
                        W_ini = cp.array(W_ini, order = 'F') #Fortran ordering, column elements contiguous in memory.
                
                        H_ini = cp.random.rand(n, ref_columnized.shape[1])
                        H_ini[:(n-1), :] = cp.copy(g_img.H)
                        H_ini = cp.array(H_ini, order = 'C') #C ordering, row elements contiguous in memory.
                
                        g_img = NMF(ref_columnized, V = 1.0/ref_err_columnized**2, W = W_ini, H = H_ini, n_components= n)
                    chi2 = g_img.SolveNMF(maxiters=maxiters)
            
                    components_column = g_img.W/cp.sqrt(cp.nansum(g_img.W**2, axis = 0)) #normalize the components
            components = decolumnize(components_column, mask = mask)                    
        elif len(mask.shape) == 3: # different missing data at different references.
            if path_save is None:
                for i in range(n_components):
                    print("\t" + str(i+1) + " of " + str(n_components))
                    n = i + 1
                    if (i == 0):
                        g_img = NMF(ref_columnized, V = 1.0/ref_err_columnized**2, M = mask_columnized, n_components= n)
                    else:
                        W_ini = cp.random.rand(ref_columnized.shape[0], n)
                        W_ini[:, :(n-1)] = cp.copy(g_img.W)
                        W_ini = cp.array(W_ini, order = 'F') #Fortran ordering, column elements contiguous in memory.
                
                        H_ini = cp.random.rand(n, ref_columnized.shape[1])
                        H_ini[:(n-1), :] = cp.copy(g_img.H)
                        H_ini = cp.array(H_ini, order = 'C') #C ordering, row elements contiguous in memory.
                
                        g_img = NMF(ref_columnized, V = 1.0/ref_err_columnized**2, W = W_ini, H = H_ini, M = mask_columnized, n_components= n)
                    chi2 = g_img.SolveNMF(maxiters=maxiters)
            
                    components_column = g_img.W/cp.sqrt(cp.nansum(g_img.W**2, axis = 0)) #normalize the components
            
            components = decolumnize(components_column, mask = mask_mark) # ignore the regions that are commonly masked out in all refs 

            for i in range(components.shape[0]):
                components[i][cp.where(mask_mark == 0)] = cp.nan
            components = (components.T/cp.sqrt(cp.nansum(components**2, axis = (1, 2))).T).T

    return components
    
def NMFmodelling(trg, components, n_components = None, trg_err = None, mask_components = None, mask_interested = None, maxiters = 1e3, returnChi2 = False, projectionsOnly = False, coefsAlso = False, cube = False, trgThresh = 1.0, mask_data_imputation = None):

    if mask_interested is None:
        mask_interested = cp.ones(trg.shape)
    if mask_components is None:
        mask_components = cp.ones(trg.shape)
        mask_components[cp.where(cp.isnan(components[0]))] = 0
    if n_components is None:
        n_components = components.shape[0]
        
    if mask_data_imputation is None:
        flag_di = 0
        mask_data_imputation = cp.ones(trg.shape)
    else:
        flag_di = 1
        print('Data Imputation!')
        
    mask = mask_components*mask_interested*mask_data_imputation
    
    mask[mask < 0.9] = 0
    mask[mask != 0] = 1
        
    if trg_err is None:
        trg_err = cp.sqrt(trg)
        
    trg[trg < trgThresh] = 0
    trg_err = cp.nan_to_num(trg_err) #nanpercentile does not exis in cupy
    trg_err[trg == 0] = cp.percentile(trg_err, 95)*10
    
    components_column = columnize(components[:n_components], mask = mask)
    
    if flag_di == 1:
        mask_all = mask_components*mask_interested
        mask_all[mask_all < 0.9] = 0
        mask_all[mask_all != 0] = 1
        components_column_all = columnize(components[:n_components], mask = mask_all)
    
    trg_column = columnize(trg, mask = mask)
    trg_err_column = columnize(trg_err, mask = mask)
    if not cube:
        trg_img = NMF(trg_column, V=1/trg_err_column**2, W=components_column, n_components = n_components)
        (chi2, time_used) = trg_img.SolveNMF(H_only=True, maxiters = maxiters)
    
        coefs = trg_img.H
        
        if not projectionsOnly:
            # return only the final result
            if flag_di == 0:
                model_column = cp.dot(components_column, coefs)
    
                model = decolumnize(model_column, mask)
                model[cp.where(mask == 0)] = cp.nan
            elif flag_di == 1:
                model_column = cp.dot(components_column_all, coefs)
                model = decolumnize(model_column, mask_all)
                model[cp.where(mask_all == 0)] = cp.nan
            
        else:
            # return the individual projections
            if not coefsAlso:
                return (coefs.flatten() * components.T).T
            else:
                return (coefs.flatten() * components.T).T, coefs
    else:
        print("Building models one by one...")
        
        for i in range(n_components):
            print("\t" + str(i+1) + " of " + str(n_components))
            trg_img = NMF(trg_column, V=1/trg_err_column**2, W=components_column[:, :i+1], n_components = i + 1)
            (chi2, time_used) = trg_img.SolveNMF(H_only=True, maxiters = maxiters)
    
            coefs = trg_img.H
            
            if flag_di == 0:
                model_column = cp.dot(components_column[:, :i+1], coefs)
    
                model_slice = decolumnize(model_column, mask)
                model_slice[cp.where(mask == 0)] = cp.nan
            elif flag_di == 1:
                model_column = cp.dot(components_column_all[:, :i+1], coefs)
                model_slice = decolumnize(model_column, mask_all)
                model_slice[cp.where(mask_all == 0)] = cp.nan
            
            if i == 0:
                model = cp.zeros((n_components, ) + model_slice.shape)
            model[i] = model_slice
            
    if returnChi2:
        return model, chi2
    if coefsAlso:
        return model, coefs
    return model
    
def NMFsubtraction(trg, model, mask = None, frac = 1):
    """Yeah subtraction!"""
    
    if mask is not None:
        trg = trg*mask
        model = model*mask
    if cp.shape(cp.asarray(frac)) == ():
        return trg-model*frac
    result = cp.zeros((len(frac), ) + model.shape)
    for i, fraction in enumerate(frac):
        result[i] = trg-model*fraction
    return result
    
def NMFbff(trg, model, mask = None, fracs = None):
    """BFF subtraction.
    Input: trg, model, mask (if need to be), fracs (if need to be).
    Output: best frac
    """
    if mask is not None:
        trg = trg*mask
        model = model*mask
        
    if fracs is None:
        fracs = cp.arange(0.80, 1.001, 0.001) 
    
    std_infos = cp.zeros(fracs.shape)
    
    for i, frac in enumerate(fracs):
        data_slice = trg - model*frac
        while 1:
            if cp.nansum(data_slice > cp.nanmedian(data_slice) + 3*cp.nanstd(data_slice)) == 0 or cp.nansum(data_slice < cp.nanmedian(data_slice) -3*cp.nanstd(data_slice)) == 0: 
                break
            data_slice[data_slice > cp.nanmedian(data_slice) + 3*cp.nanstd(data_slice)] = cp.nan
            data_slice[data_slice < cp.nanmedian(data_slice) - 3*cp.nanstd(data_slice)] = cp.nan 
        std_info = cp.nanstd(data_slice)
        std_infos[i] = std_info
    return fracs[cp.where(std_infos == cp.nanmin(std_infos))]
