# AWS Cloud Resume Challenge

## Overview
The AWS Cloud Resume Challenge is a popular project designed to showcase your skills in AWS services, serverless computing, infrastructure as code (IaC), and more. The challenge involves creating a resume website and deploying it using AWS services. This README provides a detailed guide on how to complete the AWS Cloud Resume Challenge, including the architecture diagram, tech stacks used, and instructions to reproduce.

## Architecture Diagram
![Architecture Diagram]()

## Tech Stacks Used
- **Frontend**:
  - HTML, CSS, JavaScript
  - Bootstrap (optional for styling)
- **Backend**:
  - AWS Lambda
  - Amazon API Gateway
- **Database**:
  - Amazon DynamoDB
- **Infrastructure as Code (IaC)**:
  - AWS CloudFormation
- **Version Control**:
  - Git, GitHub (optional)

## Instructions to Reproduce
Follow these steps to reproduce the AWS Cloud Resume Challenge:

### Step 1: Set Up AWS Account
If you don't have an AWS account, sign up for one [here](https://aws.amazon.com/) and create IAM user credentials with administrator access.

### Step 2: Clone Repository
Clone the GitHub repository containing the resume website template and CloudFormation templates:

git clone https://github.com/codedbychino/aws-cloud-resume-challenge.git
cd aws-cloud-resume-challenge

### Step 3: Customize Resume Website
Edit the HTML, CSS, and JavaScript files in the `frontend` directory to customize your resume website according to your preferences.

### Step 4: Deploy Infrastructure
Deploy the AWS CloudFormation stack to provision the necessary AWS resources:

aws cloudformation create-stack --stack-name resume-stack --template-body file://cloudformation.yaml --capabilities CAPABILITY_IAM

### Step 5: Populate DynamoDB Table
Populate the DynamoDB table with your resume data. You can use the AWS Management Console or the AWS CLI to insert items into the table.

### Step 6: Deploy Lambda Functions
Deploy the Lambda functions using the AWS Management Console or AWS CLI. Ensure the functions are integrated with API Gateway for HTTP access.

### Step 7: Test Website
Access your resume website using the API Gateway URL generated during deployment. Ensure all functionality, such as fetching resume data from DynamoDB, works as expected.

### Step 8: Optional - Continuous Integration/Continuous Deployment (CI/CD)
Set up CI/CD pipelines using AWS CodePipeline and AWS CodeBuild to automate the deployment process whenever changes are pushed to the GitHub repository.

## Conclusion
Congratulations! You have successfully completed the AWS Cloud Resume Challenge. Your resume website is now deployed and accessible using AWS services. Keep updating your resume and enhancing your AWS skills to further improve your cloud expertise.

## Feedback and Contributions
Your feedback and contributions to this project are highly appreciated. If you encounter any issues, have suggestions for improvement, or want to contribute enhancements, please feel free to submit a pull request or open an issue on GitHub.

## Resources
- [AWS Documentation](https://docs.aws.amazon.com/)
- [AWS CloudFormation User Guide](https://docs.aws.amazon.com/cloudformation/)
- [AWS Lambda Developer Guide](https://docs.aws.amazon.com/lambda/)
- [Amazon DynamoDB Developer Guide](https://docs.aws.amazon.com/amazondynamodb/)
- [AWS API Gateway Developer Guide](https://docs.aws.amazon.com/apigateway/)
- [Bootstrap Documentation](https://getbootstrap.com/docs/5.0/getting-started/introduction/)
