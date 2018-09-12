# Login เข้า Google cloud
```
gcloud auth application-default login
```

# Add project ID
### file packer.json ของ PACKER
```json
"project_id": "PROJECT_ID",
``` 
### file var.tf ของ Terraform
```json
variable "project-id" {
  default       = "*YOUR_PROJECT_ID"
}
``` 
# Build project
```
packer build Packer/packer.json
terraform init
terraform plan
terraform apply 
```

# Check Project
```
### google cloud project >> Compute Engine >> VM instances
### Remote เข้าเครื่อง ssh or gcloud
### ใช้ command > htop เพื่อดู process การทำงานของเครื่องได้
### ใน part /home/admin/ มีไฟล์ hello.txt ที่สร้าง
```