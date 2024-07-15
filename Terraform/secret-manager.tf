resource "aws_secretsmanager_secret" "docker_hub" {
  name        = "dockerhubcredentials"
}

resource "aws_secretsmanager_secret_version" "docker_hub_version" {
    secret_id     = aws_secretsmanager_secret.docker_hub.id
    secret_string = jsonencode({
    username = "YOUR USERNAME" 
    password = "YOUR PASSWORD" 
  })
}