# Gunakan gambar Python resmi yang ringan
FROM python:3.9-slim

# Set environment variables
ENV PYTHONUNBUFFERED True

# Atur direktori kerja di dalam kontainer
WORKDIR /app

# Copy file requirements.txt ke dalam kontainer
COPY requirements.txt .

# Install dependencies
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

# Copy seluruh isi folder 'final_model' ke dalam kontainer di direktori '/app'
COPY Dataset/ /app
COPY Final_Model/ /app

# CMD untuk menjalankan aplikasi Flask
CMD ["python", "app.py"]
