FROM python:alpine3.7

RUN mkdir /code

WORKDIR /code

COPY requirements.txt .

RUN pip3 install https://github.com/better/alpine-tensorflow/releases/download/alpine3.7-tensorflow1.7.0/tensorflow-1.7.0-cp36-cp36m-linux_x86_64.whl

RUN pip install -r requirements.txt

COPY . .

CMD ["uvicorn","application.main:app"]
