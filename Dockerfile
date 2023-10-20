FROM pytorch/pytorch
RUN apt-get update && apt-get install -y libsm6 libxext6 libxrender-dev git
RUN git clone --depth 1 https://github.com/tauzn-clock/gnerf
WORKDIR /workspace/gnerf
RUN pip install -r requirements.txt