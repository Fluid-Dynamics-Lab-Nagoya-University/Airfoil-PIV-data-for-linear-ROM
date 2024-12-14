# Airfoil-PIV-data-for-linear-ROM
<!-- Last modified: 2021/04/03 -->
---
This repository contains Matlab R2020a code to load the data used in the manuscript entitled __"Quantitative Evaluation of Predictability of Linear Reduced-order Model based on Particle-image-velocimetry Data of Flow Field around Airfoil"__ published in [Experiments in Fluids, Vol. 62, 112, 2021](https://link.springer.com/article/10.1007/s00348-021-03205-8)  and [arXiv](https://arxiv.org/abs/1907.12239).  
Although the reduced order model code is not included, the same data are available by nunning the program. 
To run the program, download and extract the database and execute `P01_loadmat_makeimage`.  

## Database description
---
- Small Low Turbulence Wind Tunnel in Institute of Fluid Science
- Separated flow of 10 m/s freestream around 100 mm NACA0015
- Time-resolved PIV of 5000 Hz pair images with Photoron SA-X2 and Photonics Industries, DM30-527
- Measured on December 5th 2018 by Koki Nankai and Atsushi Komuro
- PIV is processed by Dantec Dynamic Studio
- The time step of velocity data is \Delta f c/u_{\infty} = 0.02 

See the corresponding paper for more details.

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
Work directory that includes the original mat files can be downloaded from http://www.aero.mech.tohoku.ac.jp/rom/Nonomura2021-Airfoil-PIV-data-for-linear-ROM-18.zip.
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

## How to cite  
---
If you use the data in your work, please cite the data itself and relevant papers.  
### General software reference:  
``` bibtex
@misc{Nonomura2021github,
      author = {Taku Nonomura and Koki Nankai and Yuto Iwasaki and Atsushi Komuro and Keisuke Asai},
      title = {Airfoil PIV data for linear ROM},
      howpublished = {Available online},
      year = {2021},
      url = {https://github.com/Aerodynamics-Lab/Airfoil-PIV-data-for-linear-ROM}
}
```  

### Quantitive Evaluation of Linear ROM
``` bibtex
@article{nonomura2021quantitative,
  title={Quantitative evaluation of predictability of linear reduced-order model based on particle-image-velocimetry data of separated flow field around airfoil},
  author={Nonomura, Taku and Nankai, Koki and Iwasaki, Yuto and Komuro, Atsushi and Asai, Keisuke},
  journal={Experiments in Fluids},
  volume={62},
  number={5},
  pages={1--22},
  year={2021},
  publisher={Springer}
}

@misc{nonomura2021quantitative,
      title={Quantitative evaluation of predictability of linear reduced-order model based on particle-image-velocimetry data of separated flow field around airfoil}, 
      author={Nonomura, Taku and Nankai, Koki and Iwasaki, Yuto and Komuro, Atsushi and Asai, Keisuke},
      year={2021},
      eprint={1907.12239v2},
      archivePrefix={arXiv},
      primaryClass={physics.flu-dyn}
}
```

## Author
---
Taku Nonomura, Koki Nankai, Yuto Iwasaki, Atsushi Komuro, Keisuke Asai 
[Experimental Aerodynamics Laboratory](http://www.aero.mech.tohoku.ac.jp/eng/)  
Department of Aerospace Engineering, Tohoku University  
Sendai, JAPAN  
E-mail: nonomura@tohoku.ac.jp
