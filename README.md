# Dockerfile for Python Application

This Dockerfile sets up a containerized Python environment, suitable for running Python web applications. It is optimized for use with Gunicorn as the WSGI HTTP Server.

## Base Image

- **Python**: The latest official Python Docker image is used as the base image.

## Features

- **Build Essentials and GCC**: Installs essential tools for building and compiling, along with the latest version of GCC.
- **Pip**: Upgrades pip to the latest version.
- **Requirements**: Installs Python dependencies as specified in `requirements.txt`.
- **Working Directory**: Sets `/application` as the working directory.
- **Port**: Exposes port 8000 for web applications.
- **Command**: Uses `gunicorn` as the default command to run the application.

## How to Use This Dockerfile

1. **Prepare `requirements.txt`**:
   Make sure you have a `requirements.txt` file in the same directory as the Dockerfile, listing all the Python dependencies.

2. **Build the Docker Image**:
   ```bash
   docker build -t your_image_name .
   ```

   Replace your_image_name with the desired name for your Docker image.
   ```
   docker run -p 8000:8000 your_image_name

   ```
   This command will start a container with port 8000 exposed on the host.

## Customization

- You can replace gunicorn with your preferred command to run the application by modifying the CMD line.
- If you need to use a specific version of Python, modify the FROM line accordingly.