# Terraform Remote State Datasource - Remote Backend GCP Cloud Storage Bucket
data "terraform_remote_state" "cloudsql_publicdb" {
  backend = "gcs"
  config = {
    bucket = "harshini-456810-tfstate"
    prefix = "cloudsql/publicdb"
  }
}

output "datasource_cloudsql_publicip" {
  value = data.terraform_remote_state.cloudsql_publicdb.outputs.cloudsql_db_public_ip
}
