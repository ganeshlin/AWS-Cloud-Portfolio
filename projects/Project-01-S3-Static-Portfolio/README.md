# Project 01 - S3 Static Portfolio

## Objective
Host a static website using Amazon S3 and enable public access through a custom domain or S3 website endpoint.

## Business Requirement

The objective of this project is to host a personal portfolio website using Amazon S3 Static Website Hosting.

The website should:

- Be publicly accessible
- Be highly available
- Use secure IAM administration
- Follow AWS security best practices
- Minimize cost

## AWS Services Used

- Amazon S3
- IAM
- AWS Budgets

#Architecture
                Browser
                   │
                   ▼
        S3 Website Endpoint
                   │
                   ▼
          Amazon S3 Bucket
      ├── index.html
      ├── styles.css
      └── script.js

## Projective Objectives

- Learn Amazon S3
- Learn Static Website Hosting
- Understand Bucket Policies
- Understand Public Access
- Learn IAM Best Practices
- Learn Browser Testing

## Sample Files
- [source-code/index.html](source-code/index.html) for the landing page
- [source-code/styles.css](source-code/styles.css) for styling
- [source-code/script.js](source-code/script.js) for simple interactivity


## Build Steps

1. Created an S3 bucket.
2. Enabled Static Website Hosting.
3. Uploaded website files.
4. Disabled Block Public Access.
5. Applied Bucket Policy.
6. Verified website endpoint.
7. Tested using browser.
8. Verified HTTP status codes.

## Security

- Root account not used.
- IAM Administrator user created.
- MFA recommended.
- Bucket policy grants read-only public access.
- Website files are read-only to anonymous users.
- Bucket administration remains restricted.

## Testing

Verified:

- Website loads successfully.
- CSS loads correctly.
- JavaScript executes successfully.
- HTTP 200 OK
- HTTP 304 Not Modified
- HTTP 404 Not Found

## Troubleshooting

Problem:
403 Forbidden

Resolution:
Disabled Block Public Access and added Bucket Policy.

---

Problem:
Website not loading

Resolution:
Enabled Static Website Hosting and configured index.html.

---

Problem:
JavaScript not loading

Resolution:
Verified upload and browser cache.

## Cost Analysis

Amazon S3 Free Tier covers this project.

Estimated Monthly Cost

- Storage: Nearly $0
- Requests: Free Tier
- Data Transfer: Minimal

Total Estimated Cost:
Less than $1/month

## What I Learned

- Amazon S3
- Static Website Hosting
- Bucket Policies
- Public Access
- IAM
- Browser Developer Tools
- HTTP Status Codes
- Website Deployment

#resume build
• Designed and deployed a static portfolio website using Amazon S3 Static Website Hosting, configured bucket policies and public access, implemented IAM security best practices, and validated deployment using browser developer tools and HTTP response codes.

## Interview Questions

Q1. Why use Amazon S3 for static websites?

Q2. What is Static Website Hosting?

Q3. Difference between S3 Endpoint and Object URL?

Q4. Why Bucket Policy?

Q5. Why Block Public Access?

Q6. Why IAM instead of Root?

Q7. Difference between 200 and 304?

Q8. What causes 404?

Q9. What is an ETag?

Q10. Why use AWS Budgets?

