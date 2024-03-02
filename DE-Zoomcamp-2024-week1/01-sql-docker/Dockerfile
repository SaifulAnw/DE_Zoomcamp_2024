#Specifies the base image used, which is python version 3.9.1.
FROM python:3.9.1

#Installs wget inside the container using apt-get.
RUN apt-get install wget

#Installs the python libraries pandas, sqlalchemy, and psycopg2 using pip.
RUN pip install pandas sqlalchemy psycopg2

#Sets the working directory for the container.
WORKDIR /app

#Copies the ingest_data.py file from the host to the container at path /app.
COPY ingest_data.py ingest_data.py 

#Specifies the command to run when the container starts, which is to run the ingest_data.py file using python.
ENTRYPOINT [ "python", "ingest_data.py" ]