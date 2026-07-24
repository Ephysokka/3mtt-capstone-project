# 3mtt-capstone-project

This capstone project demonstrates the implementation of a simple DevOps CI/CD workflow using AWS, Docker, Jenkins, Node.js, and Terraform. The project began with infrastructure as code (IaC) using Terraform to provision the required AWS resources, including an Amazon EC2 instance, security groups. This approach ensured that the infrastructure was version-controlled, reproducible, and could be destroyed and recreated with a single command.

Once the EC2 instance was provisioned, a basic Node.js application was deployed and containerized using Docker to ensure consistency across development, testing, and production environments. The Dockerized application was configured to run on the EC2 instance, with port mappings and environment variables managed through Terraform outputs and user data scripts.

A Jenkins CI/CD pipeline was configured to automate the build and deployment process. Whenever code changes were pushed to the source repository, Jenkins automatically triggered the pipeline. The pipeline pulled the latest code, built a new Docker image, pushed it to a container registry, and then deployed the updated application to the EC2 instance by pulling and restarting the container.

## ARCHITECTURAL DIAGRAM

                   +------------------+
                   |   Developer      |
                   |  (GitHub Push)   |
                   +--------+---------+
                            |
                            v
                   +------------------+
                   |      GitHub      |
                   | Source Repository|
                   +--------+---------+
                            |
                            | Webhook Trigger
                            v
                   +------------------+
                   |     Jenkins      |
                   |   CI/CD Server   |
                   +--------+---------+
                            |
              +-------------+-------------+
              |                           |
              v                           v

+------------------+ +------------------+
| Build Node.js App| | Build Docker |
| & Run Tests | | Image |
+------------------+ +------------------+
|
v
+----------------------+
| Docker Container |
| Application Package |
+----------+-----------+
|
v
+----------------------+
| AWS EC2 Instance |
| Docker Installed |
+----------+-----------+
|
v
+----------------------+
| Node.js Application |
| Running in Container |
+----------------
