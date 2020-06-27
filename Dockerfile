FROM python:3.7.3-stretch

# Working dir
WORKDIR /app

# copy src code to workdir
COPY . app.py /app/

# install package from requiremetns.txt
# hadolint ignore=DL3013
RUN pip install --upgrade pip &&\
    pip install --trusted-host pypi.python.org -r requirements.txt