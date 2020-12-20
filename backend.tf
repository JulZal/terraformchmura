terraform {
  

  backend "remote" {
    organization = "jultestorg1"
  
    workspaces {
      name = "terraformchmuraaws"
    }
  }
}