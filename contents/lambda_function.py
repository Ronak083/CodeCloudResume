import boto3
import json
import traceback

dynamodb = boto3.client('dynamodb')

def lambda_handler(event, context):
    try:
        response = dynamodb.update_item(
            TableName='VisitorCounter',
            Key={
                'counterId': {'S': 'homepage'}
            },
            UpdateExpression="SET #v = if_not_exists(#v, :start) + :inc",
            ExpressionAttributeNames={
                '#v': 'views'
            },
            ExpressionAttributeValues={
                ':inc': {'N': '1'},
                ':start': {'N': '0'}
            },
            ReturnValues="UPDATED_NEW"
        )

        return {
            'statusCode': 200,
            'headers': {
                'Access-Control-Allow-Origin': '*'
            },
            'body': json.dumps({'count': int(response['Attributes']['views']['N'])})
        }

    except Exception as e:
        print("Error updating visitor count:", str(e))
        traceback.print_exc()
        return {
            'statusCode': 500,
            'headers': {
                'Access-Control-Allow-Origin': '*'
            },
            'body': json.dumps({'error': str(e)})
        }