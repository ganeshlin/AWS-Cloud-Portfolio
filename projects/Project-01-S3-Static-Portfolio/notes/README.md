# Notes

#Phase 1 – Business Requirement
#Project Title

Hosting a Personal Portfolio Website Using Amazon S3 Static Website Hosting

Business Scenario

A software engineer wants a professional online portfolio to showcase cloud projects, technical skills, certifications, and contact information.

Instead of purchasing a traditional web hosting service, the company wants a low-cost, highly available, scalable, serverless solution using AWS.

The website should be easy to update and accessible over the internet.

Business Problem

Traditional web hosting requires:

Purchasing hosting plans
Managing web servers
Installing operating systems
Configuring web servers like Apache or Nginx
Applying security patches
Scaling servers during high traffic

These tasks increase operational cost and administrative effort.

Proposed AWS Solution

Use Amazon S3 Static Website Hosting to host a static website.

The solution should:

Store website files in an S3 bucket.
Make the website publicly accessible (for this project).
Automatically scale to support any number of visitors.
Require no server management.
Minimize operational cost.
Functional Requirements

The solution must:

Display a personal portfolio homepage.
Include an About Me section.
Display AWS projects.
Display technical skills.
Include certifications.
Provide contact information.
Use HTML, CSS, and JavaScript.
Be accessible through an S3 Website Endpoint.
Non-Functional Requirements

The solution should be:

Highly available
Highly durable
Low latency
Low cost
Scalable
Easy to maintain
Secure (following AWS best practices)
Easy to update with new projects

AWS Services Required
| AWS Service | Purpose                                     |
| ----------- | ------------------------------------------- |
| Amazon S3   | Store and host static website files         |
| IAM         | Manage secure access to AWS resources       |
| AWS Console | Configure the S3 bucket and website hosting |

#Phase 2 – Theory
2.1 What is Amazon S3?

Amazon Simple Storage Service (Amazon S3) is a fully managed object storage service provided by AWS that stores and retrieves any amount of data from anywhere over the internet.

It is designed to provide:

High durability
High availability
Scalability
Security
Low cost

Unlike a traditional hard drive or file system, S3 stores objects, not files in folders.

Real-World Analogy

Imagine a large warehouse.

The warehouse = Amazon S3
Different storage rooms = Buckets
Boxes inside the rooms = Objects
Labels on each box = Object Key (File Name)

You can store millions or even billions of objects in the warehouse.

Key Features of Amazon S3
Unlimited storage capacity
99.999999999% (11 nines) durability
Automatic scaling
Serverless (no servers to manage)
Highly available
Secure using IAM and bucket policies
Versioning support
Encryption support
Lifecycle management
Event notifications

2.2 What is Object Storage?

S3 uses Object Storage, which differs from file storage and block storage.
| Storage Type   | Used By                           | Example    |
| -------------- | --------------------------------- | ---------- |
| Block Storage  | EC2                               | Amazon EBS |
| File Storage   | Shared folders                    | Amazon EFS |
| Object Storage | Images, videos, backups, websites | Amazon S3  |

What is an Object?

An object consists of:

Data (actual file)
Metadata (information about the file)
Unique identifier (Key)
Example :
Object
│
├── Resume.pdf
├── Metadata
│     ├── Size
│     ├── Date
│     ├── Content Type
│     └── Owner
└── Object Key

2.3 What is a Bucket?

A Bucket is a container that stores objects.

Think of it as the top-level storage container.

Example:
Bucket
│
├── index.html
├── styles.css
├── script.js
├── profile.jpg
└── resume.pdf

Bucket Naming Rules

Bucket names:

Must be globally unique.
Use lowercase letters only.
Can include numbers.
Can include hyphens (-).
Cannot contain spaces or uppercase letters.
Cannot exceed 63 characters.

Good Examples : 
ganesh-cloud-portfolio
ganesh-aws-portfolio-2026
my-static-website

Bad Examples : 
GaneshPortfolio
My Website
Portfolio#

2.4 Objects in S3

Everything stored in S3 is an object.

