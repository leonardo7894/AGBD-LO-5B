CREATE TABLE "CATALOGO" (
	"id_catalogo"	INTEGER,
	"tipoProduct_id"	INTEGER NOT NULL,
	PRIMARY KEY("id_catalogo" AUTOINCREMENT),
	FOREIGN KEY ("tipoProduct_id") REFERENCES Tipo_Producto("id")
);






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