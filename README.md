# PythonWorkshop_NGRI
Scripts and data for python for geosciences workshop @[SkillIndia](https://www.skillindiadigital.gov.in/home) @[NGRI](https://www.ngri.res.in/)

Easiest way to run the codes on your local system will be to create an environment and install all the relevant modules using following command on your anaconda prompt. Before that you have download all the files (the git directory) on your local system. Then through command line go to the git directory and use the following command.
```
conda env create -f environment.yml
```
Or else, if you want to create a separate conda environment from scratch dedicated to the analysis of DEMs (e.g. LEM_environment):
```
conda create -n LEM_environment python=3.* pip scipy pandas numpy matplotlib scikit-image gdal ipython spyder statsmodels jupyter pyproj
conda activate LEM_environment
conda install -y -c conda-forge landlab
```



