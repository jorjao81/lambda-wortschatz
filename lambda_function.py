import boto3

def lambda_handler(event, context):
    print "PRINT hello world"

    return "Hello World"


if __name__ == "__main__":
    print "Invoked outside of lambda"

    lambda_handler(None, None)

