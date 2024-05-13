# Inception: Dockerized Multi-Service Infrastructure
![Designer1](https://github.com/mittous/inception/assets/75832537/10af9904-dbe1-470d-813d-3225d711ea52)

This project codenamed `Inception,` delves into the world of system administration using Docker. I built a multi-service infrastructure within a virtual machine (VM), leveraging Docker containers and custom-built Dockerfiles.

## Project Goals
- Gained hands-on experience with Docker for infrastructure management [[docker](https://www.docker.com/)].
- Created and managed Docker containers for specific services.
- Understood Dockerfile syntax for building custom images.
- Utilized Docker Compose for multi-container orchestration [[docker docs](https://docs.docker.com/compose/)]
- Implemented secure communication with TLS encryption.

## Technical Specifications

- Virtual Machine: Required for project execution.
- Docker Engine: Manages and runs Docker containers [[docker](https://www.docker.com/)]
- Docker Compose: Orchestrates multi-container applications [[Docker Compose](https://docs.docker.com/compose/)]
- Dockerfiles: Define instructions for building custom Docker images.

## Services

- NGINX: Web server with enforced TLSv1.2 or TLSv1.3 encryption [[nginx](https://nginx.org/en/docs/)]
- WordPress: Content Management System (CMS) with php-fpm (no pre-configured NGINX) [[wordpress](https://wordpress.org/)]
- MariaDB: Database server for WordPress [[mariadb](https://mariadb.org/)]
- WordPress Volumes: Persistent storage for database and website files.
- Custom Static Website: Showcased my skills in a language besides PHP.
- Adminer: Web administration interface for MariaDB [[adminer](https://www.adminer.org/)]
- CAdvisor: Container performance monitoring tool [[cadvisor](https://prometheus.io/docs/guides/cadvisor/)]

## The Infrastructure diagram
``` Here is an example diagram of the expected result.```
![image](https://github.com/mittous/inception/assets/75832537/9855eeb1-e155-4db0-a4dd-52fc0c04d38d)
