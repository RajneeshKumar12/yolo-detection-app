FROM python:3

RUN wget https://pjreddie.com/media/files/yolov3.weights


RUN pip3 install wheel setuptools pip --upgrade  


COPY requirements.txt ./

RUN pip3 install -r requirements.txt

COPY . ./



EXPOSE 5000

CMD python app.py run -h 0.0.0.0 -p 5000
