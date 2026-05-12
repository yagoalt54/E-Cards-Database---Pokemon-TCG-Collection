# E-Cards-Database---Pokemon-TCG-Collection
Um banco de dados relacional simples para gerenciar coleções de cartas Pokémon (TCG - Trading Card Game), desenvolvido com foco em demonstrar boas práticas de modelagem de dados.

## 📋 Sobre o Projeto

Este projeto apresenta uma estrutura de banco de dados organizada para armazenar e gerenciar informações sobre cartas Pokémon, incluindo coleções, tipos, estágios de evolução e atributos específicos das cartas.

### Características

- ✅ Estrutura relacional normalizada com referências de chave estrangeira
- ✅ Dados de exemplo das coleções clássicas (Base Set e Jungle)
- ✅ Views SQL para consultas
- ✅ Scripts de migração e seeds
- ✅ Classificação completa de cartas (tipos, estágios, atributos)

## 🗄️ Estrutura do Banco de Dados

O banco de dados é composto pelas seguintes tabelas principais:

### Tabelas

| Tabela | Descrição |
|--------|-----------|
| `tbl_collections` | Coleções/sets de cartas com data de lançamento |
| `tbl_types` | Tipos de Pokémon (Grama, Fogo, Água, Elétrico, etc.) |
| `tbl_stages` | Estágios de evolução (Basic, Stage 1, Stage 2) |
| `tbl_cards` | Cartas com todos os atributos (HP, ataques, fraquezas, etc.) |

### Relacionamentos

```
tbl_cards (N) ──→ (1) tbl_collections
tbl_cards (N) ──→ (1) tbl_types
tbl_cards (N) ──→ (1) tbl_stages
```

### Views

- **vw_cards_full_info**: Consulta completa com informações combinadas de cartas, coleções, tipos e estágios

## 🛠️ Tecnologias Utilizadas

- **Banco de Dados**: MySQL/MySQL Workbench
- **Linguagem SQL**: SQL padrão
- **Automation**: PowerShell (scripts de migração)
- **Engine**: InnoDB

## 📁 Estrutura do Projeto

```
E-cards/
├── readme.md                          
├── prompts/
│   └── tcg-cards.txt                 # Prompts de referência do projeto
└── db_scripts/
    ├── Migration/
    │   └── to_migration.ps1          # Script PowerShell para executar migrações
    ├── seeds/
    │   ├── 01_Initial_seed.sql       # Dados iniciais (coleções, tipos, estágios)
    │   ├── 02_bulk_cards_01.sql      # Bulk insert de cartas - Lote 1
    │   ├── 03_bulk_cards_02.sql      # Bulk insert de cartas - Lote 2
    │   └── 04_bulk_cards_03.sql      # Bulk insert de cartas - Lote 3
    ├── tabelas/
    │   └── 01_Card_table.sql         # Criação das tabelas principais
    └── Views/
        └── 01_view_cards.sql         # Views para consultas otimizadas
```

## 🚀 Como Usar

### Pré-requisitos

- MySQL Server 8.0.46
- PowerShell
- Acesso ao terminal/linha de comando

### Instalação

#### 1. Clone o repositório
```bash
git clone https://github.com/yagoalt54/E-Cards-Database-Pokemon-TCG-Collection.git
```

2. **Execute os scripts na ordem:**
   - `db_scripts/tabelas/01_Card_table.sql` → Cria as tabelas
   - `db_scripts/seeds/01_Initial_seed.sql` → Dados iniciais
   - `db_scripts/seeds/02_bulk_cards_01.sql` → Cartas (Lote 1)
   - `db_scripts/seeds/03_bulk_cards_02.sql` → Cartas (Lote 2)
   - `db_scripts/seeds/04_bulk_cards_03.sql` → Cartas (Lote 3)
   - `db_scripts/Views/01_view_cards.sql` → Cria as views

   Para cada arquivo: **File → Open SQL Script** → Selecione o arquivo → **Execute** (⚡)

## 🎓 Créditos

Este projeto foi desenvolvido com base nas melhores práticas de modelagem de dados e foi orientado pela [**DIO (Digital Innovation One)**], uma plataforma de 

Desenvolvido por Yago Alves Toledo ( https://github.com/yagoalt54 )
