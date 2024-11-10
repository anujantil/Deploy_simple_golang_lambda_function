# Here is list of commands, I have executed:
    PS C:\Users\DELL\Desktop\Tasks\go_lang_api_deployment\testing_lambda_using_zip> go install github.com/aws/aws-lambda-go/cmd/build-lambda-zip@latest

    PS C:\Users\DELL\Desktop\Tasks\go_lang_api_deployment\testing_lambda_using_zip> $env:GOOS = "linux"; $env:GOARCH = "amd64"; $env:CGO_ENABLED = "0"; go build -tags lambda.norpc -o bootstrap main.go

    PS C:\Users\DELL\Desktop\Tasks\go_lang_api_deployment\testing_lambda_using_zip> ~\Go\Bin\build-lambda-zip.exe -o myFunction.zip bootstrap
    2024/10/31 22:12:09 wrote myFunction.zip
