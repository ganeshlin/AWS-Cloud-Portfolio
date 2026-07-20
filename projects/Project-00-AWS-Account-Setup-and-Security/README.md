# Project 00 - AWS Account Setup & Security

Project 00 – AWS Account Setup & Security
Project Overview
Before deploying any AWS resources, a secure AWS account must be configured. This project establishes the security and cost management foundation that will be used throughout the AWS Cloud Portfolio.
Instead of performing daily administrative tasks using the AWS Root User, an IAM Administrator account was created following AWS security best practices. Multi-Factor Authentication (MFA) was enabled to protect privileged access, and AWS Budgets were configured to prevent unexpected charges.
This project serves as the foundation for every subsequent project in this portfolio.
________________________________________
Business Requirement
A company has created a new AWS account for its Cloud Operations team.
The objectives are to:
•	Secure the AWS account 
•	Protect privileged access 
•	Avoid using the Root User for daily operations 
•	Implement cost monitoring 
•	Prepare the environment for future cloud deployments 
________________________________________
Why This Project Comes First
Cloud engineers never start by launching EC2 instances or creating S3 buckets.
The first responsibility is securing the AWS account.
This project establishes:
•	Identity Management 
•	Access Control 
•	Security 
•	Cost Management 
•	Operational Best Practices 
Every remaining project in this portfolio will use the IAM Administrator account created here.
________________________________________
Architecture
                    AWS Account
                         │
                  Root User (Owner)
                         │
          Used only for account-level tasks
                         │
              Multi-Factor Authentication
                         │
                         ▼
              IAM Administrator User
                         │
       Daily AWS Management Activities
                         │
     S3 • EC2 • IAM • CloudWatch • Lambda
                         │
                 AWS Budget Monitoring
________________________________________
Implementation Steps
Step 1 – Secure the Root User
Completed:
•	Created AWS account 
•	Enabled Multi-Factor Authentication (MFA) 
Purpose:
The Root User has unrestricted access to every AWS service and billing function. AWS recommends using it only for account-level administrative tasks.
________________________________________
Step 2 – Create an IAM Administrator User

Created:
User Name : ganesh-admin

Permissions:
AdministratorAccess
IAMUserChangePassword

Purpose:
The IAM Administrator user is used for daily AWS activities instead of the Root User.
________________________________________
Why Not Use the Root User?
The Root User has unlimited permissions.
If its credentials are compromised:
•	Every AWS resource can be deleted 
•	Billing information can be modified 
•	IAM users can be removed 
•	Security settings can be changed 
•	The entire AWS account can be compromised 
For this reason, AWS recommends:
•	Enable MFA on the Root User 
•	Never create resources using the Root User 
•	Perform daily work using IAM users or IAM roles 
This portfolio follows those recommendations.
________________________________________
Step 3 – Enable Budget Monitoring

Budget Type:
Monthly Cost Budget

Budget Amount:
$5

Alerts:
50% Actual Cost
80% Actual Cost
100% Actual Cost

Purpose:
Budgets help monitor cloud spending and notify users before costs exceed the defined threshold.
________________________________________
Step 4 – Log In as IAM Administrator

From this point onward:
•	S3 
•	EC2 
•	IAM 
•	CloudWatch 
•	Lambda 
•	RDS 

will all be created using the IAM Administrator account.
The Root User will no longer be used during this portfolio unless a Root-only task is required.
________________________________________

AWS Best Practices Applied
•	Root User protected with MFA 
•	Daily work performed using IAM 
•	Least privilege principle introduced 
•	Budget monitoring configured 
•	Administrator account separated from Root account 
•	Cost protection enabled 
________________________________________

Skills Demonstrated
•	AWS IAM 
•	Identity Management 
•	MFA Configuration 
•	Administrator Access 
•	AWS Budgets 
•	Cost Management 
•	AWS Security Best Practices 
•	Cloud Governance 
________________________________________

Screenshots
Include:
•	AWS Root MFA enabled 
•	IAM Administrator user created 
•	AdministratorAccess policy attached 
•	AWS Budget created successfully 
________________________________________
Interview Questions
Why should you avoid using the AWS Root User?
Because the Root User has unrestricted access to every AWS resource and account setting. AWS recommends using it only for account-level tasks and performing daily operations with IAM users or IAM roles.

Why did you create an IAM Administrator account?
To follow AWS security best practices by separating privileged daily administration from the Root account, reducing the impact of credential compromise.

Why enable MFA?
To add a second authentication factor, making unauthorized access significantly more difficult even if a password is exposed.

Why create AWS Budgets?
To monitor spending proactively and receive alerts before costs exceed defined thresholds.

