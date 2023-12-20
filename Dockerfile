# Gunakan gambar Python resmi ringan.
FROM python:3.9-slim

# Set statements agar pesan dan log muncul langsung di log.
ENV PYTHONUNBUFFERED True

# Salin kode lokal ke image kontainer.
ENV APP_HOME /app
WORKDIR $APP_HOME

COPY Dataset Dataset  
# Salin folder dataset ke dalam image
COPY Final_Model Final_Model  
# Salin folder final_model ke dalam image

COPY requirements.txt .  
# Salin file requirements.txt ke dalam image

RUN pip install -r requirements.txt  
# Install dependensi

EXPOSE 8000

CMD ["python", "Final_Model/app.py"]  
# Jalankan aplikasi