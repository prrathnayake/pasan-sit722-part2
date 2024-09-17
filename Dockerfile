FROM python:3.11-alpine 
# use python:3.11-alpine as base image

WORKDIR /app/
# set working directory ./app

RUN pip install --upgrade pip
# upgrade pip

COPY . .
# copy all files to container

RUN pip install -r ./book_catalog/requirements.txt
# installing requirements for image

COPY /book_catalog .
# go into ./book_catalog directory

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]