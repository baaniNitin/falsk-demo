FROM python:3.6.7

WORKDIR usr/src/flask_app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
CMD ["gunicorn"  ,"-w", "4", "-b", "0.0.0.0:4000", "hello_world:APP"]
