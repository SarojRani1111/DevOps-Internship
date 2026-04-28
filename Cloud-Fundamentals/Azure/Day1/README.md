#  Azure Day 1 — Cloud Computing & Azure Fundamentals  

>  Part of my Cloud Fundamentals Journey — building real-world cloud expertise step by step

---

##  Project Overview  

This project demonstrates a strong foundational understanding of Cloud Computing and Microsoft Azure, covering:

- Core cloud concepts  
- Real-world infrastructure challenges  
- Azure architecture & hierarchy  
- Networking fundamentals (VNet, Subnets)  
- Hands-on resource creation  

---

##  What You’ll Learn  

- How cloud computing replaces traditional data centers  
- Why companies are adopting Azure  
- Azure resource hierarchy  
- Networking basics  
- Hands-on Azure setup  

---

##  What is Cloud Computing?  

Cloud computing is the delivery of computing resources over the internet with on-demand access and pay-as-you-go pricing.

---

##  Problems Cloud Solves  

- High infrastructure cost  
- Slow hardware provisioning  
- Maintenance overhead  
- Scaling challenges  

 Cloud removes these by providing instant, scalable resources.

---

##  Types of Cloud  

### Public Cloud
- Shared infrastructure  
- Scalable  
- Pay-as-you-go  

### Private Cloud
- Dedicated infrastructure  
- High security  

### Hybrid Cloud
- Combination of both  

---

##  Core Cloud Principles  

- On-demand self-service  
- Elasticity  
- Pay-as-you-go  
- High availability  

---

##  Cloud Service Models  

### IaaS  
- You manage OS and apps  

### PaaS  
- You manage code only  

### SaaS  
- You just use the software  

---

##  Microsoft Azure  

- 200+ services  
- 60+ regions  
- Enterprise-ready cloud platform  

---

##  Azure Infrastructure  

- Regions → geographic locations  
- Region pairs → disaster recovery  
- Availability zones → high availability  

---

##  Azure Resource Hierarchy  

```
Tenant → Subscription → Resource Group → Resource
```

---

##  Azure Networking  

- VNet → private network  
- Subnet → segmentation  
- Private subnet → secure resources  

---

##  Hands-On  

### Create Resource Group

```bash
az group create --name rg-day1-learning --location eastus
```

---

---

##  AWS vs Azure Service Comparison

| AWS Service        | Azure Equivalent          |
|-------------------|--------------------------|
| EC2               | Virtual Machines         |
| S3                | Blob Storage             |
| VPC               | Virtual Network (VNet)   |
| IAM               | Azure Active Directory   |
| RDS               | Azure SQL Database       |
| CloudFront        | Azure CDN                |
| Lambda            | Azure Functions          |

 This comparison helps in understanding multi-cloud concepts and mapping services across platforms.

---

##  Azure Regions & Data Centers

Azure infrastructure is globally distributed across multiple regions.

###  Key Points:
- Regions are geographic locations containing data centers  
- Each region has multiple data centers  
- Regions are connected via high-speed private networks  

###  Region Pairs:
- Each region is paired with another region  
- Used for disaster recovery and high availability  

###  Availability Zones:
- Physically separate data centers within a region  
- Independent power, cooling, and networking  

 Choosing the right region impacts:
- Latency  
- Cost  
- Compliance  
- Availability  

##  Key Takeaways  

- Cloud is scalable and cost-efficient  
- Azure is enterprise-focused  
- Resource Groups are foundational  
- Networking is core to cloud  

---

##  Next Steps  

- Create Virtual Machine  
- Configure networking  
- Monitor usage  

---

##  Final Note  

Cloud is a mindset shift from managing infrastructure to building scalable systems.