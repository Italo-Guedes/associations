# Usa a imagem base do Ruby com a versão especificada
FROM ruby:3.2.2

# Define o diretório de trabalho no contêiner
WORKDIR /app

# Copia os arquivos do projeto para o contêiner
COPY . .

# Instala as dependências do sistema necessárias para a aplicação Rails
RUN apt-get update -qq && apt-get install -y nodejs npm yarn

# Instala as gems especificadas no Gemfile.lock
RUN gem install bundler && bundle install

# Exponha a porta 3000 para acessar o servidor da aplicação
EXPOSE 3000

# Comando para inicializar o servidor da aplicação Rails
CMD ["rails", "server", "-b", "0.0.0.0"]
