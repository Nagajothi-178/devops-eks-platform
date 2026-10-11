#!/bin/bash
from flask import Flask
import os

app = Flask(__name__)

@app.route("/")
def home():
    return "Hello from DevOps EKS Platform!"

@app.route("/health")
def health():
    return "healthy"

@app.route("/version")
def version():
    return os.getenv("APP_VERSION", "v1.0.0")

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
