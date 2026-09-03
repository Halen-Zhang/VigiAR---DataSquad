/*
    FIAP - SMART SQL & RELATIONAL DATABASES
    SCRIPT DDL
    TURMA: 1TSCPF
    GRUPO: DATA SQUAD

    INTEGRANTES:
    Halen Zhang - RM569733
    Igor Soares Silva - RM569254
    Joao Marcos Borba Rodrigues Goncalves - RM571021
    Joao Ricardo Travaglin Abi Saber - RM573129
    Vitor Franco Benvenuto - RM573286

    TABELA: VIGIAR_DADOS_2025
*/

-- DROP TABLE VIGIAR_DADOS_2025 CASCADE CONSTRAINTS;

CREATE TABLE VIGIAR_DADOS_2025
(
    MUNICIPIO                   VARCHAR2(26 CHAR),
    MES                         VARCHAR2(7 CHAR),
    NO_DO_MES                   NUMBER(2,0),
    CASOS_SRAG                  NUMBER(4,0),
    CASOS_INFLUENZA             NUMBER(3,0),
    CASOS_COVID                 NUMBER(3,0),
    OBITOS                      NUMBER(3,0),
    CASOS_UTI                   NUMBER(3,0),
    CASOS_C_COMORBIDADE         NUMBER(3,0),
    CASOS_VACINADOS             NUMBER(3,0),
    CASOS_IDOSOS_60             NUMBER(3,0),
    TAXA_DE_OBITO               NUMBER(38,18),
    TAXA_DE_UTI                 NUMBER(38,18),
    TAXA_DE_COMORBIDADE         NUMBER(38,18),
    TAXA_DE_VACINADOS           NUMBER(38,18),
    TAXA_DE_IDOSOS              NUMBER(38,18),
    POPULACAO                   NUMBER(8,0),
    LEITOS_SUS_TOTAL            NUMBER(5,0),
    LEITOS_UTI_SUS              NUMBER(4,0),
    LEITOS_UTI_ADULTO           NUMBER(4,0),
    LEITOS_UTI_PEDIATRICO       NUMBER(4,0),
    LEITOS_UTI_NEONATAL         NUMBER(4,0),
    LEITOS_EXISTENTES_GERAL     NUMBER(6,0),
    PROPORCAO_DE_LEITOS_SUS     NUMBER(38,18),
    NO_DE_HOSPITAIS_SUS         NUMBER(2,0),
    LEITOS_P_1_000_HAB          NUMBER(38,18),
    TEMP_MEDIA_C                NUMBER(38,18),
    TEMP_ESTIMADA               VARCHAR2(5 CHAR),
    CASOS_P_10_MIL_HAB          NUMBER(38,18),
    CASOS_SRAG_MES_ANTERIOR     NUMBER(4,0),
    MEDIA_MOVEL_3M_CASOS        NUMBER(38,18),
    VARIACAO_DE_TEMP            NUMBER(38,18),
    VARIACAO_DE_CASOS           NUMBER(38,18)
);
