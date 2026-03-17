FROM manimcommunity/manim:v0.18.0

RUN apt-get update && \
    apt-get install -y python3-pip

COPY requirements.txt /tmp/requirements.txt

RUN pip3 install --no-cache-dir -r /tmp/requirements.txt

# 👇 IMPORTANT: install kernel in this environment
RUN python3 -m ipykernel install --user --name=python3 --display-name "Python (manim)"

CMD ["jupyter-notebook", "--ip=0.0.0.0", "--no-browser", "--allow-root", "--NotebookApp.token=''"]
