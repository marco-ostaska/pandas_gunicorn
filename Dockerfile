# Use a imagem oficial do Python como imagem base
FROM python:latest

# Instale build-essential e atualize o gcc, depois limpe o cache
RUN apt-get update && apt-get install -y build-essential \
    && apt-get upgrade -y gcc \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Atualize o pip
RUN pip install --upgrade pip

# Copie o arquivo requirements.txt para o contêiner
COPY requirements.txt /requirements.txt

# Instale as dependências do Python e limpe o cache do pip
RUN pip install -r /requirements.txt \
    && rm -rf /root/.cache/pip

# Defina o diretório de trabalho
WORKDIR /application

# Exponha a porta 8000
EXPOSE 8000

# Montar o volume

# O comando para iniciar a aplicação (ajuste conforme necessário)
CMD ["gunicorn"]
