# Basis-Image mit Python
FROM python:3.9-slim

# Setze das Arbeitsverzeichnis
WORKDIR /app

# Installiere Flask
RUN pip install flask

# Kopiere den Code ins Image
COPY app.py /app/
COPY static /app/static/

# Exponiere Port 8080 (Cloud Run nutzt diesen standardmäßig)
EXPOSE 8080

# Starte den Flask-Server
CMD ["python", "app.py"]