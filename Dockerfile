FROM pytorch/pytorch:1.13.1-cuda11.6-cudnn8-runtime
COPY . .
RUN pip3 install -r requirements.txt
EXPOSE 9000
CMD [ "python","api.py" ]