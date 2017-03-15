import boto3
import json

def lambda_handler(event, context):
    print "PRINT hello world"



    return {
        "statusCode": 200,
        "headers": {},
        "body": "Hello World"}


if __name__ == "__main__":
    print "Invoked outside of lambda"

    print lambda_handler(None, None)

