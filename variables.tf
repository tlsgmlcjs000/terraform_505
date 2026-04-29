variable "web_servers" {
  default = {
    "dev-web-01"  = { env = "dev" }
    "dev-web-02"  = { env = "dev" }
    "prod-web-01" = { env = "prod" }
  }
}