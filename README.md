# NanoDegree-Capstone

## Steps in Completing Your Project
Before you start coding for the Android app, we strongly recommend you take a quick look at this rubric, against which the Mentor will review your submission. Your submission must satisfy all rubric criteria to pass the project; otherwise, the Mentor may ask you to re-submit.

The rubric has several criteria in the following categories:

Set Up Pipeline
Build Docker Container
Deployment
You must pay attention to the detail mentioned in the specification against each criterion. A good practice would be to review the rubric after each major development step and finally at the end of the development.

## Step 1: Propose and Scope the Project
Plan what your pipeline will look like.
Decide which options you will include in your Continuous Integration phase. Use either Circle CI or Jenkins.
Pick a deployment type - either rolling deployment or blue/green deployment.
For the Docker application you can either use an application which you come up with, or use an open-source application pulled from the Internet, or if you have no idea, you can use an Nginx “Hello World, my name is (student name)” application.  

## Step 2: Use Jenkins or Circle CI, and implement blue/green or rolling deployment.
If you're using Jenkins, create your Jenkins master box and install the plugins you will need.
If you're using Circle CI, set up your circle CI account and connect your git repository.
Set up your environment to which you will deploy code.  

## Step 3: Pick AWS Kubernetes as a Service, or build your own Kubernetes cluster.
Use Ansible or CloudFormation to build your “infrastructure”; i.e., the Kubernetes Cluster.
It should create the EC2 instances (if you are building your own), set the correct networking settings, and deploy software to these instances.
As a final step, the Kubernetes cluster will need to be initialized. The Kubernetes cluster initialization can either be done by hand, or with Ansible/Cloudformation at the student’s discretion.  

## Step 4: Build your pipeline
Construct your pipeline in your GitHub repository.
Set up all the steps that your pipeline will include.
Configure a deployment pipeline.
Include your Dockerfile/source code in the Git repository.
Include with your Linting step both a failed Linting screenshot and a successful Linting screenshot to show the Linter working properly.  

## Step 5: Test your pipeline
Perform builds on your pipeline.

Verify that your pipeline works as you designed it. Take a **screenshot of the Circle CI** or Jenkins pipeline **showing the deployment**, and all stages passed successfully.

Take a **screenshot of your AWS EC2 page** showing the newly created (for blue/green) or modified (for rolling) instances running as the EKS cluster nodes. Make sure you name your instances differently between blue and green deployments.

Take a **screenshot of the kubectl command output** showing that the deployment is successful, pods are running, and the service can be accessed via an external IP or port forwarding.

Take a **screenshot showing that you can access the application** after deployment.


