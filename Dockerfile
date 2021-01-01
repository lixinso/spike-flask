FROM python:3.7-slim

#Reference: https://cloud.google.com/run/docs/quickstarts/build-and-deploy#python_1

RUN apt update
RUN apt upgrade -y
RUN apt install -y wget
RUN apt install -y vim


# Copy local code to the container image.
ENV APP_HOME /app
WORKDIR $APP_HOME
#COPY . ./


# Install production dependencies.
RUN pip install Flask gunicorn
RUN pip install flask-login

#CMD ["/bin/bash"]

# Run the web service on container startup. Here we use the gunicorn
# webserver, with one worker process and 8 threads.
# For environments with multiple CPU cores, increase the number of workers
# to be equal to the cores available.
CMD exec gunicorn --bind :$PORT --workers 1 --threads 8 --timeout 0 app:app
