FROM docker.io/petronetto/tensorflow-alpine:latest

RUN mkdir /code

WORKDIR /code

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

CMD ["uvicorn","application.main:app"]
