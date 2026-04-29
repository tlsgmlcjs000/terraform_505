variable "server_name" {} # 외부에서 이름을 받아옴

resource "local_file" "web_server_info" {
  filename = "${path.module}/../../${var.server_name}.txt" # 파일 형태로 서버 생성 시뮬레이션
  content  = "Welcome to ${var.server_name}!"
}