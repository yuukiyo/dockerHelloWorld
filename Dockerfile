FROM python:3.7.4-alpine

ARG project_dir=/web/hello/

ADD hello.py $project_dir

WORKDIR $project_dir
RUN pip install --upgrade pip
RUN pip install Flask

CMD ["python", "/web/hello/hello.py"]
