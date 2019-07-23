FROM python:3.6-alpine

WORKDIR /app

COPY . /app

RUN python -m pip install --trusted-host pypi.python.org -r ./requirements.txt

EXPOSE 80

ENV NAME World

CMD ["python", "app.py"]
