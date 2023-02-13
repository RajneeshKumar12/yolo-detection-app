FROM python:3

RUN apt-get update
RUN apt-get install -y python3-pip

RUN apt install -y libgl1-mesa-glx

RUN apt-get install python3 -y

RUN pip install --upgrade pip
COPY requirements.txt ./

RUN pip3 install -r requirements.txt

COPY . ./

CMD ["python3", "./app.py", "runserver", "0.0.0.0:5000"]

