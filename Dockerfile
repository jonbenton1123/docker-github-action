# Use the latest official Ubuntu image
FROM ubuntu:latest

# Set maintainer info (optional)
LABEL maintainer="yourname@example.com"

# Update package lists and install basic tools
RUN apt-get update && apt-get install -y \
    curl \
    vim \
    git \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Copy everything from your local folder into the container
COPY . /app

# Default command (keeps container running)
CMD ["bash"]
