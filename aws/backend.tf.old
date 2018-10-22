terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "gr-innovation"

    workspaces {
      name = "Test"

      // prefix = "my-app-"
    }
  }
}
