#!/usr/bin/env python
set -e

import os
import subprocess
subprocess.call(["ls", "-l","terraform -v"])
#WORKSPACE = os.environ.get('$WORKSPACE_NAME')
#print(WORKSPACE)
#terraform -v

#terraform fmt -diff=true -list=true -write=false

##terraform init -force-copy -backend-config="key=prakash/terraform.tfstate" -backend-config="prakashawsbucketforterraform"
#terraform get -update
#terraform state pull

#terraform validate -var-file=dev.tfvars
#terraform plan --out=WORKSPACE/latestPlan.json -var-file=dev.tfvars -no-color
#aws s3 cp WORKSPACE/latestPlan.json s3://prakashawsbucketforterraform/output/WORKSPACE-tfoutput.txt
