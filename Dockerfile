FROM python:3.9-alpine

WORKDIR /usr/src/app

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

RUN apk add --no-cache bash

COPY . .

EXPOSE 80

CMD [ "python3", "./main.py" ]