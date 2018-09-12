# เริ่มต้นสร้างเครื่องกับ Terraform
![Image](https://www.terraform.io/assets/images/og-image-f5bbc98c.png)

## Download file Example
```
git clone https://github.com/kenjirawat/Infrastructure-as-Code.git
```
## เข้าไปแก้ไข parameter สองจุด 
```json
credentials = "${file("PART_FILE-account.json")}" 
project     = "PROJECT_ID"  
```

# คำสั่งที่ใช้ในการ Build
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