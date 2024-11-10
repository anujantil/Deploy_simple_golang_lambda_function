provider "aws" {
    access_key = var.access_key
    secret_key = var.secret_key
    region = var.region
}

module "create_ecs_repo" {
    source = "./modules/Create_ecs_repo"
}

module "create_lambda_function" {
    source = "./modules/create_aws_lambda"
}

output "my_repo_url" {
    value = module.create_ecs_repo.my_repo_url
}