# AWS Cloud Migration Challenge — Liel Kablan

A complete cloud migration project on Amazon Web Services (AWS): transitioning from managing a traditional virtual server (EC2) to a modern, cost-effective Serverless architecture utilizing Amazon S3, AWS Lambda, and Amazon DynamoDB.

---

## 🔗 Live Demo
[Liel Kablan's Cloud Architecture Page](http://liel-kablan-site-2026.s3-website.eu-north-1.amazonaws.com)

---

## Architecture Overview
1. **Frontend (Static Hosting):** HTML page hosted publicly on **Amazon S3**.
2. **Backend (Serverless Logic):** Python **AWS Lambda** function triggered via **Function URL**.
3. **Database (NoSQL):** **Amazon DynamoDB** table (`visitor-counter`) maintaining an atomic live visitor count.
4. **Security & IAM:** **Least Privilege Access** policy granting Lambda update permissions exclusively to the DynamoDB table.

---

## Screenshots & Evidence

### Phase 1: Secured Account (MFA & IAM)
![01-iam-mfa](screenshots/01-iam-mfa.png)

### Phase 2: Nginx Web Server on EC2
![02-ec2-page](screenshots/02-ec2-page.png)

### Phase 3: SSH Diagnostic & Nginx Status
![03-ec2-terminal](screenshots/03-ec2-terminal.png)

### Phase 4: Serverless Live Visitor Counter on S3
![04-site-counter](screenshots/04-site-counter.png)

### Phase 5: Decommissioned Legacy Server (EC2 Terminated)
![05-ec2-terminated](screenshots/05-ec2-terminated.png)

---

## Key Takeaways & Reflection

1. **What Surprised Me Most:** What surprised me most was learning how websites actually work behind the scenes in the cloud, and how easy it was to host the site on S3.
2. **EC2 vs. Lambda in My Own Words:** In my own words, EC2 is like a whole computer running 24/7 that I have to manage, while Lambda is just code that wakes up for a second only when someone visits the site.
3. **Question for the Session:** What happens to the performance and costs if a million people visit the site all at once?
