FROM python:3.10.12-slim

WORKDIR /backend

COPY . /backend

RUN apt-get update && apt-get install -y pkg-config gcc g++ libhdf5-dev

RUN pip install --upgrade pip setuptools wheel

RUN pip install --no-cache-dir flask flask-sqlalchemy psycopg2-binary python-dotenv flask-cors pillow tensorflowjs tensorflow==2.15.0 tensorflow_decision_forests==1.8.1

RUN apt-get clean && rm -rf /var/lib/apt/lists/*

EXPOSE 5000

ENV FLASK_APP=app.py
ENV FLASK_ENV=development

CMD ["flask", "run", "--host=0.0.0.0", "--debug"]
