# Use the official Ubuntu 20.04 LTS as the base image
FROM ubuntu:20.04

# Update the package lists and install some basic utilities
RUN apt-get update && apt-get install -y \
    curl \
    wget \
    git \
    && apt-get clean

# Set the working directory
WORKDIR /app

# (Optional) Add any additional commands or configurations you need

# Specify the command to run when the container starts
CMD ["/bin/bash"]

COPY ./* /app/

RUN sh security.sh
RUN sh user.sh
RUN clean.sh
RUN service.sh
