# conftest.py for backend tests
# - Adds backend/src to sys.path so tests can `from main import app`
# - Provides sync TestClient and async httpx AsyncClient
# - Works with FastAPI 0.116+ and httpx 0.28+

import sys
from pathlib import Path
import pytest
from fastapi import FastAPI
from fastapi.testclient import TestClient
import httpx

# Compute path to backend/src (this file lives at backend/conftest.py)
BACKEND_DIR = Path(__file__).resolve().parent
SRC_DIR = BACKEND_DIR / "src"

if str(SRC_DIR) not in sys.path:
    sys.path.insert(0, str(SRC_DIR))

# Import the FastAPI app from backend/src/main.py
# Expecting main.py to expose: app = FastAPI(...)
from main import app as fastapi_app  # noqa: E402


@pytest.fixture(scope="session")
def app() -> FastAPI:
    """Provide the FastAPI app instance for tests."""
    return fastapi_app


@pytest.fixture(scope="session")
def client(app: FastAPI) -> TestClient:
    """Synchronous client for simple endpoint tests."""
    return TestClient(app)


@pytest.fixture(scope="session")
async def async_client(app: FastAPI):
    """Async client backed by httpx with ASGI transport and lifespan support."""
    transport = httpx.ASGITransport(app=app, lifespan="on")
    async with httpx.AsyncClient(transport=transport, base_url="http://test") as ac:
        yield ac