For this project, your objects will include:
index.html
styles.css
script.js
profile.jpg
resume.pdf

Each object has:

Key (file name)
Size
Metadata
Storage class
Permissions

2.5 Regions

An S3 bucket is created in a specific AWS Region.

Examples:

Asia Pacific (Mumbai) – ap-south-1
US East (N. Virginia) – us-east-1
Europe (London) – eu-west-2

For this project, choose the region closest to you (e.g., Mumbai) to reduce latency.

.6 Static Website Hosting

Normally, websites run on web servers such as Apache or Nginx.

For a static website, no server-side processing is needed. The browser simply downloads and displays files like:

HTML
CSS
JavaScript
Images

Amazon S3 can serve these files directly, eliminating the need for a web server.

Static Website Flow:
User Browser
      │
      ▼
Internet
      │
      ▼
Amazon S3 Bucket
      │
      ▼
index.html
styles.css
script.js
images
Note: No EC2 instance is required.

2.7 Static Website vs Dynamic Website
| Static Website     | Dynamic Website                         |
| ------------------ | --------------------------------------- |
| Fixed content      | Content changes based on user or data   |
| HTML, CSS, JS      | PHP, Java, Python, Node.js, etc.        |
| No database        | Usually requires a database             |
| Fast               | More processing required                |
| Lower cost         | Higher cost                             |
| Easy to host on S3 | Requires servers or serverless backends |

2.8 Website Endpoint vs REST API Endpoint

Amazon S3 provides two main ways to access objects.

Website Endpoint

Used for hosting websites.

Example:
http://my-portfolio.s3-website-ap-south-1.amazonaws.com

Supports:

Default document (index.html)
Custom error page (error.html)
REST API Endpoint

Used by applications and APIs.

Example: https://my-portfolio.s3.ap-south-1.amazonaws.com/index.html
Does not provide website hosting features like automatic loading of index.html.

2.9 Public Access Block

By default, AWS blocks public access to S3 buckets to help protect data.

For this project, you'll temporarily allow public read access so the website can be viewed by anyone.

Important: Only the minimum required permissions will be granted.

In production, a more secure architecture is:
Internet
     │
     ▼
CloudFront
     │
     ▼
Private S3 Bucket

2.10 IAM (Identity and Access Management)

IAM controls who can do what in AWS.

For example:

Administrator → Full access
Developer → Upload website files
Viewer → Read-only access

In this project, you'll use your AWS account to create and manage the S3 bucket.

2.11 Why Companies Use S3 for Static Websites

Many organizations use S3 because it offers:

Very low cost
Automatic scaling
High durability
High availability
No server maintenance
Easy integration with CloudFront, Route 53, and CI/CD pipelines

Typical use cases include:

Personal portfolios
Company landing pages
Documentation sites
Product brochures
Internal knowledge bases

2.12 AWS Well-Architected Considerations

Even for a simple static website, it's good practice to think about the AWS Well-Architected Framework:

Operational Excellence: Version your code and document deployments.
Security: Grant only the permissions required and avoid exposing sensitive files.
Reliability: Store content in S3, which is highly durable and available.
Performance Efficiency: Use the closest AWS Region and later add CloudFront for caching.
Cost Optimization: Use S3 Free Tier where possible and avoid unnecessary services.
Sustainability: Serverless hosting uses resources efficiently because there are no idle servers.

Interview Questions
What is Amazon S3?
A fully managed object storage service used to store and retrieve data at any scale.
What is a bucket?
A logical container used to store objects in Amazon S3.
What is an object in S3?
A file along with its metadata and a unique key.
Can S3 host dynamic websites?
No. S3 directly hosts static content (HTML, CSS, JavaScript, images). Dynamic applications require additional services such as EC2, Elastic Beanstalk, ECS, EKS, or AWS Lambda/API Gateway.
Why is S3 considered highly durable?
AWS is designed to provide 99.999999999% (11 nines) durability by storing data redundantly across multiple devices within an AWS Region.
Why is public access blocked by default?
To reduce the risk of unintentionally exposing data to the internet.

For Phase 3 read Architecture Readme.md # Phase 3 – Architecture

