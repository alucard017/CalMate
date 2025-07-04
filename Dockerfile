FROM python:3.10-slim

WORKDIR /app

# Install requirements
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy app code
COPY backend/ backend/
COPY frontend/ frontend/
COPY ./credentials.json ./credentials.json

# Expose both ports
EXPOSE 8000
EXPOSE 8501

# Run both apps in parallel
CMD ["bash", "-c", "uvicorn backend.main:app --host 0.0.0.0 --port 8000 & streamlit run frontend/app.py --server.port=8501 --server.address=0.0.0.0"]
