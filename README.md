# Airfoil-PIV-data-for-linear-ROM
<!-- Last modified: 2021/04/03 -->
---
This repository contains Matlab R2020a code to load the data used in the manuscript entitled __"Quantitative Evaluation of Predictability of Linear Reduced-order Model based on Particle-image-velocimetry Data of Flow Field around Airfoil"__ published in [arXiv](https://arxiv.org/abs/1907.12239).  
Although the reduced order model code is not included, the same data are available by nunning the program. 
To run the program, download and extract the database and execute `P01_loadmat_makeimage`.  

## Directory
---
- src: directory in which the source code is stored  
- work: directory in which the calculation results are stored (created automatically by running the program)  
  - 18deg: directory for the case for 18 deg of angle of attack
    - PIV_flowfield: directory for the PIV data  
      - u: directory for images of u-velocity are stored
      - v: directory for images of v-velocity are stored
  
## Download Database  
---
This repositoryWork directory that includes the original mat files can be downloaded from http://aero.mech.tohoku.ac.jp/rom/Airfoil-PIV-data-for-linear-ROM-18.zip
Please download and extract it. Please set the work dir in the same layout as noted above.
 - k0.mat: index of masked region
 - k1.mat: index of nonmasked region
 - NUM_t.mat: time
 - ufield_allt.mat: All the snapshot data of time-series u-fields
 - vfield_allt.mat: All the snapshot data of time-series v-fields
 - ufield_ave.mat: time-averaged u-fields
 - vfield_ave.mat: time-averaged v-fields

## Code  
---
### Main program  
- P01_loadmat_makeimage.m  

### Function  
- F_colormap_org.m  
- F_ffvis.m  
- F_rangemod.m  
- F_wingdraw.m  
- F_wingread.m  

### Textdata  
- NACA0015.txt


