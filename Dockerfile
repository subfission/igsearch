FROM python:3.7

WORKDIR /tmp

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

WORKDIR /usr/local/bin

COPY igsearch .
RUN chmod +x igsearch

ENTRYPOINT ["igsearch"]
