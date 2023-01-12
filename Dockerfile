FROM python:alpine3.7

RUN mkdir /code

WORKDIR /code

COPY requirements.txt .

RUN python3 -m pip install --upgrade https://storage.googleapis.com/tensorflow/mac/cpu/tensorflow-0.12.0-py3-none-any.whl

RUN pip install -r requirements.txt

COPY . .

CMD ["uvicorn","application.main:app"]
