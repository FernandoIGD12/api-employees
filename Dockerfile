FROM python:3-slim

WORKDIR /programas/api_iot

RUN pip3 install fastapi uvicorn mysql-connector-python

COPY . .

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
