FROM python:3.8.3

ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update \
    && apt-get -y install gcc mono-mcs \
    && rm -rf /var/lib/apt/lists/* \
    && apt-get update \
    && apt install -y tesseract-ocr tesseract-ocr-rus wget build-essential libpoppler-cpp-dev pkg-config \
    python-dev libtesseract-dev libleptonica-dev

RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb \
    && dpkg -i google-chrome-stable_current_amd64.deb; apt-get -fy install

COPY . murmuring/
WORKDIR murmuring

RUN pip install -r requirements.txt

RUN chmod +x entrypoint.sh
ENTRYPOINT ./entrypoint.sh