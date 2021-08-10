FROM python:3.7-slim

RUN apt-get update && apt-get install -y wget zip
RUN mkdir /app
RUN chmod a+rwx -R /app
WORKDIR /app

COPY ./requirements.txt /app/

ENV PATH /usr/local/nvidia/bin:/usr/local/cuda/bin:${PATH}
ENV LD_LIBRARY_PATH /usr/local/nvidia/lib:/usr/local/nvidia/lib64
ENV NVIDIA_VISIBLE_DEVICES all
ENV NVIDIA_DRIVER_CAPABILITIES compute,utility

RUN pip install --no-cache-dir -r requirements.txt