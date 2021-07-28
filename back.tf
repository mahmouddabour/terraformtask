terraform {
    backend "s3" {
    bucket = "ntiterraformtest"
    key = "terraform.tfstate"
    region = "us-east-1"
    encrypt = true
    
}
}