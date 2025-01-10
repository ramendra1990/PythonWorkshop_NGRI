# PythonWorkshop_NGRI
Scripts and data for python for geosciences workshop @[skillIndia](https://www.skillindiadigital.gov.in/home) @[NGRI](https://www.ngri.res.in/)


If you want to create a separate conda environment dedicated to the analysis of DEMs (e.g. Py3_DEM):
'''
conda create -y -n Py3_DEM python=3.* pip scipy pandas numpy matplotlib scikit-image gdal ipython spyder statsmodels jupyter pyproj
conda activate Py3_DEM
conda install -y -c conda-forge landlab
'''


