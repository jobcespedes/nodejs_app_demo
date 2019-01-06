# nodejs_demo_app
![HAPROXY](https://img.shields.io/badge/HAPROXY-1.7-blue.svg?colorB=FF0000)
![NODEJS](https://img.shields.io/badge/NODEJS-6-blue.svg?colorB=43853D)
![MYSQL](https://img.shields.io/badge/MYSQL5-6-blue.svg?colorB=E97B00)
[![Software License](https://img.shields.io/badge/License-APACHE-black.svg?style=flat-square&colorB=585ac2)](LICENSE)

# Diagram
![Architecture diagram](environments/test/doc/img/diagram.png)
# Overview
* Fault tolerance:
    * Roles: At least two roles in each layer: master and backup
    * Points of failure: Avoid single points of failure
* High availability:
    * Load balancing: load is balanced among resources
    * Multi zones: resources placed in different availability zones
* Scalability
    * Layers: resources are placed in three main layers: wb, lb, db

# Requeriments
1. Ansible >= 1.5
2. AWS credentials configure in Ansible Host

# Quickstart
``` bash
ansible-playbook -i environments/test/inventory/ main.yml
```

# Ansible
## Project
Simple structure:

    ├── environments/
    ├── main.yml
    └── roles/

### Environments
This folder is for working with different environments. It contains contextual data for each one.
### Roles
This folder contains ansible roles
### Playbook
```main.yml``` is the main playbook
