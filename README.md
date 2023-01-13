# Data Science Project for CapGemini 2022-2023

<img width="360" alt="capture_1" src="https://user-images.githubusercontent.com/66907341/211081363-656847cc-cff7-4172-b6c4-803802148709.png">
This project is here to introduce ourselves to Docker Pipelines and Data Science industrialization. The main goal is to export a notebook into a docker file in order to be able to run this given script on every single machine.   

## Installation 
First, you need to download the repository and put it into your local machine by using the git bash command

```git clone https://github.com/TimotheeNourris/Application_of_big_data.git``` 

The dataset and the model ``ResNet152V2-Weather-Classification-03.h5`` are not inside the downloaded repository, you need to manually add it.

![capture_2](https://user-images.githubusercontent.com/66907341/211081557-4ac64c4f-2663-479e-beb2-16270cb0f566.png)

Then you need to add the model file, you should have the following repository:

![capture_3](https://user-images.githubusercontent.com/66907341/211081662-f9e599d1-05fa-46ed-b1f1-e2e581ed49d0.png)

Next, to install the requirements you have to launch a cmd bash with the repository path and put the command 
``pip install -r requirements.txt`` 

<img width="360" alt="capture_4" src="https://user-images.githubusercontent.com/66907341/211081676-214aafcf-196b-4d99-a5eb-3551ff16a803.png">

Finally, In order to test if the installation worked, load you datas and then put the cmd command 
``python weather_classification_tp.py`` 

![capture_5](https://user-images.githubusercontent.com/66907341/211081682-a19051da-7bdb-442c-8d99-5a21b462dec6.png)


## User Guide

Start Docker device (we used Docker Desktop)

Create a docker image :
 ``docker image build -t weather_class_v1``

<img width="360" alt="capture_6" src="https://user-images.githubusercontent.com/66907341/211081683-7da3b8dd-b1b6-4f02-8dbc-0e8eb1363b04.png">

Run the volume and the input container :  
Now launch Ubuntu on this directory and put the following command to create an input and output volumes for the input data and the results.

``docker run -v "/path/to/data":/input_vol -v "/path/to/output":/output_vol weather_class_v1``

In our case we ran:
``docker run -v "/mnt/c/Cours/M2/S9/Applications of Big Data/Data_Science_project/data":/input_vol -v "/mnt/c/Cours/M2/S9/Applications of Big Data/Data_Science_project/output":/output_vol weather_class_v1``

<img width="360" alt="capture_7" src="https://user-images.githubusercontent.com/66907341/211081686-f1414fc8-2541-4fee-8054-0da74ae99726.png">

