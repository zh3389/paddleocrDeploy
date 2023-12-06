FROM python:3.8-slim
WORKDIR /app
COPY . /app
RUN pip install -r requirements.txt
RUN paddleocr --image_dir /app/ppcor_img/imgs/11.jpg --use_angle_cls true --use_gpu false
CMD ["python", "app.py"]