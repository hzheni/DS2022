#!/bin/bash

aws s3 cp google_logo.png s3://ds2022-dkh8my/

aws s3 presign --expires-in 604800 s3://ds2022-dkh8my/google_logo.png

# The --expires-in flag is how many seconds the file should be public.
# The s3:// is the BUCKET+FILE path to your specific file.

# my URL is below
# https://ds2022-dkh8my.s3.us-east-1.amazonaws.com/google_logo.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAYEKP5G4XQB7MZEXX%2F20240927%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240927T175013Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=6a82c427f30def6ed8d7651147dd8a0f4e0b177607ee32e5b7373fd036e6af8f
