CREATE TABLE IF NOT EXISTS Cliente (
	CPF int,
	Nome varchar (50),
	Telefone varchar (15),
	CONSTRAINT Cliente_pkey PRIMARY KEY (CPF) 
);

CREATE TABLE IF NOT EXISTS Carros (
	Marca varchar (20),
	Modelo varchar (20),
	Ano int,
	Valor varchar(20),
	idcarro int,
	qnt_carros int,
	CONSTRAINT Carros_pkey PRIMARY KEY (idcarro)
);

CREATE TABLE IF NOT EXISTS Reserva (
	Data_negocio date,
	Tipo_pagamento varchar (20),
	id_reserva serial,
	CPF int,
	idcarro int,
	CONSTRAINT Compra_Venda_pkey PRIMARY KEY (id_reserva),
	CONSTRAINT Compra_Venda_fkey1 FOREIGN KEY (CPF)
		REFERENCES Cliente (CPF),
	CONSTRAINT Compra_Vendafkey2 FOREIGN KEY (idcarro)
		REFERENCES Carros (idcarro)
);