module "jx" {
  source  = "jenkins-x/jx/google"
  version = "1.10.11"
  gcp_project = "mxinfo-jenkins"
  cluster_name = "mxinfo-gcp-k8s"
}


terraform {
    backend "gcs" {
        bucket = "mxinfo-jenkins-tfstate-files"
        prefix = "terraform/state"
    }
}