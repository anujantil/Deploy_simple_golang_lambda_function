resource "aws_ecr_repository" "my_ecr_repository" {
    name = "my-golang-lambda"
}



resource "null_resource" "create_docker_image" {
    provisioner "local-exec" {
      command = <<EOT
        docker build -t my-golang-lambda:latest .
        docker tag my-golang-lambda:latest ${aws_ecr_repository.my_ecr_repository.repository_url}:latest
        aws ecr get-login-password --region ap-south-1 --no-verify-ssl | docker login --username AWS --password-stdin ${aws_ecr_repository.my_ecr_repository.repository_url}
        docker push ${aws_ecr_repository.my_ecr_repository.repository_url}:latest
      EOT
    }
}


output "my_repo_url" {
  value = aws_ecr_repository.my_ecr_repository.repository_url
}