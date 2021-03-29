FROM python:3.8-slim-buster
MAINTAINER shawn.s.jafari@gmail.com
COPY . /pytestWithDocker
WORKDIR /pytestWithDocker
RUN pip install --no-cache-dir -r requirements.txt
RUN ["pytest", "-v", "--junitxml=reports/result.xml"]
CMD tail -f /dev/null