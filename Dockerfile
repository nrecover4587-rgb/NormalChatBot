FROM python:3.10-slim

RUN apt-get update -y && apt-get upgrade -y

WORKDIR /app

COPY requirements.txt .
RUN pip install --upgrade pip && pip install -r requirements.txt

COPY . .

CMD ["python3", "-m", "NoxxNetwork"]


