# STIS EPS ERI REDUCTION PIPELINE

This will work on Linux and MacOS natively, and on Windows with WSL (https://learn.microsoft.com/en-us/windows/wsl/install) 

Prerequisites:
1. Docker 
2. Git

To run:
1. Download into local directory using git: 
`git clone https://github.com/saikrishanthpm/reduce50coron.git`
2. Navigate into downloaded directory: 
`cd reduce50coron`
3. Compile docker image into container:
`docker build -t pipeline .`
4. Run docker container:
`docker run -p 8888:8888 -v /path/to/reduce50coron/:/home/jovyan pipeline`
5. You should have a link that is generated after the previous command. Copy and paste it into a web brwoser. 
6. Once Jupyter Lab is open, open a terminal window inside the container
7. In the terminal, type:
`bash data_download_scripts/del_eri_ref.sh` followed by
`bash data_download_scripts/eps_eri_trg.sh`
8. After this you can run the Jupyter Notebook called Pipeline.ipynb
9. The directories `del_eri_ref` and `eps_eri_trg` contain all 50CORON files for Delta Eridani and Epsilon Eridani. This is a good starting point to test that the pipeline is working and producing reasonable results. To reproduce the figure in the paper, execute `bash data_download_scripts/wedgea1_0.sh` first. This will download all of WEDGE A 1.0. Change the reference directory to wedgea1_0 in the pipeline, use 90 components, and set maxiters to 1E4. 
10. It is not recommended to run through all of WEDGE A 1.0 on your personal computer, it takes 9 hours on the UArizona HPC with 90 cores. A typical personal computer will have 8 cores. It should take around 30 minutes to get results using Delta Eridani as your reference on a reasonably recent machine using 8 cores. 
