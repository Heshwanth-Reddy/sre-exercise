## Overview
This exercise demonstrates the use of CI/CD tooling.

As the task is open-ended, it leaves you with quite a few decisions to make.

The end result and the way to get there can be very simple or it can be very complex, depending on how you approach it.

Please note, the choice of application/service is not as important as the choice of tooling and automation itself.

Enjoy!

## Goal
Design and implement a CI/CD pipeline that builds, tests and deploys either a single-page web application or REST API.

## Criteria
* Pipeline should be described in a file (e.g. `.gitlab-ci.yml` in GitLab)
* Any required infrastructure should be defined as code using either Terraform or CloudFormation
* Provide web application/API endpoint URL
* Provide source code of the solution so we can easily reproduce it in our environment

## Optional
* Provide documentation and diagram for the proposed solution
* Write a simple app/service of your own

## Technologies
* Use free version of CI/CD tools (e.g. GitLab, CircleCI, Travis CI etc.)
* Use any open source application/service written in any language
* Use AWS Free Tier if cloud resources are required

## Implemenation
The pipeline is implemented using CircleCI and Terraform. It is designed to automate the build, test, and deployment process for a single-page web application to AWS.
### Components
* CircleCI: A continuous integration and continuous deployment platform used to automate the software delivery process.
* Terraform: An infrastructure as code tool used to provision and manage AWS resources.
* AWS S3: A cloud storage service used to host the web application.
### Pipeline Workflow
* Build Stage: Dependencies are installed and the web application is built using Node.js.
The built files are persisted to the workspace for later use.
* Test Stage: Tests for the web application are executed to ensure its functionality and quality.
* Deploy Stage: Terraform is used to provision the necessary infrastructure on AWS.
* The web application files are deployed to an AWS S3 bucket.
### Source Code
The source code for the web application, Terraform configuration files, and CircleCI configuration file are stored in the repository.
