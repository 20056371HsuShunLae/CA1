README: Docker Engine Installation with Ansible on AWS EC2


Overview
This guide will walk you through the process of using an Ansible playbook to automatically install and configure Docker Engine on your AWS EC2 instance running Amazon Linux.

Prerequisites
An AWS EC2 instance with Amazon Linux.
SSH access to the EC2 instance.
Ansible installed on your local machine.
The private key for the EC2 instance.


Automation Flow

This Ansible script will automatically install Docker Engine on your AWS EC2 instance. It will:

Install Docker using yum.
Add the ec2-user to the docker group for user access to Docker.
Configure Docker to start automatically upon boot.

