FROM python:3.11-slim

WORKDIR /app

# Install deps
COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

EXPOSE 5001

ENV FLASK_APP=main.py
# Allow all
ENV FLASK_RUN_HOST=0.0.0.0 

# ENTRYPOINT ["python", "main.py"]
ENTRYPOINT ["flask", "run", "--host=0.0.0.0", "--port=5001"]
