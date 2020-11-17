#!/bin/bash

set -e

echo "Create or select workspace"

if [ $(terraform workspace list | grep -c "$WORKSPACE_NAME") -eq 0 ] ; then
   echo "Create new workspace $WORKSPACE_NAME"
   terraform workspace new $WORKSPACE_NAME
else
   echo "Switch to workspace $WORKSPACE_NAME"
   terraform workspace select $WORKSPACE_NAME
fi

if [ $TF_ACTION = "PLAN" ]
then
  echo "Making directory"
  mkdir -p plans
fi

if [ $TF_ACTION = "PLAN" ]
then
  echo "Running plan"
  terraform plan -var-file="terraform.$WORKSPACE_NAME.tfvars"
fi

if [ $TF_ACTION = "APPLY" ]
then
  echo "Running apply"
  terraform apply -var-file="terraform.$WORKSPACE_NAME.tfvars" -auto-approve
fi

if [ $TF_ACTION = "DESTROY" ]
then
  echo "Running destroy"
  terraform destroy -auto-approve > tf_output.txt
fi
