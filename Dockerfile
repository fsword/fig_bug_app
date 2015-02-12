FROM python
COPY . /figapp/
WORKDIR /figapp
CMD ls -la
