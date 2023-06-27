# PDZ Zupper 2023!

Descrição do projeto:
-
Projeto feito em Java para demonstrar a integração entre algumas tecnologias recentes como:

- Spring Boot: Bean Validation, Spring Security, Caching
- Banco de Dados: SQL(MySQL) e NoSQL(MongoDB)
- Docker + Docker-Compose
- JWT, OAuth2.0, OpenAPI, JWT
- IAM: Keycloak
- OpenAPI: Swagger
- Métricas: Spring Boot Admin, Prometheus, Micrometer, Grafana
- Insomnia para as requests

Descrição dos arquivos:
- 
- docker-compose.yml -> Contém os dados para criação dos containers Docker necessários para o projeto.
- Insomnia.json -> Contém as requests para importação no insomnia.
- keycloak.sql -> Contém os dados do Keycloak para importação no MySQL.
- produto.json -> Contém os dados do produto para importação no MongoDB.
- realm-export.json -> Contém os dados do Keycloak para importação no Keycloak.

Portas e logins dos serviços:
-
| Serviço       | Porta | Login    | Senha    |
|---------------|-------|----------|----------|
| produto       | 8084  | -        | -        |
| mongodb       | 27017 | root     | root     |
| mongo-express | 8081  | root     | root     |
| mysql         | 3306  | keycloak | password |
| phpmyadmin    | 8090  | keycloak | password |
| keycloak      | 8083  | keycloak | password |
| prometheus    | 9090  | -        | -        |
| grafana       | 3000  | admin    | password |
| Spring Admin  | 8085  | admin    | password |

