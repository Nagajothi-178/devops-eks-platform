
import os
import sys

sys.path.insert(
    0,
    os.path.abspath(os.path.join(os.path.dirname(__file__), "../src"))
)

from app import app


def setup_function():
    app.config["TESTING"] = True


def test_homepage():
    client = app.test_client()
    response = client.get("/")
    assert response.status_code == 200
    assert b"Hello from DevOps EKS Platform!" in response.data


def test_health_endpoint():
    client = app.test_client()
    response = client.get("/health")
    assert response.status_code == 200
    assert b"healthy" in response.data


def test_version_endpoint():
    client = app.test_client()
    response = client.get("/version")
    assert response.status_code == 200
    assert b"v1.0.0" in response.data
