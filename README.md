# Projeto SQL Server — PIB e População dos Municípios Brasileiros

## 📌 Sobre o projeto

Projeto prático de Banco de Dados desenvolvido durante meus estudos, utilizando **SQL Server** e **Python** para trabalhar com dados de **PIB e população dos municípios brasileiros**.

O projeto simula um fluxo de dados completo, desde a **extração dos dados através da API SIDRA/IBGE**, passando pelas etapas de **importação, staging e ETL**, até a organização dos dados em um **Data Warehouse** e realização de consultas analíticas.

##  Objetivos

- Praticar SQL Server em um projeto baseado em dados reais;
- Trabalhar com criação e relacionamento de tabelas;
- Desenvolver processos de ETL;
- Utilizar Python para extração de dados;
- Trabalhar com dados de PIB e população;
- Criar consultas analíticas;
- Calcular indicadores como PIB per capita;
- Praticar organização e estruturação de um projeto de Banco de Dados;
- Desenvolver um projeto para portfólio.

## Tecnologias utilizadas

- **SQL Server**
- **SQL Server Management Studio (SSMS)**
- **Python**
- **Requests**
- **API SIDRA / IBGE**
- **Git e GitHub**

## 🔄 Fluxo de dados

```text
API SIDRA / IBGE
       ↓
Python
       ↓
Datasets
       ↓
Importação
       ↓
Staging (STG)
       ↓
ETL
       ↓
Data Warehouse
       ↓
Views
       ↓
Queries e análises
```

##  Estrutura do Data Warehouse

O Data Warehouse foi organizado utilizando simplicidade para nomes mais diretos nas tabelas:

```text
Estados
Municipios
Tempo
PIB
População
```

As tabelas relacionadas às dimensões de município e tempo, permiti realizar análises por **município, UF e ano**.

## Principais análises realizadas

Entre as consultas desenvolvidas estão:

- Análise de PIB e população por município;
- Top 10 municípios com maior PIB em 2021;
- Top 10 municípios com maior população em 2021;
- População total por UF;
- PIB total por UF;
- PIB per capita por UF;
- Análise de municípios utilizando condições de PIB e população;
- Criação de uma view para facilitar consultas dos indicadores municipais.

##  Conteúdos praticados

### Banco de Dados

- Criação e alteração de tabelas;
- Chave Primária (`PRIMARY KEY`);
- Chave Estrangeira (`FOREIGN KEY`);
- `IDENTITY`;
- `NOT NULL`;
- `UNIQUE`;
- `DEFAULT`;
- `CHECK`;
- `INSERT`;
- `UPDATE`;
- `DELETE`;
- `SELECT`.

### Consultas SQL

- `WHERE`;
- `LIKE`;
- `BETWEEN`;
- `ORDER BY`;
- `GROUP BY`;
- `HAVING`;
- `INNER JOIN`;
- Funções de agregação;
- `SUM`;
- `COUNT`;
- `MIN`;
- `MAX`;
- `AVG`;
- `CASE`;
- `CAST`;
- `TRY_CAST`.

### ETL e análise de dados

- Importação de dados;
- Staging;
- Transformação de dados;
- Relacionamento entre dados de diferentes fontes;
- Validação e profiling;
- Carga no Data Warehouse;
- Views;
- Consultas analíticas.

## 📁 Estrutura do projeto

```text
projeto-sql-server/
│
├── database/
├── dw/
├── etl/
├── extract/
├── import/
├── indexes/
├── procedures/
├── profiling/
├── queries/
├── tests/
├── views/
│
├── Datasets/
├── README.md
└── Explicacao_Pastas.txt
```

## Projeto em desenvolvimento

Este projeto continua em desenvolvimento e será utilizado para aprofundar conhecimentos em **Banco de Dados, SQL Server, ETL e análise de dados**, adicionando novas consultas, melhorias na estrutura e novas etapas ao longo dos estudos.
