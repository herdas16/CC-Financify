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

EXPOSE 8000

CMD ["gunicorn", "--bind", :8000, "--workers", "1", "--threads", "8", "--timeout", "0", "app:app"]
# Jalankan aplikasi