#!/Users/jessicani/anaconda3/bin/python3

import boto3
import urllib.request

url = "https://t4.ftcdn.net/jpg/02/66/72/41/360_F_266724172_Iy8gdKgMa7XmrhYYxLCxyhx6J7070Pr8.jpg"
local_file = "finalcat.jpg"

urllib.request.urlretrieve(url, local_file)

s3 = boto3.client('s3', region_name='us-east-1')

bucket = 'ds2022-dkh8my'
local_file = 'cat.jpg'
# vars needed
bucket_name = 'ds2022-dkh8my'
object_name = local_file
expires_in = 604800  
    

with open(local_file, 'rb') as file:
   resp = s3.put_object( 
    Body = file,
    Bucket = bucket,
    Key = local_file,
    ACL = 'public-read'
)


response = s3.generate_presigned_url(
    'get_object',
    Params={'Bucket': bucket_name, 'Key': object_name},
    ExpiresIn=expires_in
    )

print(response)

# output url below
# https://ds2022-dkh8my.s3.amazonaws.com/cat.jpg?AWSAccessKeyId=AKIAYEKP5G4XQB7MZEXX&Signature=g%2FYZodY%2B3ee3l7K5BM98k6PuLLA%3D&Expires=1728085513
