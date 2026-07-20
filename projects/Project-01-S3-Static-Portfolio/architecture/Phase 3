# Phase 3 – Architecture

3.1 Solution Overview

We want to host a static portfolio website on AWS without managing any servers.

The user (website visitor) will access the website through a browser. Amazon S3 will store and serve the website files directly.

There is no EC2, no web server, and no database in this project.

3.2 High-Level Architecture

                    Internet
                         │
                         │
              User opens website URL
                         │
                         ▼
             Amazon S3 Website Endpoint
                         │
                         ▼
                Amazon S3 Bucket
                         │
      ┌──────────────────┼──────────────────┐
      │                  │                  │
      ▼                  ▼                  ▼
 index.html          styles.css         script.js
      │
      ▼
 Images, Icons, Resume, Assets

 3.3 Request Flow

Let's understand exactly what happens when someone visits your website.

Step 1

The user opens the website URL.

Example:
http://ganesh-portfolio.s3-website-ap-south-1.amazonaws.com

↓

Step 2

AWS receives the request.

↓

Step 3

Amazon S3 looks for the default document.
index.html

↓

Step 4

The browser downloads:

HTML
CSS
JavaScript
Images
↓

Step 5

The browser renders the complete website.

Request Flow Diagram
User Browser
      │
      ▼
Website URL
      │
      ▼
Amazon S3 Website Hosting
      │
      ▼
index.html
      │
      ├────────► styles.css
      │
      ├────────► script.js
      │
      ├────────► profile.jpg
      │
      └────────► resume.pdf

      3.4 AWS Components Used
Component 1 – Amazon S3 Bucket

Purpose

Stores all website files.

Example
ganesh-cloud-portfolio

Contents
index.html
styles.css
script.js
images/
resume.pdf
favicon.ico

Component 2 – Static Website Hosting

Purpose

Makes the bucket behave like a website instead of simple storage.

It provides

Default page
Error page
Website URL
Component 3 – Bucket Policy

Purpose

Allows visitors to read the website files.

Without a Bucket Policy:
Access Denied

With a Bucket Policy:
Website loads successfully

Component 4 – Browser

The browser downloads every required object from S3.

Example
index.html

↓

styles.css

↓

script.js

↓

images

3.5 Folder Structure Inside S3

Your S3 bucket will contain files similar to the structure below.

ganesh-cloud-portfolio/

│

├── index.html

├── styles.css

├── script.js

│

├── images/

│      ├── profile.jpg

│      ├── aws.png

│      └── background.jpg

│

├── resume.pdf

└── favicon.ico

3.6 Project Folder Structure (GitHub)

This matches the structure you've already created in VS Code

AWS-Cloud-Portfolio

│

├── docs/

│

├── projects/

│     └── Project-01-S3-Static-Portfolio/

│           ├── architecture/

│           ├── notes/

│           ├── screenshots/

│           ├── index.html

│           ├── styles.css

│           ├── script.js

│           └── README.md

3.7 Security Architecture (Current Project)

For learning purposes, the website files will be publicly readable.
Internet

↓

Public S3 Bucket

↓

Website Files

This is acceptable for a public portfolio website because the content is intentionally meant to be viewed by everyone.

3.8 Production Architecture (Future Enhancement)

Later in your portfolio, we'll improve the design by placing CloudFront in front of S3

                 Internet
                      │
                      ▼
              Amazon CloudFront
                      │
          HTTPS + Global Caching
                      │
                      ▼
              Private Amazon S3

Benefits:

HTTPS support
Lower latency
Global caching
Better security
Reduced S3 requests

This is how many production websites are delivered.

3.9 Architecture Decisions
| Decision               | Reason                                   |
| ---------------------- | ---------------------------------------- |
| Amazon S3              | Serverless, highly durable, low cost     |
| Static Website Hosting | No web server required                   |
| HTML/CSS/JavaScript    | Simple static website technologies       |
| Public Read Access     | Required for visitors to access the site |
| GitHub Repository      | Version control and portfolio showcase   |
| VS Code                | Development environment                  |

3.10 Limitations of This Architecture

This project does not include:

Login functionality
Backend APIs
Databases
User authentication
Server-side processing
SSL/TLS (HTTPS)
Custom domain name
CDN (CloudFront)

We'll add many of these capabilities in later projects

3.11 Real-World Business Use Cases

This architecture is suitable for:

Personal portfolios
Company landing pages
Product showcase websites
Documentation portals
Event websites
Marketing pages
Internal documentation (with restricted access)

3.12 Architecture Review
Advantages
Very low cost
Highly scalable
No servers to manage
Fast deployment
Highly durable
Easy to maintain
Integrates well with future AWS services
Disadvantages
No backend processing
Public access required for this basic setup
No HTTPS by default on the S3 website endpoint
Limited to static content


#Interview Questions
1. Why use Amazon S3 instead of EC2 for this project?

Answer: S3 is designed for static content. It removes the need to manage servers, reduces cost, and automatically scales to handle traffic.

2. What is the purpose of Static Website Hosting?

Answer: It enables an S3 bucket to serve web pages by providing a website endpoint and allowing a default document (index.html) and custom error page.

3. What happens when a user accesses the S3 website URL?

Answer: The browser sends a request to the S3 website endpoint, which returns index.html. The browser then requests additional resources like CSS, JavaScript, and images to render the page.

4. Why don't we need an EC2 instance?

Answer: All website content is static, so S3 can serve it directly without a web server.

