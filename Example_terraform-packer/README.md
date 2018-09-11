# เริ่มต้นสร้างเครื่องกับ Terraform
## Download file Example
```
git clone https://github.com/kenjirawat/Infrastructure-as-Code.git
```
## แก้ไข parameter 2 file
### File main.tf 
```json
credentials = "${file("PART_FILE-account.json")}" 
project     = "PROJECT_ID"  
```
### File packer.json 
```json
"project_id"  : "PROJECT_ID", 
"account_file": "PART_FILE-account.json",
```

# คำสั่งที่ใช้ในการ Build Packer
```
packer build
```

# คำสั่งที่ใช้ในการ Build Terraform
### สำหรับ install plugin 
```
terraform init 
```
### ทดสอบก่อน build 
```
terraform plan 
```
### Build ขึ้น google cloud
```
terraform build 
```