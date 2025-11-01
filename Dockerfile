FROM python:3.11-slim
ENV PYTHONUNBUFFERED=1 PIP_NO_CACHE_DIR=1
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
# 公式実装のエントリポイント（例）
CMD python -m jgrants_mcp_server.core --port 8000
