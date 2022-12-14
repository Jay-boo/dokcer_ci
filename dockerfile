FROM python:3-alpine

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt


COPY hello_world.py hello_world.py

EXPOSE 5000

ENTRYPOINT ["flask","run","--host=0.0.0.0"]

# docker image build -t flaskredis .
# docker inpect redis get ip
# docker run -e reddis_ip=IP_inspect -p 50000:5000 --rm --name flask flaskredis

