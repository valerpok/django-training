FROM python:3.8.7-slim-buster
RUN apt-get update && apt-get install -y --no-install-recommends libjpeg-dev \
                                                                libtiff-dev \
                                                                liblcms2-dev \
                                                                libpq-dev \
                                                                libwebp-dev \
                                                                libxml2-dev \
                                                                libxslt1-dev \
                                                                gettext \
                                                                git \
                                                                gcc \
                                                                tcl-dev \
                                                                libffi-dev \
                                                                python-cffi \
                                                                libmagic-dev \
                                                                libgdal20 && \
                                                                rm -rf /var/lib/apt/lists/*

#COPY requirements/ requirements/
RUN pip install --upgrade pip
