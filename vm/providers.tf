####################################
# PROVIDERS
####################################


####################################
# Make sure the below enviroment variables are
# set with correct values:

# export ARM_CLIENT_ID="00000000-0000-0000-0000-000000000000"
# export ARM_CLIENT_SECRET="00000000-0000-0000-0000-000000000000"
# export ARM_SUBSCRIPTION_ID="00000000-0000-0000-0000-000000000000"
# export ARM_TENANT_ID="00000000-0000-0000-0000-000000000000"
####################################
provider "azurerm" {
  features {}
}