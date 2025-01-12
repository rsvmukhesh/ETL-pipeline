# Spotify Data Pipeline using Snowflake, AWS, Python 
Designed an automated ETL pipeline that extracted data from Spotify API using Python, transformed it with AWS Lambda
and Glue and loaded it into Snowflake for efficient data warehousing. Implemented AWS including S3, Glue, lambda for scalable and efficient data pipeline for real-time analytics with Power BI.

## AWS and Snowflake Services used 
 - **AWS S3**:
Amazon S3 is a highly scalable and flexible object storage service offered by AWS. It provides secure, durable, and cost-effective storage for a wide range of use cases, such as data backup, content distribution, and big data analytics.

- **AWS Lambda**:
AWS Lambda is a serverless compute service that enables developers to run code without the need to provision or manage servers. It executes code in response to events and automatically scales infrastructure based on workload. Common triggers include changes in S3, CloudWatch events, or other AWS services.

-**AWS CloudWatch**:
Amazon CloudWatch is a monitoring and observability service that helps users collect and track metrics, monitor log files, set alarms, and take automated actions based on changes in AWS resources. It provides real-time insights into application performance and infrastructure health.

- **Snowpipe**:
Snowpipe is Snowflake's serverless, cloud-native data ingestion service. It facilitates continuous, automated loading of data into Snowflake's data warehouse in real-time. Snowpipe uses an event-driven architecture, monitoring cloud storage locations for new files and dynamically scaling resources to handle data volume efficiently and cost-effectively.

## Architecture
![Architecture review](https://github.com/user-attachments/assets/fa92185c-a72d-4778-9b89-016052e105cc)

## **Workflow Overview**

1. **Extract**:
   - Data is extracted from Spotify using Python scripts with access of API.
   - Extracted data is passed to a cloud integration service.

2. **Transform**:
   - AWS Lambda processes the data for cleaning, validation, and enrichment.
   - Transformed data is stored in an Amazon S3 bucket.

3. **Load**:
   - Snowpipe (Snowflake’s ingestion service) continuously loads data from S3 into Snowflake.
   - The loaded data is made available in Snowflake for querying and analysis.

4. **Analysis**:
   - Data from Snowflake is used to create reports and dashboards using Business Intelligence (BI) tools.
  
## **Technologies Used**

- **Spotify API**: Data source for extraction.
- **Python**: For writing the extraction script.
- **AWS Lambda**: Serverless compute service for data transformation.
- **Amazon S3**: Cloud storage for transformed data.
- **Snowflake**: Cloud data warehouse for data storage and analytics.
- **Snowpipe**: Automated data ingestion service for Snowflake.


