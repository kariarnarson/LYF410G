FROM manimcommunity/manim:v0.18.0

RUN apt-get update && \
    apt-get install -y \
    python3-pip \
    && pip3 install jupyter

CMD ["jupyter-notebook", "--ip=0.0.0.0", "--no-browser", "--allow-root", "--NotebookApp.token=''"]
