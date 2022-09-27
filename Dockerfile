FROM python:3.8-slim-buster
WORKDIR /app
# RUN apt-get -y update
# RUN apt-get -y upgrade
# RUN apt-get install -y ffmpeg
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
COPY . . 
CMD ["python3", "./main.py"]