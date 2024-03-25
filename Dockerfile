FROM pytorch/pytorch:2.2.1-cuda11.8-cudnn8-runtime

# 设置工作目录
WORKDIR /data

# 设置 NVIDIA 相关的环境变量
ENV NVIDIA_DRIVER_CAPABILITIES=compute,utility
ENV NVIDIA_VISIBLE_DEVICES=all


#RUN pip install -i https://pypi.tuna.tsinghua.edu.cn/simple/ -r requirements.txt
COPY requirements.txt /tmp/requirements.txt
RUN ["pip", "install", "-r", "/tmp/requirements.txt"]

# 暴露容器端口
EXPOSE 8501
EXPOSE 8000
