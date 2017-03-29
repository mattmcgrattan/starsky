FROM ubuntu
RUN apt-get -y update && apt-get install -y python-pip python-dev build-essential libleptonica-dev libtesseract3 libtesseract-dev tesseract-ocr-eng
COPY app /opt/starsky
WORKDIR /opt/starsky
RUN pip install Cython
RUN pip install -r requirements.txt
