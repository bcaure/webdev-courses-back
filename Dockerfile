from phusion/passenger-full

ENV APP=/home/app/webapp

RUN rm /etc/nginx/sites-enabled/default
ADD webapp.conf /etc/nginx/sites-enabled/webapp.conf
RUN mkdir $APP
# This copies your web app with the correct ownership.
COPY --chown=app:app . $APP

RUN rm -f /etc/service/nginx/down

RUN apt update
RUN apt install -y python3-pip
RUN pip3 install -r $APP/requirements.txt


