# 🌬️ VigiAr — Sistema Preditivo de Crises Respiratórias

> Projeto acadêmico do grupo **DataSquad** (FIAP — Data Science) para apoiar a gestão de crises respiratórias no Sistema Único de Saúde (SUS) do estado de São Paulo.

---

## 📌 Sobre o projeto

O **VigiAr** é uma iniciativa de Data Science voltada à **previsão de surtos respiratórios** (como picos de pneumonia, infecções e síndromes gripais) no município de São Paulo, com base em dados públicos de saúde, ambientais e climáticos.

O objetivo é dar aos gestores de saúde do SUS — como o CROSS/SP — uma ferramenta de **antecipação**, permitindo planejar leitos, equipes e insumos antes que uma crise se instale, em vez de reagir depois que ela já começou.

O projeto está em desenvolvimento como parte das entregas de Sprint da FIAP e integra técnicas de engenharia de dados, estatística e machine learning.

---

## 🎯 Objetivos

- Prever a ocorrência de **surtos respiratórios** com pelo menos 1 mês de antecedência
- Cruzar dados de internações (SIH-SUS), notificações de síndrome respiratória (SIVEP-Gripe) e clima (INMET)
- Entregar uma visão prática e acionável para gestores de saúde, sem exigir conhecimento técnico de quem for usar

---

## 🗂️ Estrutura do repositório

```
VigiAR---DataSquad/
├── Dados/          → Bases de dados utilizadas no projeto (dados leves e amostras)
├── Docs/           → Documentação das sprints: apresentações, evidências, scripts SQL, notebooks
├── ETL/            → Scripts de extração, tratamento e carga dos dados (pipeline ETL)
├── .gitignore      → Lista de arquivos pesados que não são versionados (ver seção "Dados" abaixo)
└── README.md       → Este arquivo
```

---

## 🛠️ Tecnologias utilizadas

| Categoria | Ferramentas |
|---|---|
| Linguagem | Python |
| Dados & ETL | pysus, Pandas |
| Machine Learning | Random Forest (classificação de surto) |
| Cloud | Oracle Cloud Infrastructure (OCI) — Object Storage, Data Integration |
| Banco de dados | Oracle Autonomous Database (ADB) |
| Visualização (planejado) | Oracle APEX, Select AI |
| Fontes de dados | SIH-SUS, SIVEP-Gripe, CETESB, INMET, CNES, IBGE |

---

## 📊 Fontes de dados

O projeto utiliza exclusivamente **dados públicos**, provenientes de:

- **SIH-SUS** — Sistema de Informações Hospitalares do SUS (internações)
- **SIVEP-Gripe** — Sistema de Vigilância de Síndrome Respiratória Aguda Grave
- **CNES** — Cadastro Nacional de Estabelecimentos de Saúde (leitos e equipes)
- **INMET** — Dados climáticos
- **IBGE** — População dos municípios

> ⚠️ **Sobre os dados brutos:** alguns arquivos de origem (como os microdados completos do CNES e do SIVEP-Gripe) ultrapassam o limite de tamanho aceito pelo GitHub e por isso **não estão incluídos neste repositório**. Eles podem ser baixados diretamente das fontes oficiais listadas acima, ou gerados novamente a partir dos scripts disponíveis na pasta `ETL/`.

---

## 🚀 Como executar

1. Clone este repositório:
   ```bash
   git clone https://github.com/Halen-Zhang/VigiAR---DataSquad.git
   ```
2. Instale as dependências do projeto (Python 3.x recomendado):
   ```bash
   pip install pandas pysus scikit-learn
   ```
3. Execute os scripts da pasta `ETL/` para gerar ou atualizar as bases de dados
4. Os notebooks e evidências de análise estão disponíveis na pasta `Docs/`

---

## 🧭 Andamento do projeto

- ✅ **Sprint 1** — Concepção da ideia, levantamento de dados e viabilidade
- ✅ **Sprint 2** — Arquitetura de dados na Oracle Cloud, dashboards exploratórios
- ✅ **Sprint 3** — Modelo preditivo com Random Forest, ETL refinado, redução de escopo para um MVP mais objetivo
- ⏳ **Próximos passos** — Visualização final via Oracle APEX / Select AI

---

## 👥 Equipe — DataSquad

| Integrante |
|---|
| Halen Zhang |
| Igor Soares |
| João Marcos Borba |
| João Ricardo Travaglin |
| Vitor Franco Benvenuto |

---

## 🎓 Contexto acadêmico

Projeto desenvolvido para a disciplina de Data Science da **FIAP**, como parte do desafio **Challenge 2026**, com apresentação para a Oracle.
