#    3mtt-capstone-project

This capstone project demonstrates the implementation of a simple DevOps CI/CD workflow using AWS, Docker, Jenkins, and Node.js. The project involved provisioning an Amazon EC2 instance to host a basic Node.js application. The application was containerized using Docker to ensure consistency across deployment environments.

A Jenkins CI/CD pipeline was configured to automate the build and deployment process. Whenever code changes were pushed to the source repository, Jenkins automatically triggered the pipeline, built a new Docker image, and deployed the updated application to the EC2 instance. This setup showcases key DevOps practices, including infrastructure provisioning, containerization, continuous integration, and continuous deployment, resulting in a streamlined and automated application delivery process.

##  ARCHITECTURAL DIAGRAM


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
   +------------------+        +------------------+
   | Build Node.js App|        | Build Docker     |
   | & Run Tests      |        | Image            |
   +------------------+        +------------------+
                                           |
                                           v
                              +----------------------+
                              | Docker Container     |
                              | Application Package  |
                              +----------+-----------+
                                         |
                                         v
                              +----------------------+
                              | AWS EC2 Instance     |
                              | Docker Installed     |
                              +----------+-----------+
                                         |
                                         v
                              +----------------------+
                              | Node.js Application  |
                              | Running in Container |
                              +----------------
