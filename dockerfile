FROM alpine
RUN apk add --no-cache python3
RUN apk add --no-cache py3-pip
COPY requirements.txt /usr/src/app/
RUN pip3 install --no-cache-dir -r /usr/src/app/requirements.txt
COPY app.py /usr/src/app/
COPY templates/index.html /usr/src/app/templates/ 
CMD ["python3", "/usr/src/app/app.py"]
EXPOSE 5000

