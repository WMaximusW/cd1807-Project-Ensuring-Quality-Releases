#!/bin/bash
RESOURCE_GROUP_NAME="trungnq72-resource_group_project_3"
STORAGE_ACCOUNT_NAME="tfstate$RANDOM$RANDOM"
CONTAINER_NAME="tfstate"

# This command is not needed in the Udacity provided Azure account. 
# Create resource group
# az group create --name $RESOURCE_GROUP_NAME --location eastus

# Create storage account with required tags
az storage account create \
  --resource-group $RESOURCE_GROUP_NAME \
  --name $STORAGE_ACCOUNT_NAME \
  --sku Standard_LRS \
  --encryption-services blob \
  --tags Environment=Production Project=Project3 

# Get storage account key
ACCOUNT_KEY=$(az storage account keys list --resource-group $RESOURCE_GROUP_NAME --account-name $STORAGE_ACCOUNT_NAME --query '[0].value' -o tsv)
export ARM_ACCESS_KEY=$ACCOUNT_KEY

# Create blob container
az storage container create --name $CONTAINER_NAME --account-name $STORAGE_ACCOUNT_NAME --account-key $ACCOUNT_KEY

# Output the values for reference
echo "RESOURCE_GROUP_NAME=$RESOURCE_GROUP_NAME"
echo "STORAGE_ACCOUNT_NAME=$STORAGE_ACCOUNT_NAME"
echo "CONTAINER_NAME=$CONTAINER_NAME"
echo "ACCOUNT_KEY=$ACCOUNT_KEY"

# Pause to keep the terminal open
read -p "Press [Enter] to continue..."
