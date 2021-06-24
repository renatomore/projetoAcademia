CREATE DATABASE DB_PROJETO_ACADEMIA;

CREATE TABLE [DB_PROJETO_ACADEMIA].[dbo].[TB_PESSOAS]
(
 [vl_cpf]         bigint NOT NULL ,
 [nm_nome]        varchar(150) NOT NULL ,
 [nm_email]       varchar(150) NOT NULL ,
 [vl_celular]     bigint NOT NULL ,
 [vl_cep]         bigint NOT NULL ,
 [nm_logradouro]  varchar(150) NOT NULL ,
 [vl_numero_casa] int NOT NULL ,
 [nm_complemento] varchar(20) NOT NULL ,
 [nm_cidade]      varchar(150) NOT NULL ,
 [nm_estado]      varchar(2) NOT NULL ,
 [nm_bairro]      varchar(150) NOT NULL ,


 CONSTRAINT [PK_tb_pessoas] PRIMARY KEY CLUSTERED ([vl_cpf] ASC)
);

CREATE TABLE [DB_PROJETO_ACADEMIA].[dbo].[TB_PLANOS]
(
 [cd_plano] int IDENTITY(1, 1),
 [nm_plano] varchar(45) NOT NULL ,
 [vl_plano] money NOT NULL ,


 CONSTRAINT [PK_tb_planos] PRIMARY KEY CLUSTERED ([cd_plano] ASC)
);
GO

CREATE TABLE [DB_PROJETO_ACADEMIA].[dbo].[TB_ALUNOS]
(
 [matricula]  int IDENTITY(1, 1),
 [bool_ativo] bit NOT NULL ,
 [vl_cpf]     bigint NOT NULL ,
 [cd_plano]   int NOT NULL ,


 CONSTRAINT [PK_tb_alunos] PRIMARY KEY CLUSTERED ([matricula] ASC),
 CONSTRAINT [FK_19] FOREIGN KEY ([vl_cpf])  REFERENCES [DB_PROJETO_ACADEMIA].[dbo].[TB_PESSOAS]([vl_cpf]),
 CONSTRAINT [FK_27] FOREIGN KEY ([cd_plano])  REFERENCES [DB_PROJETO_ACADEMIA].[dbo].[TB_PLANOS]([cd_plano])
);
GO


CREATE NONCLUSTERED INDEX [fkIdx_20] ON [DB_PROJETO_ACADEMIA].[dbo].[TB_ALUNOS] 
 (
  [vl_cpf] ASC
 )

GO

CREATE NONCLUSTERED INDEX [fkIdx_28] ON [DB_PROJETO_ACADEMIA].[dbo].[TB_ALUNOS] 
 (
  [cd_plano] ASC
 )

CREATE TABLE [DB_PROJETO_ACADEMIA].[dbo].[TB_COBRANCA]
(
 [cd_cobranca]   bigint IDENTITY(1, 1),
 [dt_vencimento] date NOT NULL ,
 [vl_cobranca]   money NOT NULL ,
 [cd_plano]      int NOT NULL ,
 [matricula]     int NOT NULL ,


 CONSTRAINT [PK_tb_cobranca] PRIMARY KEY CLUSTERED ([cd_cobranca] ASC),
 CONSTRAINT [FK_35] FOREIGN KEY ([cd_plano])  REFERENCES [DB_PROJETO_ACADEMIA].[dbo].[TB_PLANOS]([cd_plano]),
 CONSTRAINT [FK_38] FOREIGN KEY ([matricula])  REFERENCES [DB_PROJETO_ACADEMIA].[dbo].[TB_ALUNOS]([matricula])
);
GO


CREATE NONCLUSTERED INDEX [fkIdx_36] ON [DB_PROJETO_ACADEMIA].[dbo].[TB_COBRANCA] 
 (
  [cd_plano] ASC
 )

GO

CREATE NONCLUSTERED INDEX [fkIdx_39] ON [DB_PROJETO_ACADEMIA].[dbo].[TB_COBRANCA] 
 (
  [matricula] ASC
 )

GO

CREATE TABLE [DB_PROJETO_ACADEMIA].[dbo].[TB_PAGAMENTOS]
(
 [cd_pagamento]  bigint IDENTITY(1, 1),
 [dt_pagamento]  date NOT NULL ,
 [dt_vencimento] date NOT NULL ,
 [vl_pagamento]  money NOT NULL ,
 [matricula]     int NOT NULL ,
 [cd_cobranca]   bigint NOT NULL ,


 CONSTRAINT [PK_tb_pagamentos] PRIMARY KEY CLUSTERED ([cd_pagamento] ASC),
 CONSTRAINT [FK_48] FOREIGN KEY ([matricula])  REFERENCES [DB_PROJETO_ACADEMIA].[dbo].[TB_ALUNOS]([matricula]),
 CONSTRAINT [FK_51] FOREIGN KEY ([cd_cobranca])  REFERENCES [DB_PROJETO_ACADEMIA].[dbo].[TB_COBRANCA]([cd_cobranca])
);
GO


