FROM gcr.io/tensorflow/tensorflow:latest-gpu

USER root
RUN apt-get update && apt-get install -y module-init-tools && apt-get clean

# Enable ssh on boot
RUN systemctl enable ssh
