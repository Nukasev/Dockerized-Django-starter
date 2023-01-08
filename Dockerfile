FROM python:3
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
WORKDIR /code
COPY requirements.txt /code/
RUN pip install -r requirements.txt -r requirements-dev.txt
COPY . /code/
# force the container to stay alive
CMD tail -f /dev/null