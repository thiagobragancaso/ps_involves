CREATE TABLE dw_involves.dim_calendario (
  DATA date,
  MES int,
  ANO int,
  DIA_MES int,
  DIA_SEMANA int,
  NOME_DIA_SEMANA varchar(20),
  NOME_MES varchar(20),
  MES_ANO varchar(20),
  TRIMESTRE int,
  SEMESTRE int,
  SK_DIM_CALENDARIO int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (SK_DIM_CALENDARIO)
  );

CREATE TABLE dw_involves.dim_linha_produto (
  SK_DIM_LINHA_PRODUTO int NOT NULL,
  VS_DIM_LINHA_PRODUTO int,
  DT_VS_INICIO datetime,
  DT_VS_FIM datetime,
  ID_LINHA_PRODUTO int,
  NOME_LINHA_PRODUTO varchar(20),
  MARCA_LINHA_PRODUTO varchar(20),
  PRIMARY KEY (SK_DIM_LINHA_PRODUTO),
  KEY idx_DIM_LINHA_PRODUTO_lookup (ID_LINHA_PRODUTO),
  KEY idx_DIM_LINHA_PRODUTO_tk (SK_DIM_LINHA_PRODUTO)
);

CREATE TABLE dw_involves.dim_pdv (
  SK_DIM_PDV int NOT NULL,
  VS_DIM_PDV int,
  DT_VS_INICIO datetime,
  DT_VS_FIM datetime,
  ID_PONTO_VENDA int,
  NOME_PONTO_VENDA varchar(20),
  PERFIL_PONTO_VENDA varchar(20),
  PRIMARY KEY (SK_DIM_PDV),
  KEY idx_DIM_PDV_lookup (ID_PONTO_VENDA),
  KEY idx_DIM_PDV_tk (SK_DIM_PDV)
);

CREATE TABLE dw_involves.ft_disponibilidade (
  SK_DIM_PDV int,
  SK_DIM_LINHA_PRODUTO int,
  SK_DIM_CALENDARIO int,
  QTD_PRESENCA int,
  PRIMARY KEY (SK_DIM_PDV, SK_DIM_LINHA_PRODUTO, SK_DIM_CALENDARIO)
);

CREATE TABLE dw_involves.ft_disponibilidade_agg (
  SK_DIM_PDV int,
  SK_DIM_CALENDARIO int,
  QTD_PRESENCA int,
  PRIMARY KEY (SK_DIM_PDV, SK_DIM_CALENDARIO)
);

CREATE TABLE dw_involves.ft_ponto_extra (
  SK_DIM_PDV int,
  SK_DIM_LINHA_PRODUTO int,
  SK_DIM_CALENDARIO int,
  SOMA_PONTO_EXTRA int,
  PRIMARY KEY (SK_DIM_PDV, SK_DIM_LINHA_PRODUTO, SK_DIM_CALENDARIO)
);

CREATE TABLE dw_involves.ft_ponto_extra_agg (
  SK_DIM_PDV int,
  SK_DIM_CALENDARIO int,
  SOMA_PONTO_EXTRA int,
  PRIMARY KEY (SK_DIM_PDV, SK_DIM_CALENDARIO)
);