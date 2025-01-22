# PythonWorkshop_NGRI
Scripts and data for python for geosciences workshop @[SkillIndia](https://www.skillindiadigital.gov.in/home) @[NGRI](https://www.ngri.res.in/) </br>
</br>
[![Binder](https://img.shields.io/badge/Gaussian%20Hill%20and%20DEM%20analysis-blue?style=plastic&logo=python&logoColor=green&color=brown)](https://mybinder.org/v2/gh/ramendra1990/PythonWorkshop_NGRI/main?labpath=.%2FDEM%2FGaussianHill%2FGaussian+Hill+and+DEM+analysis.ipynb)
[![Binder](https://img.shields.io/badge/Hypsometry-binder-blue?style=plastic&logo=image/jpeg;base64,/9j/4AAQSkZJRgABAQEASABIAAD/2wBDAAMCAgMCAgMDAwMEAwMEBQgFBQQEBQoHBwYIDAoMDAsKCwsNDhIQDQ4RDgsLEBYQERMUFRUVDA8XGBYUGBIUFRT/2wBDAQMEBAUEBQkFBQkUDQsNFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBT/wAARCAAgACgDASIAAhEBAxEB/8QAGwAAAgIDAQAAAAAAAAAAAAAAAAQFBgECAwn/xAAoEAACAQMEAQQCAwEAAAAAAAABAgMEBREAEiExBhMiQWEUcSMkUaH/xAAUAQEAAAAAAAAAAAAAAAAAAAAA/8QAFBEBAAAAAAAAAAAAAAAAAAAAAP/aAAwDAQACEQMRAD8A9KfLI5KlmjkBFOkkBD/jE7R6qF8SBv8AAeMfWnZbci0cqRpRxzY9NWniX2OeFOce4ZIwMc/7nVc8ct2bJQJIiujpEplWmJ7cZCyk5+uVHX61aK60QeS2pYqsES9F0JUpIpwSCORgg4IP6Oggt17tzqKuwW64QAkGSl/ikIxwdjBlHznL6foL7Yqysio5aWOgrJV3RwVcKKZOeQjDKuR8hScZ0lUSeRWG3VdPI7XSExOIaxCq1UZOccYCPjIwTs66Pes2h/Gb1aKK3I/vgRY4lrozFU7owBvw4BYjI9wBGeQdBYLlbaSO3VTLSwqwiYgiMAg4P1o1F0NJcLZR3ShqKgVNHFTk07uSZQCG4LEncOOCcEdHd3o0CtvsCWFaOkCrN6Hox/kGjwWO9enB4/WPrTfk9BcIKinulrYvNTuXekaRljmBXawbGecAYbB2lR8FtP3W2PLMlRTxwmbfHktEGbAdSWzuHQH/ADXI1l4Up/T3AmTdtROAoyvcvbdfR7wOdBrafM7bczDE8woa6Tj8OqOyTdjJC/D8c5UkEYI403dPHrfeIDFVUscikhuVHDDpv2Pg9j41SvI79bZBWW+6LbjOqKZKScxKHkOCdyvNtPBDAsMYB+eNSPj9bLUb6G0VkLU9HKITHAkBESc4JVXyoJBwODgHjOgfe2mwWmohNRNURgSekZn3YRgcpk88E55J4Uc8aNcaiLyC826opKqGOBKinlBIgUMjZIUZE7DOAD8jkfeDQf/Z&logoColor=blue&labelColor=grey)](https://mybinder.org/v2/gh/ramendra1990/PythonWorkshop_NGRI/main?labpath=.%2FDEM%2FEarth_Mars%2FEarth+and+Mars+Hypsometry.ipynb)
[![Binder](https://img.shields.io/badge/Gaussian%20DEM%20flow%20analysis-blue?style=plastic&logo=python&logoColor=lime&color=blue)](https://mybinder.org/v2/gh/ramendra1990/PythonWorkshop_NGRI/main?labpath=.%2FDEM%2FGaussianHill%2FGaussian+Hill+-+FlowDirection+and+FlowAccumulation.ipynb)</br>
[![Binder](https://img.shields.io/badge/LEM%20Gaussian%20Hill-blue?style=plastic&logo=python&logoColor=greenyellow&color=darksalmon)](https://mybinder.org/v2/gh/ramendra1990/PythonWorkshop_NGRI/main?labpath=.%2FLEM%2FLEM+-+Gaussian+Hill.ipynb)
[![Binder](https://img.shields.io/badge/LEM%20Baspa%20Valley-blue?style=plastic&logo=python&logoColor=darkslateblue&color=deepskyblue)](https://mybinder.org/v2/gh/ramendra1990/PythonWorkshop_NGRI/main?labpath=.%2FLEM%2FBaspa+-+Landlab+Modeling+from+a+DEM.ipynb)</br>
[![Binder](https://img.shields.io/badge/river_profile-binder-blue?style=plastic&logo=data:image/jpeg;base64,/9j/4AAQSkZJRgABAQEASABIAAD/2wBDAAMCAgMCAgMDAwMEAwMEBQgFBQQEBQoHBwYIDAoMDAsKCwsNDhIQDQ4RDgsLEBYQERMUFRUVDA8XGBYUGBIUFRT/2wBDAQMEBAUEBQkFBQkUDQsNFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBT/wAARCAAXAB4DASIAAhEBAxEB/8QAGAAAAwEBAAAAAAAAAAAAAAAAAAcICQX/xAAtEAABAwIFAwMCBwAAAAAAAAABAgMEBREABgcSIRMxQQgiUTJxFBVCgZGh0f/EABgBAAMBAQAAAAAAAAAAAAAAAAEDBQAC/8QAIBEAAgEEAQUAAAAAAAAAAAAAAQIAAwQRIRITMUFR0f/aAAwDAQACEQMRAD8A01zXnmiZKpUioVeamKwydtiCVrVYHahPdR5Hb/cTRnT1kVurR3Y2TaA1Tt9wmpVNfWWlPyllICQrzcrUB8HDI1w0RZ1MgkfjnaVWWWlJjPRy22zI4v0yhRWdoAtcWsTfkdoerdOqmn82dTanIqFJlxHNq4cptKk8cjkAGxHkE3B7nEu6esGCqeIPnGYp3K7je0s9XGbsnZy6WeETMxUSYOk5LYcaCoyr+1YbO0W5IIB+LXsAbpgzWKlCYlxXUvxn20utOoNwtJFwR9wcZfQ6zCq3SadiKnTHQAIcYBdr+Vn6R+5/nFkel3KWdsm0SQ3WXW41AeQFQKRJWouxje903+hBBPtsObEAc34s6lUHpvse/sCVA/aPmWwJDWyyuSBubVtUBfmxwm9UNAqbq5WY702U5FciI6U1mKhNpCO6AFLvtUPCrHg2PYHBgxVZVcYYRpAYYM62lugOU9KENJo9NUmQ8FKVLmqC5SD32pUPam1/0WHHnDI/KmFNNod3OqRf3k7Sr77bD+sGDGChdAQBQowJ/9k=)](https://mybinder.org/v2/gh/ramendra1990/PythonWorkshop_NGRI/main?labpath=.%2FriverProfile_tutorial%2FriverProfileTutorial.ipynb)</br></br>

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



