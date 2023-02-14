FROM python:3

RUN apt-get update && apt-get install ffmpeg libsm6 libxext6  -y

COPY requirements.txt ./

RUN pip3 install -r requirements.txt

COPY . ./

RUN python3 app.py migrate

CMD ["python3", "./app.py", "runserver", "0.0.0.0:5000"]
