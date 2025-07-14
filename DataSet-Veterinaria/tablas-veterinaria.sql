CREATE TABLE "CATALOGO" (
	"id_catalogo"	INTEGER,
	"tipoProduct_id"	INTEGER NOT NULL,
	PRIMARY KEY("id_catalogo" AUTOINCREMENT),
	FOREIGN KEY ("tipoProduct_id") REFERENCES Tipo_Producto("id")
);

CREATE TABLE "AVES" (
	"id_Aves"	INTEGER,
	"Precio"	VARCHAR(20) NOT NULL,
	"Edades"	VARCHAR(20) NOT NULL,
	"Peso_Paquete"	VARCHAR(20) NOT NULL,
	"Marca"	VARCHAR(20) NOT NULL,
	PRIMARY KEY("id_Aves" AUTOINCREMENT)
);

CREATE TABLE "CONEJOS" (
	"id_Conejos"	INTEGER,
	"Precio"	VARCHAR(20) NOT NULL,
	"Edades"	VARCHAR(20) NOT NULL,
	"Peso_Paquete"	VARCHAR(20) NOT NULL,
	"Marca"	VARCHAR(20) NOT NULL,
	PRIMARY KEY("id_Conejos" AUTOINCREMENT)
);

CREATE TABLE "GATOS" (
	"id_Gatos"	INTEGER,
	"Precio"	VARCHAR(20) NOT NULL,
	"Edades"	VARCHAR(20) NOT NULL,
	"Peso_Paquete"	VARCHAR(20) NOT NULL,
	"Marca"	VARCHAR(20) NOT NULL,
	PRIMARY KEY("id_Gatos" AUTOINCREMENT)
);

CREATE TABLE "JUGUETES" (
	"id_Juguete"	INTEGER,
	"Precio"	VARCHAR(20) NOT NULL,
	"Marca"	VARCHAR(20) NOT NULL,
	"Tipo_Juguete"	VARCHAR(20) NOT NULL,
	"Material"	VARCHAR(20) NOT NULL,
	PRIMARY KEY("id_Juguete" AUTOINCREMENT)
);

CREATE TABLE "PERROS" (
	"id_perros"	INTEGER,
	"Precio"	VARCHAR(20) NOT NULL,
	"Edades"	VARCHAR(20) NOT NULL,
	"Peso_Paquete"	INTEGER NOT NULL,
	"Marca"	INTEGER NOT NULL,
	PRIMARY KEY("id_perros" AUTOINCREMENT)
);

CREATE TABLE "Tipos_de_Comidas" (
	"id_Tipo_Comida"	INTEGER,
	"id_perros"	INTEGER NOT NULL,
	"id_Gatos"	INTEGER NOT NULL,
	"id_Aves"	INTEGER NOT NULL,
	"id_Conejos"	INTEGER NOT NULL,
	PRIMARY KEY("id_Tipo_Comida" AUTOINCREMENT)
);

                    PERROS

INSERT INTO PERROS (id_perros,Precio,Edades,Peso_Paquete,Marca)
VALUES("1","19.000","7+","3KG","Royal Canin")

INSERT INTO PERROS (id_perros,Precio,Edades,Peso_Paquete,Marca)
VALUES("2","25.000","8+","3KG","Royal Canin")

INSERT INTO PERROS (id_perros,Precio,Edades,Peso_Paquete,Marca)
VALUES("3","48.000","Adultos","15KG","Royal Canin")

INSERT INTO PERROS (id_perros,Precio,Edades,Peso_Paquete,Marca)
VALUES("4","30.000","Mini Junior","10KG","Royal Canin")

INSERT INTO PERROS (id_perros,Precio,Edades,Peso_Paquete,Marca)
VALUES("5","9.000","7+","3KG","Dog Chow");

INSERT INTO PERROS (id_perros,Precio,Edades,Peso_Paquete,Marca)
VALUES("6","19.999","Todas las Edades","3KG","Dog Chow");

INSERT INTO PERROS (id_perros,Precio,Edades,Peso_Paquete,Marca)
VALUES("7","70.000","Adultos","10KG","Dog Chow");

INSERT INTO PERROS (id_perros,Precio,Edades,Peso_Paquete,Marca)
VALUES("8","105.000","Todas las Edades","10KG","Dog Chow");

INSERT INTO PERROS (id_perros,Precio,Edades,Peso_Paquete,Marca)
VALUES("9","70.000","Adultos","10KG","Pedigree");

INSERT INTO PERROS (id_perros,Precio,Edades,Peso_Paquete,Marca)
VALUES("10","90.999","Adultos","15KG","Pedigree");

INSERT INTO PERROS (id_perros,Precio,Edades,Peso_Paquete,Marca)
VALUES("11","250.000","Adultos","4KG","Pedigree");

INSERT INTO PERROS (id_perros,Precio,Edades,Peso_Paquete,Marca)
VALUES("12","55.000","2 a 18 meses","15KG","Pedigree");

                            GATOS

INSERT INTO GATOS (id_Gatos,Precio,Edades,Peso_Paquete,Marca)
VALUES("1","68.000","Todas las Edades","10KG","Whiskas");

INSERT INTO GATOS (id_Gatos,Precio,Edades,Peso_Paquete,Marca)
VALUES("2","15.000","Todas las Edades","3KG","Whiskas");

INSERT INTO GATOS (id_Gatos,Precio,Edades,Peso_Paquete,Marca)
VALUES("3","15.000","Pequeños","3KG","Whiskas");

INSERT INTO GATOS (id_Gatos,Precio,Edades,Peso_Paquete,Marca)
VALUES("4","10.000","2 a 12 meses","1,4KG","Whiskas");

INSERT INTO GATOS (id_Gatos,Precio,Edades,Peso_Paquete,Marca)
VALUES("5","40.000","Adultos","9KG","Cat Chow");

INSERT INTO GATOS (id_Gatos,Precio,Edades,Peso_Paquete,Marca)
VALUES("6","38.000","Adultos","8KG","Cat Chow");

INSERT INTO GATOS (id_Gatos,Precio,Edades,Peso_Paquete,Marca)
VALUES("7","20.000","Recien Nacidos","3KG","Cat Chow");

INSERT INTO GATOS (id_Gatos,Precio,Edades,Peso_Paquete,Marca)
VALUES("8","27.000","Adultos","3KG","Cat Chow");
