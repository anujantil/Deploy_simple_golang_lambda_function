# Introduction
- This repository contains the golang simple "Hello world" application deployment startegy and codebase using containerized approach.

# Execute the below command inside parent directory:  
1. go mod init deploy_simple_golang_lambda_function   -> This will create go.mod file.
2. go get github.com/aws/aws-lambda-go/lambda          -> This will create go.sum file.
   














# Execute the below commands on the Terminal if you want to upload the zip file of your code to aws lambda function
1. $env:GOOS="linux"; $env:GOARCH="amd64"; go build -o main main.go
2. Create a bootstrap file:
   vi bootstrap
      #!/bin/sh
      ./main

3. Compress-Archive -Path .\main,.\bootstrap -DestinationPath function.zip
4. Upload the zip file to aws lambda function.
5. set the handler to "bootstrap".
6. create test events and trigger.
