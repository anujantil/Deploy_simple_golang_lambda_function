# To Build and Create the Zip file of you main golang code:
    Follow the instructions specified inside the below url:
    -   https://docs.aws.amazon.com/lambda/latest/dg/golang-package.html

    Note: 
    - Don't manually create bootstrap file    (This was the mistake, I was Doing.)

    updated commands:
    - go install github.com/aws/aws-lambda-go/cmd/build-lambda-zip@latest
    - $env:GOOS = "linux"; $env:GOARCH = "amd64"; $env:CGO_ENABLED = "0"; go build -tags lambda.norpc -o bootstrap main.go
    - ~\Go\Bin\build-lambda-zip.exe -o myFunction.zip bootstrap



# Here is list of commands, I have executed:
    PS C:\Users\DELL\Desktop\Tasks\go_lang_api_deployment\testing_lambda_using_zip> go install github.com/aws/aws-lambda-go/cmd/build-lambda-zip@latest

    PS C:\Users\DELL\Desktop\Tasks\go_lang_api_deployment\testing_lambda_using_zip> $env:GOOS = "linux"; $env:GOARCH = "amd64"; $env:CGO_ENABLED = "0"; go build -tags lambda.norpc -o bootstrap main.go

    PS C:\Users\DELL\Desktop\Tasks\go_lang_api_deployment\testing_lambda_using_zip> ~\Go\Bin\build-lambda-zip.exe -o myFunction.zip bootstrap
    2024/10/31 22:12:09 wrote myFunction.zip





