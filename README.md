# SQL Server com Docker

Este repositório contém os arquivos necessários para configurar e executar um ambiente com SQL Server utilizando Docker.

---

## 📋 Pré-requisitos

- [Docker](https://www.docker.com/get-started)
- [Docker Compose](https://docs.docker.com/compose/)

---

## 🛠️ Configuração do Ambiente

### 1. Clone o Repositório
```bash
git clone https://github.com/fasmedeiros/docker.git
cd docker
```

### 2. Configure as Variáveis de Ambiente
Certifique-se de ajustar os valores das variáveis no `docker-compose.yml`, como a senha do usuário `sa` (administrador do SQL Server).

```yaml
environment:
  SA_PASSWORD: YourStrong@Password
  ACCEPT_EULA: Y
  MSSQL_PID: Express
```

> **Nota:** Substitua `YourStrong@Password` por uma senha segura, seguindo as políticas do SQL Server (mínimo de 8 caracteres, incluindo letras maiúsculas, minúsculas, números e caracteres especiais).

---

## ▶️ Executando o Ambiente

### 1. Construa a Imagem Docker
```bash
docker-compose build
```

### 2. Inicie o Contêiner
```bash
docker-compose up -d
```

### 3. Verifique se o Contêiner Está Rodando
```bash
docker ps
```

Você verá algo semelhante a:
```
CONTAINER ID   IMAGE             COMMAND                  ...   PORTS
123abc456def   sqlserver-image   "/opt/mssql/bin/sqls…"   ...   0.0.0.0:1433->1433/tcp
```

---

## 🧪 Testando a Conexão com o Banco de Dados

Você pode usar qualquer ferramenta cliente SQL, como:

- [SQL Server Management Studio (SSMS)](https://learn.microsoft.com/pt-br/sql/ssms/download-sql-server-management-studio-ssms)
- [Azure Data Studio](https://learn.microsoft.com/pt-br/sql/azure-data-studio/download)

**Configurações para Conexão:**
- **Servidor:** `localhost,1433`
- **Usuário:** `sa`
- **Senha:** Conforme configurada no `docker-compose.yml`

---

## 📂 Estrutura do Repositório

```
.
├── Dockerfile                # Define a imagem do SQL Server
├── docker-compose.yml        # Orquestração do ambiente Docker
├── scripts/                  # Scripts SQL de inicialização (opcional)
│   └── init-database.sql     # Exemplo de script para criar um banco e tabelas
├── .github/
│   └── workflows/
│       └── docker.yml        # CI/CD com GitHub Actions (opcional)
└── README.md                 # Documentação do projeto
```

---

## 🛡️ Segurança

- Nunca utilize senhas padrão em produção.
- Certifique-se de limitar o acesso às portas do contêiner em ambientes produtivos.

---

## 📄 Licença

Este projeto está licenciado sob a licença MIT - veja o arquivo [LICENSE](LICENSE) para detalhes.

---

## 🤝 Contribuições

Contribuições são bem-vindas! Siga os passos abaixo para colaborar:

1. Faça um fork do projeto.
2. Crie um branch para sua feature:
   ```bash
   git checkout -b minha-feature
   ```
3. Faça commit das suas mudanças:
   ```bash
   git commit -m "Adiciona minha nova feature"
   ```
4. Envie o branch:
   ```bash
   git push origin minha-feature
   ```
5. Abra um pull request.

---

## 🧑‍💻 Autor

Criado por [Fabrício de Medeiros](https://github.com/fasmedeiros).
