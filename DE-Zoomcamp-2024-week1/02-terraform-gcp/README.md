You must have account cloud service. 

a. Create first [project](https://console.cloud.google.com/) 

b. Set up to the first ptoject, [service account & authentication](https://cloud.google.com/docs/authentication/getting-started)

c. Download [SDK](https://cloud.google.com/sdk/docs/quickstart) on local set up

d. Run this to use terraform 
```shell
   export GOOGLE_APPLICATION_CREDENTIALS="<path/to/your/service-account-authkeys>.json"
   
   # Refresh token/session, and verify authentication
   gcloud auth application-default login
```

Command on terraform:
```shell
# Refresh service-account's auth-token for this session
gcloud auth application-default login

# Initialize state file (.tfstate)
terraform init

# Check changes to new infra plan
terraform plan 
```

```shell
# Create new infra
terraform apply 
```

```shell
# Delete infra after your work, to avoid costs on any running services
terraform destroy
```
