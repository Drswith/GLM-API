FROM pytorch/pytorch:1.13.1-cuda11.6-cudnn8-runtime

# ENV OFFLINE_MODELS="/mnt/offline_models"

ARG WORK_DIR=/home/app

WORKDIR $WORK_DIR

COPY . $WORK_DIR

RUN pip3 config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
RUN pip3 install -r requirements.txt

EXPOSE 9000

CMD [ "python3","api.py" ]