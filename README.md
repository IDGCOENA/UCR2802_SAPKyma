Pre-Requisites:
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
 4.  Provide the Qualtrics Data center at line 165 - Please reach out to Mission Support to request the same.
 
 Once you have updated the details, press CTRL+F9 which will execute all the Cells .
 IF there are no errors, then you will see the survey data replicated in your HANA Cloud Schema in the tables 
 EMPLOYEE_COMFORT_SURVEY_QUESTIONS ,  EMPLOYEE_COMFORT_SURVEY_USERINFO. 
 
Docker Installation &  Docker HUb Set up 
1.  Sign up for Docker HUb - https://hub.docker.com/signup 
2.  Install Docker in your Desktop by following the Guides Installation - https://www.docker.com/get-started
3.  Login to docker with the Docker ID created in Step1 [Docker Hub Setup]
4. 
 
 
 
 
 
