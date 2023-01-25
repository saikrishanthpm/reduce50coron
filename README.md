# STIS EPS ERI REDUCTION PIPELINE

To run:
1. Download into local directory using git: 
'git clone https://github.com/saikrishanthpm/reduce50coron.git'
2. Navigate into downloaded directory: 
'cd '
3. Compile docker image into container:
'docker build -t pipeline .'
4. Run docker container:
'docker run -p 8888:8888 -v ~/Desktop/pipeline/:/home/jovyan pipeline'
5. You should have a link that is generated after the previous command. Copy and paste it into a web brwoser. 
6. Once Jupyter Lab is open, open a terminal window inside the container
7. In the terminal, type:
'bash data_download_scripts/del_eri_ref.sh' and 
'bash data_download_scripts/eps_eri_trg.sh'
8. After this you can run the Jupyter Notebook called Pipeline.ipynb
