#!/usr/bin/env bash
terraform -v
sleep 25s
cd terraform/local
terraform init
terraform apply -auto-approve
java -jar innovation.jar