FROM python:3

RUN apt-get upgrade

RUN sudo apt-get install -f

RUN apt-get install -y libgl1-mesa-glx

COPY requirements.txt ./

RUN pip3 install -r requirements.txt

COPY . ./

RUN python3 app.py migrate

CMD ["python3", "./app.py", "runserver", "0.0.0.0:5000"]
