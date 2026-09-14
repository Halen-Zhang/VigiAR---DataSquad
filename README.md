<div align="center">

# 🌬️ VigiAr
### Sistema Preditivo de Crises Respiratórias para o SUS

*Antecipando surtos respiratórios em São Paulo com dados públicos e Machine Learning*

[![Status](https://img.shields.io/badge/status-em%20desenvolvimento-yellow)]()
[![Python](https://img.shields.io/badge/python-3.x-blue)]()
[![Oracle Cloud](https://img.shields.io/badge/cloud-Oracle%20OCI-red)]()
[![FIAP](https://img.shields.io/badge/FIAP-Data%20Science-orange)]()

**Grupo DataSquad** — Global Solution 2026.1

</div>

---

## 📑 Sumário

- [Sobre o projeto](#-sobre-o-projeto)
- [Objetivos](#-objetivos)
- [Estrutura do repositório](#️-estrutura-do-repositório)
- [Tecnologias utilizadas](#️-tecnologias-utilizadas)
- [Fontes de dados](#-fontes-de-dados)
- [Como executar](#-como-executar)
- [Andamento do projeto](#-andamento-do-projeto)
- [Equipe](#-equipe--datasquad)
- [Contexto acadêmico](#-contexto-acadêmico)

---

## 📌 Sobre o projeto

O **VigiAr** é uma solução de Data Science voltada à **previsão de surtos respiratórios** — como picos de pneumonia, infecções e Síndrome Respiratória Aguda Grave (SRAG) — no município de São Paulo.

A proposta nasce de um problema concreto da gestão pública de saúde: hospitais e unidades do SUS costumam **reagir** a uma crise depois que ela já começou, quando o ideal seria **se antecipar** a ela. O VigiAr cruza dados de internações, notificações epidemiológicas, qualidade do ar e clima para gerar previsões que ajudem gestores a planejar leitos, equipes e insumos com antecedência.

## 🎯 Objetivos

- Prever a ocorrência de **surtos respiratórios** com semanas de antecedência, por regional de saúde
- Cruzar múltiplas fontes públicas de dados (saúde, ambiente e clima) num único pipeline
- Entregar uma ferramenta prática e acionável para gestores do SUS, sem exigir conhecimento técnico de quem for usar

## 🗂️ Estrutura do repositório

```
VigiAR---DataSquad/
│
├── Dados/
│   ├── Dados-2024/         → Bases de dados do ano de 2024
│   └── Dados-2025/         → Bases de dados do ano de 2025
│
├── Docs/
│   ├── VigiAr_Sprint1/     → Concepção da ideia e viabilidade
│   ├── VigiAr_Sprint2/     → Arquitetura de dados na Oracle Cloud
│   ├── VigiAr_Sprint3/     → Modelagem estatística e ML
│   └── VigiAr_Sprint4/     → Entrega mais recente
│
├── ETL/
│   ├── ETL-2024/           → Pipeline de extração e tratamento (2024)
│   └── ETL-2025/           → Pipeline de extração e tratamento (2025)
│
├── .gitignore               → Arquivos pesados não versionados (ver seção "Fontes de dados")
└── README.md                 → Este arquivo
```

## 🛠️ Tecnologias utilizadas

<table>
<tr><th>Categoria</th><th>Ferramentas</th></tr>
<tr><td>Linguagem</td><td>Python</td></tr>
<tr><td>Dados &amp; ETL</td><td>pysus, Pandas</td></tr>
<tr><td>Machine Learning</td><td>Random Forest (classificação de surto), granularidade por regional de saúde (28 GVEs)</td></tr>
<tr><td>Cloud</td><td>Oracle Cloud Infrastructure (OCI) — Object Storage, Data Integration</td></tr>
<tr><td>Banco de dados</td><td>Oracle Autonomous Database (ADB)</td></tr>
<tr><td>Visualização (planejado)</td><td>Oracle APEX, Select AI</td></tr>
<tr><td>Fontes de dados</td><td>SIH-SUS, SIVEP-Gripe, CETESB, INMET, CNES, IBGE</td></tr>
</table>

## 📊 Fontes de dados

O projeto utiliza exclusivamente **dados públicos**, provenientes de:

| Fonte | O que fornece |
|---|---|
| **SIVEP-Gripe** | Notificações de Síndrome Respiratória Aguda Grave (SRAG) |
| **SIH-SUS** | Internações hospitalares pelo SUS |
| **CNES** | Cadastro de estabelecimentos e leitos de saúde |
| **CETESB** | Qualidade do ar no estado de São Paulo |
| **INMET** | Dados climáticos |
| **IBGE** | População dos municípios |

A base já processada cobre os anos de **2024 e 2025**, agregada por município e semana epidemiológica, com granularidade de **regional de saúde** (28 GVEs) — escolhida após testes que mostraram desempenho superior a uma divisão por macrorregiões.

> ⚠️ **Sobre os dados brutos não incluídos:** dois arquivos de origem ultrapassam o limite de tamanho aceito pelo GitHub e por isso não estão neste repositório — `Srag_2024.csv` (~300 MB) e `cnes_estabelecimentos_2025.json` (~640 MB). Eles podem ser baixados diretamente das fontes oficiais (SIVEP-Gripe e CNES) ou regerados a partir dos scripts em `ETL/`.

## 🚀 Como executar

```bash
# 1. Clone o repositório
git clone https://github.com/Halen-Zhang/VigiAR---DataSquad.git

# 2. Instale as dependências
pip install pandas pysus scikit-learn

# 3. Execute os pipelines de ETL (2024 e 2025) para gerar/atualizar as bases
python ETL/ETL-2024/etl_vigiar_srag_2024.py
python ETL/ETL-2025/etl_vigiar_srag_2025.py
```

Os notebooks de análise e evidências de cada sprint estão disponíveis na pasta `Docs/`.

## 🧭 Andamento do projeto

| Sprint | Entrega | Status |
|---|---|---|
| Sprint 1 | Concepção da ideia, levantamento de dados e viabilidade | ✅ Concluída |
| Sprint 2 | Arquitetura de dados na Oracle Cloud, dashboards exploratórios | ✅ Concluída |
| Sprint 3 | Modelagem estatística e primeiras versões do ML | ✅ Concluída |
| Sprint 4 | Ampliação da base (2024 + 2025), reformulação do ETL e do modelo | ✅ Concluída |
| Próximos passos | Visualização final via Oracle APEX / Select AI | ⏳ Em andamento |

## 👥 Equipe — DataSquad

| Integrante |
|---|
| Halen Zhang |
| Igor Soares |
| João Marcos Borba |
| João Ricardo Travaglin |
| Vitor Franco Benvenuto |

## 🎓 Contexto acadêmico

Projeto desenvolvido para a disciplina de Data Science da **FIAP**, como parte do desafio **Global Solution 2026.1**, com apresentação para a Oracle.

---

<div align="center">
<sub>Desenvolvido pelo grupo DataSquad • FIAP 2026</sub>
</div>
