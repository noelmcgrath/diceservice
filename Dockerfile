# Build a deployable dice-service container
FROM	ubuntu:12.04
maintainer	Noel Mc Grath
# Install dependencies
RUN 	echo 'deb http://archive.ubuntu.com/ubuntu precise main universe' > /etc/apt/sources.list
RUN	apt-get update
RUN	apt-get install -y -q curl
RUN	apt-get install -y -q git
RUN	apt-get install -y -q python
RUN	apt-get install -y -q python-pip
RUN git clone https://github.com/noelmcgrath/diceservice && cd diceservice && pip install -r requirements.txt
cmd cd /diceservice && gunicorn --bind 0.0.0.0:8000 --workers=2 roll-service:app
expose 8000
