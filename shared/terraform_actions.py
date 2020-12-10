#!/usr/bin/env python
#set -e

import os
import subprocess
import shlex

subprocess.call(["terraform", "-v"])

subprocess.run(shlex.split('terraform fmt -diff=true -list=true -write=false'))
print('Terraform worked')

subprocess.run(shlex.split('terraform init -force-copy -backend-config="bucket=prakashawsbucketforterraform" -backend-config="region=us-east-1" -backend-config="dynamodb_table=terraform-lock" '))
WORKSPACE = os.environ.get('WORKSPACE_NAME')
print(WORKSPACE)
#terraform -v

subprocess.run(shlex.split('terraform get -update'))
subprocess.run(shlex.split('terraform state pull'))

subprocess.run(shlex.split('terraform validate -var-file=dev.tfvars'))

subprocess.run(shlex.split('terraform plan -var-file=dev.tfvars -no-color'))
#subprocess.run(shlex.split('terraform plan --out=WORKSPACE/latestPlan.json -var-file=dev.tfvars -no-color'))
subprocess.run(shlex.split('aws s3 cp WORKSPACE/latestPlan.json s3://prakashawsbucketforterraform/output/WORKSPACE-tfoutput.txt'))
#terraform fmt -diff=true -list=true -write=false

##terraform init -force-copy -backend-config="key=prakash/terraform.tfstate" -backend-config="prakashawsbucketforterraform"
#terraform get -update
#terraform state pull

#terraform validate -var-file=dev.tfvars
#terraform plan --out=WORKSPACE/latestPlan.json -var-file=dev.tfvars -no-color
#aws s3 cp WORKSPACE/latestPlan.json s3://prakashawsbucketforterraform/output/WORKSPACE-tfoutput.txt
