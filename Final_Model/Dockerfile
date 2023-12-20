# Gunakan gambar Python resmi ringan.
FROM python:3.9-slim

# Set statements agar pesan dan log muncul langsung di log.
ENV PYTHONUNBUFFERED True

# Salin kode lokal ke image kontainer.
ENV APP_HOME /app
WORKDIR $APP_HOME
COPY . ./

# Install dependencies untuk produksi.
RUN pip install --no-cache-dir -r requirements.txt

# Set env variables for Cloud Run
ENV PORT 8080
ENV HOST 0.0.0.0

# Open port 5000
EXPOSE 8080:8080

CMD ["gunicorn", "-b", "0.0.0.0:8080", "app:app"]
