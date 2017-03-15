.PHONY: all test
all: .deploy

AWS_DEFAULT_PROFILE=personal

hello-transformed.yaml: hello.yaml lambda_function.py
	aws cloudformation package \
		--template-file hello.yaml \
		--output-template-file hello-transformed.yaml \
		--s3-bucket pauloschreiner-hello


.deploy: hello-transformed.yaml
	aws cloudformation deploy \
		--template-file hello-transformed.yaml \
		--stack-name "hello" \
		--capabilities CAPABILITY_IAM
	@touch .deploy


