# Multi-Tier Web Application on AWS using Terraform
![Terraform](https://img.shields.io/badge/IaC-Terraform-623CE4?logo=terraform)
![AWS](https://img.shields.io/badge/Cloud-AWS-FF9900?logo=amazon-aws)
![Flask](https://img.shields.io/badge/Backend-Flask-000000?logo=flask)
![RDS](https://img.shields.io/badge/Database-AWS_RDS-527FFF?logo=amazonrds)
![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)
![Status](https://img.shields.io/badge/Status-Completed-brightgreen)

This project demonstrates deploying a multi-tier Flask web application on AWS using Terraform, including an Application Load Balancer (ALB), EC2 instance, private RDS MySQL database, and subnets across two Availability Zones.

---

## Architecture Diagram

![Architecture](architecture)

---

## Features

* Flask web app deployed on EC2
* MySQL RDS backend in private subnets
* Application Load Balancer (ALB) in front of EC2 instance
* Public/private subnets across 2 AZs
* Bastion host optional for RDS access (not included in final build)
* Terraform-managed infrastructure

---

## Technologies Used

* AWS EC2, RDS, ALB, VPC, Subnets, Security Groups
* Python Flask
* Terraform

---

## File Structure

```bash
multi-tier-webapp/
├── terraform/
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│   ├── provider.tf
│   └── user-data/
│       └── flask.sh
├── .gitignore
├── LICENSE
├── README.md
└── architecture.png
```

---

## Setup Instructions

### Prerequisites

* AWS CLI authenticated
* Terraform installed
* SSH key pair created in AWS

### Steps

1. **Update variables** in `terraform/variables.tf`:

   * `key_name` = your EC2 key pair name
   * `db_password` = a secure password

2. **Run Terraform**

```bash
cd terraform
terraform init
terraform plan
terraform apply
```

3. **Access the application**

   * Visit the ALB DNS (found in output `alb_dns_name`)
   * `/` route returns confirmation message
   * `/visitors` displays visitor tracking table

---

## Outputs

* `alb_dns_name`: Public ALB address
* `rds_endpoint`: RDS host
* `rds_db_name`: MySQL database name
* `rds_port`: 3306
* `vpc_id`, subnet IDs: Networking components

---

## Troubleshooting & Lessons Learned

### Common Errors We Encountered

| Issue                                 | Resolution                                                                              |
| ------------------------------------- | --------------------------------------------------------------------------------------- |
| `InvalidKeyPair.NotFound`             | Make sure your EC2 key pair exists in AWS and is correctly referenced in `key_name`.    |
| `DependencyViolation` when destroying | Ensure no resources (e.g. ENIs or SGs) are still attached. Clean up manually if needed. |
| Flask app not persisting              | Verified app is launched with `nohup` and logs written to `app.log`.                    |
| RDS `/visitors` route returns 500     | Caused by closing an undeclared `cursor`. Fixed by rewriting exception logic properly.  |

### Tips

* Avoid duplicate resource blocks or variable names
* Wait for EC2 and RDS to fully provision before testing
* Confirm security groups allow traffic on port 5000 (EC2) and port 3306 (RDS)

---

## 📸 Live Demo Screenshots

### ✅ Flask App Homepage

![Flask App Homepage](assets/flask-app-home)

### 👥 Visitor Tracking

![Visitor Tracking](assets/flask-app-visitors)

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

## Author

Alejandro Paguaga
