# 🚀 The Cloud Resume Challenge (AWS Edition)

"Building a resume in Word is 1998. Deploying it as a live, auto-scaling, secure web application in the cloud? That’s 2026." 🦾⚡

This repository contains the code and infrastructure for my Cloud Resume Challenge. It’s not just a website; it’s a full-stack DevOps project that proves I can build the "engine and the tracks" for a modern cloud application.

## 🌐 Live Project
**[View my live resume here!](https://ronakgupta.in/)**

---

## 🗺️ The Architecture (The "Map")
Before clicking buttons, I mapped out the field. Here’s how the "engine" looks under the hood:

* **Frontend:** HTML/CSS hosted on **Amazon S3** 📦
* **CDN & Security:** **AWS CloudFront** for HTTPS and lightning-fast delivery 🛡️
* **The Bridge:** **JavaScript** talking to **AWS API Gateway** 🌉
* **The Brain:** **AWS Lambda** (Python/Node) to handle logic 🧠
* **The Memory:** **DynamoDB** to store and update the visitor count 💾📊
* **IaC:** Infrastructure managed via **Terraform** 🏗️
* **CI/CD:** Automated deployments using **GitHub Actions** 🚢💨

---

## 🛠️ The Game Plan
I tackled this project in stages, treating it like a mission to beat the "Final Boss":

1.  **Static Site:** Uploaded the initial HTML to S3.
2.  **HTTPS & DNS:** Pointed my custom domain to CloudFront.
3.  **The Database:** Set up DynamoDB to track my visitor count.
4.  **The API:** Built the Lambda function and API Gateway to link the frontend to the data.
5.  **The "GTA Mission" (CORS):** Fought the nightmare of CORS and IAM permissions until everything talked to each other! 🏎️💥
6.  **Automation:** Moved all manual work into Terraform and set up CI/CD pipelines.

---

## ⚠️ Common Pitfalls Encountered
* **CORS:** The ultimate boss. It took some serious debugging to get the frontend to talk to the API.
* **S3 Permissions:** Learning to block public access while allowing CloudFront to serve content.
* **Terraform Import:** Matching existing manual resources with IaC.

---

## 📂 Repository Structure
* `/frontend`: HTML, CSS, and JS code.
* `/backend`: Lambda function code.
* `/terraform`: Infrastructure as Code files.
* `/.github/workflows`: CI/CD pipeline definitions.

---

## 🤝 Let's Connect!
I’m documenting my journey to help fellow junior developers escape "Tutorial Hell." If you’re working on your own challenge and getting "Access Denied" errors, let's connect!

* **GitHub:** [Ronak083](https://github.com/Ronak083)
* **Blog:** [HashNode](https://ronak083.hashnode.dev/cloud-resume-challenge-project-documentation)

**"Learn by sharing, grow by helping."** 🤝🚀
