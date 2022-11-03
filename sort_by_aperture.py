import astropy.io.fits as fits
import glob
import shutil
import os
from pathlib import Path
srcdir="data/"
destdir="data/"



for f in glob.glob(srcdir+"*.fits"):
    hd=fits.getheader(f)
    propaper=hd["PROPAPER"] #proposed aperture name
    sorted_dest=destdir+"/"+propaper.replace(".","_")
    Path(sorted_dest).mkdir(parents=True, exist_ok=True)
    shutil.move(f,sorted_dest+'/'+f.split("/")[-1])
    #print(hd["OBSMODE"])


