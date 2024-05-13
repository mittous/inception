# Project Name: Inception

## Introduction:
Inception is a system administration project aimed at expanding knowledge of Docker virtualization. The project entails setting up a small infrastructure comprising various services within a virtual machine using Docker and Docker Compose. Each service is encapsulated within its own Docker container, with Dockerfiles and a Makefile facilitating image creation. Notably, pre-built Docker images are prohibited, necessitating self-built images.

## Project Description:
The project involves setting up the following components:
- NGINX container with TLSv1.2 or TLSv1.3 only
- WordPress + php-fpm container (excluding nginx)
- MariaDB container (excluding nginx)
- Volumes for WordPress database and website files
- Docker network for inter-container communication
- Two users in the WordPress database, with one designated as the administrator (with specific username constraints)
- Creation of a simple static website (excluding PHP) for various purposes
- Deployment of Adminer and CAdvisor for database management and container monitoring, respectively.

## Project Implementation:
To implement Inception, I follow these steps:
1. Set up Docker and Docker Compose in your virtual machine.
2. Create Dockerfiles for each service and define them in the docker-compose.yml file.
3. Build Docker images using the Makefile.
4. Configure NGINX, WordPress, and MariaDB containers as per project requirements.
5. Create volumes for storing WordPress database and website files.
6. Establish a Docker network to enable communication between containers.
7. Populate the WordPress database with two users, adhering to username constraints.
8. Develop a simple static website using a non-PHP language.
9. Deploy Adminer and CAdvisor for additional functionalities.
![image](https://github.com/mittous/inception/assets/75832537/9855eeb1-e155-4db0-a4dd-52fc0c04d38d)
![Designer1](https://github.com/mittous/inception/assets/75832537/10af9904-dbe1-470d-813d-3225d711ea52)
