FROM python:3.11-slim
ENV PYTHONUNBUFFERED=1 PIP_NO_CACHE_DIR=1
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
# 公式実装のエントリポイント（例）
# ★ 0.0.0.0 で、Railway が渡す PORT を使う
CMD python -m jgrants_mcp_server.core --host 0.0.0.0 --port ${PORT:-8000}
