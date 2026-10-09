FROM python:3.12-slim AS builder

WORKDIR /build

COPY requirements.txt .

RUN pip install --no-cache-dir --prefix=/install -r requirements.txt

FROM python:3.12-slim

ENV PYTHONUNBUFFERED=1
ENV APP_VERSION=v1.0.0

WORKDIR /app

COPY --from=builder /install /usr/local
COPY src/ ./src/

EXPOSE 5000

USER 10001

CMD ["gunicorn", "--bind", "0.0.0.0:5000", "--workers", "2", "src.app:app"]
