FROM pytorch/pytorch:1.13.1-cuda11.6-cudnn8-runtime

ARG WORK_DIR=/usr/src/app

WORKDIR $WORK_DIR

COPY . $WORK_DIR

RUN pip3 install -r requirements.txt

EXPOSE 9000

CMD [ "python","api.py" ]