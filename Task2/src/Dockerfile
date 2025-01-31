FROM alpine:3.16.2

RUN apk update \
    && apk upgrade --no-cache

ENV APP_HOST=${APP_HOST:-0.0.0.0}
ENV APP_PORT=${APP_PORT:-5000}

ENV USER=${USER:-app}
ENV UID=${UID:-12100}
ENV APP_HOME=/app

WORKDIR $APP_HOME

COPY app.py $APP_HOME

RUN apk add python3 py3-pip --no-cache

RUN adduser \
    --disabled-password \
    --uid "${UID}" \
    "${USER}"

COPY requirements.txt $APP_HOME

RUN pip3 --no-cache-dir install -r requirements.txt

EXPOSE 5000

CMD ["python3", "app.py"]
