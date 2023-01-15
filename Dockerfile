FROM python:3.9.9-slim-buster 

RUN mkdir /code

RUN apt-get update

RUN apt-get install ffmpeg libsm6 libxext6  -y

RUN pip install --upgrade pip

WORKDIR /code

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

CMD ["uvicorn","application.main:app"]
