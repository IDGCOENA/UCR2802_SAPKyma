**Pre-Requisites:**
In order to execute the python script, please work with Support team for this mission [https://discovery-center.cloud.sap/protected/index.html#/missiondetail/3782/3823/]
to get Qualtrics API Token, Survey ID . We will also provide the anonymous Survey Link or link for specific users accordingto your request. IF the survey has to be sent for 
specific users, then we would need the E-Mail IDs to trigger the survey distribution.

TO validate the python script with the details provided by SAP, please execute the file main.py from your existing python environment. If you do not have an environment
setup, then please use Colabs [https://colab.research.google.com/] provided by Google. It is a hosted Jupyter notebook service that requires no setup to use, 
while providing free access to computing resources. PLease follow these steps.
 
 1.  Upload the file UCR2802.ipynb into your colab 
 2.  Provide the Parameters in the lines 16 - 19 [HANA CLoud DB Username , Password , Qualtrics Survey ID , QUaltrics API Token] with your HANA Cloud Trial Logon details .
     And For Qualtrics tokens and IDs, please reach out to Mission Support.
 3.  Provide the HANA Cloud host URL at line 86.
 4.  Provide the Qualtrics Data center at line 165 - Please reach out to Mission Support to request the same. Ans Save the code.
 5.  Now share the anonymous survey URL with your team and complete the Survey .
 
 Once you have completed the survey, navigate back to Jupyter notebook and press CTRL+F9 which will execute all the Cells . 
 IF there are no errors, then you will see the survey data replicated in your HANA Cloud Schema in the tables 
 EMPLOYEE_COMFORT_SURVEY_QUESTIONS ,  EMPLOYEE_COMFORT_SURVEY_USERINFO. 
 
**Docker Installation &  Docker HUb Set up **
1.  Sign up for Docker HUb - https://hub.docker.com/signup 
2.  Install Docker in your Desktop by following the Guides Installation - https://www.docker.com/get-started
3.  Login to docker with the Docker ID created in Step1 [Docker Hub Setup]
4.  Test your installation by running  "docker image --help" from your Command Prompt and it should display help options.

**Deployment**
1. Clone or Download the repo to your local desktop. 
2. Remove the UCR2802.ipynb file . 
3. Adjust the main.py with parameters as mentioned in  Pre-Requisites Step 2 - 4. 
4. Adjust the deployment.yaml Line 31 with
   - image: yourdockerid/imagename
5. Execute docker build  YourDockerID/AnyImagename
6. It shuold succesfully build with dependencies mentioned in Dockerfile.
7. Execute  docker push  YourDockerID/Imagename   
 
**Kyma Deployment**

 1. Set up Kyma as mentioned in Pre-requisite in the mission.
 2. Go to Kyma Dashboard. 
 3. Click on Default Namespace
 4. Select Deploy New Workload and upload yaml downloaded from this repo.
 5. Select API Rule from  Dashboard and click Create.
 6. Provide a name , hostname and select the service "main(port:5050)" from dropdown.
 7. Set the Access Strategy as /.* and Allow.
 8. Save. And you will see the host URL on screen now .
 9. Click on the host URL and you should see the message "Survey response has been succesfully replicated into HANA Cloud"
 10. Congrats!! 
 
 
 
 
 
