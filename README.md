# nodejs_demo_app
![HAPROXY](https://img.shields.io/badge/HAPROXY-1.7-blue.svg?colorB=FF0000)
![NODEJS](https://img.shields.io/badge/NODEJS-6-blue.svg?colorB=43853D)
![MYSQL](https://img.shields.io/badge/MYSQL5-6-blue.svg?colorB=E97B00)
[![Software License](https://img.shields.io/badge/License-APACHE-black.svg?style=flat-square&colorB=585ac2)](LICENSE)

![Architecture diagram](environments/test/doc/img/diagram.png)

# Overview
* Fault tolerance:
    * Roles: At least two roles in each layer: master and backup
    * Points of failure: Avoid single points of failure
* High availability:
    * Load balancing: load distribution among available resources
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
Simple structure:

    ├── environments/
    └── roles/

**environments**

This folder is for working with different environments. It contains contextual data for each one. For example: inventory, files, documentation, templates.

**roles**

This folder contains ansible roles: aws, lb, wb

## Playbooks
```main.yml``` is the main playbook. Configure AWS resources like IAM, EC2, VPC, RDS. Then each layer is configured.

# ssh
For connection via ssh, set variable ```instance_ip``` and:

```bash
ssh -i environments/test/.artifacts/.ssh/id_rsa admin@${instance_ip}
```
