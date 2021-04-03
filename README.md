# Airfoil-PIV_data-for-linear-ROM
<!-- Last modified: 2021/04/03 -->
---
This repository contains Matlab R2020a code to load the data used in the manuscript entitled __"Quantitative Evaluation of Predictability of Linear Reduced-order Model based on Particle-image-velocimetry Data of Flow Field around Airfoil"__ published in [arXiv](https://arxiv.org/abs/1907.12239).  
Although the reduced order model code is not included, the same data are available by nunning the program. 
To run the program, download and extract the database and execute `P01_loadmat_makeimage`.  

## Directory  
---
- src: source code is stored  
- work: calculation results are stored (created automatically by running the program)  
  - 18deg: the case for 18 deg of angle of attack
    - PIV_flowfield  
      - k0.mat: includes masked region
      - 
      - u: images of u-velocity are stored
      - v: images of v-velocity are stored
  - sst.wkmean.1990-present.nc  
  - lsmask.nc  
NOAA_OI_SST_V2 is provided by the NOAA/OAR/ESRL PSD, Boulder, Colorado, USA, from their Web site at https://www.esrl.noaa.gov/psd/.  
Due to GitHub file size limitations, a dataset is linked online: [NOAA Optimum Interpolation (OI) Sea Surface Temperature (SST) V2](https://www.esrl.noaa.gov/psd/data/gridded/data.noaa.oisst.v2.html)  
