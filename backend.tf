terraform {
  backend "gcs" {
    bucket = "jeevan-tfstate"
    credentials = "./credentials.json"
  }
}
