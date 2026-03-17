FROM manimcommunity/manim:v0.18.0

USER root

RUN apt-get update && \
    apt-get install -y python3-pip

COPY requirements.txt /tmp/requirements.txt

# 👇 install INTO the notebook conda environment
RUN /srv/conda/envs/notebook/bin/pip install --no-cache-dir -r /tmp/requirements.txt

CMD ["jupyter-notebook", "--ip=0.0.0.0", "--no-browser", "--allow-root", "--NotebookApp.token=''"]
