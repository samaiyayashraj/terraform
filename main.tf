# Provider Configuration
provider "kubernetes" {
  config_path = "/Users/ysamaiya/.kube/docker-desktop"
  
}

# Resource Configuration
resource "kubernetes_manifest" "postgres_instance" {
  manifest = {
    apiVersion = "sql.tanzu.vmware.com/v1"
    kind = "Postgres"
    

    metadata = {
      name: var.instane-name
      namespace = "default"
    }

    spec = {
      pgConfig = {
        dbname =  var.dbname
        username = var.username 
        appUser = var.appUser
        readOnlyUser = var.readOnlyUser
        readWriteUser = var.readWriteUser

      }
      highAvailability = {
        enabled = var.highAvailability-enable
        readReplicas = var.readReplicas
      }
      storageSize = var.storageSize
    }
  }
}