CREATE NONCLUSTERED INDEX [fkIdx_49] ON [DB_PROJETO_ACADEMIA].[dbo].[TB_PAGAMENTOS] 
 (
  [matricula] ASC
 )

GO

CREATE NONCLUSTERED INDEX [fkIdx_52] ON [DB_PROJETO_ACADEMIA].[dbo].[TB_PAGAMENTOS] 
 (
  [cd_cobranca] ASC
 )

GO

CREATE TABLE [DB_PROJETO_ACADEMIA].[dbo].[TB_EXERCICIOS]
(
 [cd_exercicio] int IDENTITY(1, 1),
 [nm_exercicio] varchar(100) NOT NULL ,


 CONSTRAINT [PK_tb_exercicios] PRIMARY KEY CLUSTERED ([cd_exercicio] ASC)
);
GO

CREATE TABLE [DB_PROJETO_ACADEMIA].[dbo].[TB_EXERCICIOS_ALUNO]
(
 [cd_exercicio] int NOT NULL ,
 [matricula]    int NOT NULL ,


 CONSTRAINT [PK_tb_exercicios aluno] PRIMARY KEY CLUSTERED ([cd_exercicio] ASC, [matricula] ASC),
 CONSTRAINT [FK_59] FOREIGN KEY ([cd_exercicio])  REFERENCES [DB_PROJETO_ACADEMIA].[dbo].[TB_EXERCICIOS]([cd_exercicio]),
 CONSTRAINT [FK_63] FOREIGN KEY ([matricula])  REFERENCES [DB_PROJETO_ACADEMIA].[dbo].[TB_ALUNOS]([matricula])
);
GO


CREATE NONCLUSTERED INDEX [fkIdx_60] ON [DB_PROJETO_ACADEMIA].[dbo].[TB_EXERCICIOS_ALUNO] 
 (
  [cd_exercicio] ASC
 )

GO

CREATE NONCLUSTERED INDEX [fkIdx_64] ON [DB_PROJETO_ACADEMIA].[dbo].[TB_EXERCICIOS_ALUNO] 
 (
  [matricula] ASC
 )

GO

CREATE TABLE [DB_PROJETO_ACADEMIA].[dbo].[TB_CARGOS]
(
 [cd_cargo] int IDENTITY(1, 1),
 [nm_cargo] varchar(100) NOT NULL ,


 CONSTRAINT [PK_tb_cargos] PRIMARY KEY CLUSTERED ([cd_cargo] ASC)
);
GO

CREATE TABLE [DB_PROJETO_ACADEMIA].[dbo].[TB_FUNCIONARIOS]
(
 [rga]      int NOT NULL ,
 [vl_cpf]   bigint NOT NULL ,
 [cd_cargo] int NOT NULL ,


 CONSTRAINT [PK_tb_funcionarios] PRIMARY KEY CLUSTERED ([rga] ASC),
 CONSTRAINT [FK_69] FOREIGN KEY ([vl_cpf])  REFERENCES [DB_PROJETO_ACADEMIA].[dbo].[TB_PESSOAS]([vl_cpf]),
 CONSTRAINT [FK_77] FOREIGN KEY ([cd_cargo])  REFERENCES [DB_PROJETO_ACADEMIA].[dbo].[TB_CARGOS]([cd_cargo])
);
GO


CREATE NONCLUSTERED INDEX [fkIdx_70] ON [DB_PROJETO_ACADEMIA].[dbo].[TB_FUNCIONARIOS] 
 (
  [vl_cpf] ASC
 )

GO

CREATE NONCLUSTERED INDEX [fkIdx_78] ON [DB_PROJETO_ACADEMIA].[dbo].[TB_FUNCIONARIOS] 
 (
  [cd_cargo] ASC
 )

GO

CREATE TABLE [DB_PROJETO_ACADEMIA].[dbo].[TB_PONTO_FUNCIONARIOS]
(
 [rga]        int NOT NULL ,
 [dt_horario] datetime NOT NULL ,


 CONSTRAINT [PK_tb_ponto_funcionarios] PRIMARY KEY CLUSTERED ([rga] ASC, [dt_horario] ASC),
 CONSTRAINT [FK_83] FOREIGN KEY ([rga])  REFERENCES [DB_PROJETO_ACADEMIA].[dbo].[TB_FUNCIONARIOS]([rga])
);
GO


CREATE NONCLUSTERED INDEX [fkIdx_84] ON [DB_PROJETO_ACADEMIA].[dbo].[TB_PONTO_FUNCIONARIOS] 
 (
  [rga] ASC
 )

GO