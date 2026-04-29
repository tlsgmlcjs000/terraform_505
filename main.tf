module "my_web_servers" {
  source   = "./modules/web-server"
  
  # 변수 파일의 web_servers 맵을 돌면서 하나씩 꺼내옴
  for_each = var.web_servers
  
  # 모듈 내부의 server_name 변수에 Map의 Key값(서버 이름)을 전달
  server_name = each.key
}