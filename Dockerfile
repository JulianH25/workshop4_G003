FROM python:3.12-alpine

# Instalar uv directamente
RUN pip install --no-cache-dir uv

WORKDIR /app

# Copiar requirements.txt
COPY docker_with_problems/src/requirements.txt /app/requirements.txt

# Instalar dependencias en el sistema
RUN uv pip install --system -r requirements.txt

# Copiar el código fuente
COPY docker_with_problems/src /app/src

CMD ["uv", "run", "python", "src/app.py"]







