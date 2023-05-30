provider "aws" {
  region                   = "ap-south-1"
  #shared_credentials_files = ["C:\\Users\\hp\\.aws\\credentials"]
}

resource "random_pet" "my_random" {
  prefix = "bharath"
}

resource "aws_s3_bucket" "my_s3_bucket" {
  bucket = random_pet.my_random.id
}
