#!/Users/jessicani/anaconda3/bin/python3

import boto3

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


#curl https://t4.ftcdn.net/jpg/02/66/72/41/360_F_266724172_Iy8gdKgMa7XmrhYYxLCxyhx6J7070Pr8.jpg > cat.jpg
#aws s3 cp cat.jpg s3://ds2022-dkh8my/
#aws s3 presign --expires-in 604800 s3://ds2022-dkh8my/cat.jpg
# aws s3 cp --acl public-read cat.jpg s3://ds2022-dkh8my/
# The --expires-in flag is how many seconds the file should be public.
# The s3:// is the BUCKET+FILE path to your specific file.

# aws s3 cp --acl public-read cat.jpg s3://ds2022-dkh8my/


