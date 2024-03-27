FROM python:3.9

# This ensures all python commands will sit on the terminal
ENV PYTHONUNBUFFERED=1

ENV DJ_PORT 8000

WORKDIR /app

COPY requirements.txt /app/requirements.txt

RUN pip install -r requirements.txt

COPY . /app

CMD ["sh", "-c", "python3 manage.py runserver 0.0.0.0:$DJ_PORT"]