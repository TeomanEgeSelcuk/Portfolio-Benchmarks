#!/bin/bash

# Get the current directory path
CURRENT_DIR=$(pwd)

# Build the Docker image using the Dockerfile in the current directory
docker build -t portfolio_benchmark .

# Create a Docker volume for the ipynb files in the current directory
docker volume create --name portfolio_volume --opt type=none --opt device="$CURRENT_DIR/notebooks" --opt o=bind

# Run the Docker container with the Jupyter Notebook image and disable login
docker run -d -p 8888:8888 \
           --name portfolio_benchmark_container \
           -v portfolio_volume:/app \
           portfolio_benchmark_container \
           start-notebook.sh --NotebookApp.token=''