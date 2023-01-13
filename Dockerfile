FROM python:alpine3.7

RUN mkdir /code

RUN pip install --upgrade pip

WORKDIR /code

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

CMD ["uvicorn","application.main:app"]
