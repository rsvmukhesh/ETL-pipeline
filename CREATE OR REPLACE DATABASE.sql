CREATE OR REPLACE DATABASE spotify_etl_project;

CREATE OR REPLACE STORAGE INTEGRATION spotify_s3_int
    TYPE = EXTERNAL_STAGE
    STORAGE_PROVIDER = S3
    ENABLED = TRUE
    STORAGE_AWS_ROLE_ARN = 'arn:aws:iam::947924525390:role/s3-snowflake'
    STORAGE_ALLOWED_LOCATIONS = ('s3://spotify-etl-project-rsvm')
     COMMENT = 'creating connection to s3'

DESC INTEGRATION spotify_s3_int;