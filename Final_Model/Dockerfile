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

# Jalankan layanan web saat kontainer dijalankan. Gunicorn digunakan dengan satu proses pekerja dan delapan thread.
CMD exec gunicorn --bind :$PORT --workers 1 --threads 8 --timeout 0 final_model.app:app
