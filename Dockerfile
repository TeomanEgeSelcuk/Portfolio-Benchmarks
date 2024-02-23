FROM python:3.11

# Copy the requirements.txt file to the container
COPY requirements.txt /app/requirements.txt

# Update pip 
RUN pip install --upgrade pip

# Install the dependencies from the requirements.txt file
RUN pip install -r /app/requirements.txt

# Install the required Python packages
RUN pip install --upgrade google-api-python-client google-auth-httplib2 google-auth-oauthlib

# Copy contents of the notebook directory to /app in the container
COPY notebooks /app

# Set working directory
WORKDIR /app

# Expose Jupyter Notebook port
EXPOSE 8888

# Copy the custom Jupyter configuration file
COPY jupyter_notebook_config.py /root/.jupyter/

# Run Jupyter Notebook on container startup
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
