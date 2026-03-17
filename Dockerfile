FROM manimcommunity/manim:v0.18.0

# Install pip + system deps (optional but safe)
RUN apt-get update && \
    apt-get install -y python3-pip

# Copy requirements into the image
COPY requirements.txt /tmp/requirements.txt

# Install Python packages
RUN pip3 install --no-cache-dir -r /tmp/requirements.txt

# Start Jupyter
CMD ["jupyter-notebook", "--ip=0.0.0.0", "--no-browser", "--allow-root", "--NotebookApp.token=''"]
