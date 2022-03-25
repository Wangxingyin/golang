# 基于python3.6.8镜像
FROM python:3.6.8



# 更新pip
RUN pip install --upgrade pip 

# 工作目录
WORKDIR /code
ADD . /code

# pip安装依赖包
RUN pip install -r requirements.txt

# 传递参数
ENTRYPOINT ["pytest"]

# 默认显示help帮助信息
CMD ["--help"]
