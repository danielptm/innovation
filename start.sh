#!/usr/bin/env bash
terraform -v
sleep 25s
cd terraform/local
terraform init
terraform apply -input=false
#java -jar innovation.jar