FROM apache/airflow:2.10.5
USER root
RUN apt-get update \
    && apt-get install -y --no-install-recommends vim \
    && apt-get autoremove -yqq --purge \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

USER airflow

ADD requirements.txt .
RUN pip install --no-cache-dir --upgrade -r requirements.txt