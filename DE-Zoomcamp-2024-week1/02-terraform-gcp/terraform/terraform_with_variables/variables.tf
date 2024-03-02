variable "credentials" {
  description = "My Credentials"
  default     = "<copy your file 'your-name-file.json' and paste on this>"
  #ex: if you have a directory where this file is called keys with your service account json file
  #saved there as my-creds.json you could use default = "./keys/my-creds.json"
}


variable "project" {
  description = "Project"
  default     = "<your-id-project>"
}

variable "region" {
  description = "Region"
  #Update the below to your desired region
  default     = "<your-location>"
}

variable "location" {
  description = "Project Location"
  #Update the below to your desired location
  default     = "<your-location>"
}

variable "bq_dataset_name" {
  description = "My BigQuery Dataset Name"
  #Update the below to what you want your dataset to be called
  default     = "taxiny_dataset"
}

variable "gcs_bucket_name" {
  description = "My Storage Bucket Name"
  #Update the below to a unique bucket name
  default     = "taxi-ridesny-bucket"
}

variable "gcs_storage_class" {
  description = "Bucket Storage Class"
  default     = "STANDARD"
}
