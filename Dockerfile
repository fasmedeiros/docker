FROM mcr.microsoft.com/mssql/server:2022-latest

# Define as variáveis de ambiente necessárias para configurar o SQL Server.
ENV ACCEPT_EULA=Y
ENV SA_PASSWORD=YourStrong@Password
ENV MSSQL_PID=Express

# Define a porta padrão usada pelo SQL Server.
EXPOSE 1433

# Copia scripts para inicialização, se necessário (opcional).
COPY ./scripts /usr/src/app

# Configuração para rodar o SQL Server.
CMD ["/opt/mssql/bin/sqlservr"]
