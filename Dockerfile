FROM nextcloud:34-apache

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        ocrmypdf \
        tesseract-ocr-deu \
        tesseract-ocr-eng && \
    rm -rf /var/lib/apt/lists/*
