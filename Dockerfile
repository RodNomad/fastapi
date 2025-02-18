# Dockerfile
FROM python:3.9-slim

# Definindo o diretório de trabalho
WORKDIR /app

# Copiando os arquivos de requisitos e instalando as dependências
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copiando o código da aplicação
COPY . .

# Expondo a porta que o Uvicorn usará
EXPOSE 8090

# Comando para rodar a aplicação
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8090", "--reload"]
