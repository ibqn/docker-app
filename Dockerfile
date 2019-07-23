FROM python:3.6-alpine

WORKDIR /app

COPY requirements.txt app.py /app/

RUN python -m pip install --upgrade pip && \
    python -m pip install --trusted-host pypi.python.org -r ./requirements.txt

EXPOSE 80

ENV NAME World

CMD ["python", "app.py"]
