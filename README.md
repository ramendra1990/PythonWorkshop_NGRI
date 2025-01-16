# PythonWorkshop_NGRI
Scripts and data for python for geosciences workshop @[SkillIndia](https://www.skillindiadigital.gov.in/home) @[NGRI](https://www.ngri.res.in/) </br>
</br>
[![Binder](https://img.shields.io/badge/Gaussian%20Hill%20and%20DEM%20analysis-blue?style=plastic&logo=python&logoColor=green&color=brown)](https://mybinder.org/v2/gh/ramendra1990/PythonWorkshop_NGRI/main?labpath=.%2FDEM+%2FGaussianHill%2FGaussian+Hill+and+DEM+analysis.ipynb)</br>
[![Binder](https://img.shields.io/badge/Gaussian%20DEM%20flow%20analysis-blue?style=plastic&logo=python&logoColor=lime&color=blue)](https://mybinder.org/v2/gh/ramendra1990/PythonWorkshop_NGRI/main?labpath=.%2FDEM%2FGaussianHill%2FGaussian+Hill+-+FlowDirection+and+FlowAccumulation.ipynb)</br>
[![Binder](https://img.shields.io/badge/LEM%20Gaussian%20Hill-blue?style=plastic&logo=python&logoColor=greenyellow&color=darksalmon)](https://mybinder.org/v2/gh/ramendra1990/PythonWorkshop_NGRI/main?labpath=.%2FLEM%2FLEM+-+Gaussian+Hill.ipynb)</br>
[![Binder](https://img.shields.io/badge/LEM%20Baspa%20Valley-blue?style=plastic&logo=python&logoColor=darkslateblue&color=deepskyblue)](https://mybinder.org/v2/gh/ramendra1990/PythonWorkshop_NGRI/main?labpath=.%2FLEM%2FBaspa+-+Landlab+Modeling+from+a+DEM.ipynb)</br></br>

The scripts consist of jupyter notebooks (.ipynb) as well as basic python files (.py). Jupyter notebooks are relatively straight forward examples and can be run for getting basic intuition about DEM analysis and landscape evolution modelling. For thoose of you who are more interested, they can experiment witth the python files in the `LEM` directory. </br>
In order to run the jupyter notebooks you can either download the files and run them from your local system or more conviniently use the binder tabs to run them. Binder tabs will create a remote repository/environment with all the necssary modules and files and you can then run the individual ipython notebooks.

### On your local system
Easiest way to run the codes on your local system will be to create an environment and install all the relevant modules using following command on your anaconda prompt. Before that you have download all the files (the [git directory](https://github.com/ramendra1990/PythonWorkshop_NGRI.git)) on your local system. Then through command line go to the git directory and use the following command.
```
conda env create -f environment.yml
```
Or else, if you want to create a separate conda environment from scratch dedicated to the analysis of DEMs (e.g. LEM_environment):
```
conda create -n LEM_environment python=3.* pip scipy pandas numpy matplotlib scikit-image gdal ipython spyder statsmodels jupyter pyproj
conda activate LEM_environment
conda install -y -c conda-forge landlab
```



