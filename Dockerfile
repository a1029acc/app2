FROM python:3.11-slim

WORKDIR /src

COPY . /src/

EXPOSE 4000

RUN pip3 install -r requirements.txt --break-system-packages

CMD ["python3", "server.py"]
