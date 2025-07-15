CREATE TABLE "CATALOGO" (
	"id_catalogo"	INTEGER,
	"tipoProduct_id"	INTEGER NOT NULL,
	"id_Tipo_Comida"	INTEGER NOT NULL,
	"id_Juguete"	INTEGER NOT NULL,
	PRIMARY KEY ("id_catalogo" AUTOINCREMENT),
	FOREIGN KEY ("tipoProduct_id") REFERENCES Tipo_Producto("id")
	FOREIGN KEY ("id_Tipo_Comida") REFERENCES Tipos_de_Comidas("id")
	FOREIGN KEY ("id_Juguete") REFERENCES JUGUETES("id")
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
	"id_Gatos"	INTEGER ,
	"id_Aves"	INTEGER ,
	"id_Conejos"	INTEGER ,
	PRIMARY KEY("id_Tipo_Comida" AUTOINCREMENT)
);

CREATE TABLE "CAMAS" (
	"id_Cama"	INTEGER,
	"Precio"	VARCHAR(20) NOT NULL,
	"Tamaño"	VARCHAR(20) NOT NULL,
	"Colores"	VARCHAR(20) NOT NULL,
	PRIMARY KEY("id_Cama" AUTOINCREMENT)
);

CREATE TABLE "TRANSPORTADORAS" (
	"id_Transportadoras"	INTEGER,
	"Color"	VARCHAR(20) NOT NULL,
	"Tamaño"	VARCHAR(20) NOT NULL,
	"Modelo"	VARCHAR(20) NOT NULL,
	"Estilo"	VARCHAR(20) NOT NULL,
	"Precio"	VARCHAR(20) NOT NULL,
	PRIMARY KEY("id_Transportadoras" AUTOINCREMENT)
);

CREATE TABLE "COLLARES" (
	"id_Collares"	INTEGER,
	"Tamaño"	INTEGER NOT NULL,
	"Estilo"	INTEGER NOT NULL,
	"Modelo"	INTEGER NOT NULL,
	"Precio"	INTEGER NOT NULL,
	PRIMARY KEY("id_Collares" AUTOINCREMENT)
);

CREATE TABLE "ROPA" (
	"id_Ropa"	INTEGER,
	"Tamaño"	INTEGER NOT NULL,
	"Tipo_Ropa"	INTEGER NOT NULL,
	"Modelo"	INTEGER NOT NULL,
	"Ropa_Animal"	INTEGER NOT NULL,
	"Estilo"	INTEGER NOT NULL,
	"Colores"	INTEGER NOT NULL,
	"Tela"	INTEGER NOT NULL,
	PRIMARY KEY("id_Ropa" AUTOINCREMENT)
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


                         AVES

INSERT INTO AVES ("id_Aves","Precio","Edades","Peso_Paquete","Marca") VALUES (1,'7.800','Para todas las edades','100g','Hezzly'),
 (2,'10.200','Para todas las edades','200g','Cunipic'),
 (3,'3.500','Para todas las edades','150g','RedKite'),
 (4,'7.500','Para todas las edades','150g','ZuPreem');


                         CONEJOS

INSERT INTO CONEJOS ("id_Conejos","Precio","Edades","Peso_Paquete","Marca") VALUES (1,'10.500','0-1 año','3KG','Cunipic'),
 (2,'19.900','Para todas las edades','3,5KG','Cunipic'),
 (3,'10.900','Para todas las edades','700g','Orycs'),
 (4,'11.400','Para todas las edades','85g','Carnilove');


        CAMAS
INSERT INTO CAMAS(id_Cama,Precio,Tamaño,Colores)
VALUES("1","26.500","Mediano","Gris y Blanco"),
("2","24.500","Pequeño","Rosa"),
("3","37.900","Grande","Blanco"),
("4","21.900","Pequeño","Rosa y Gris"),
("5","17.900","Grande","Azul"),
("6","28.000","Intrmedio","Marrón,Beige,Blanco o Gris"),
("7","49.500","Intermedio Colgante","Celeste Claro"),
("8","59.000","Grande","Blanco y Beige"),
("9","36.500","Grande Colgante","Blanco");


         TRANSPORTADORAS

INSERT INTO TRANSPORTADORAS(id_Transportadoras,Color,Tamaño,Modelo,Estilo,Precio)
VALUES("1","Rosa","Pequeño","Mochila","Moderno","34.500"),
("2","Rosa","Grande","Carrito","Simple","39.500"),
("3","Negro y Rosa","Pequeño","Cartera","Princess","37.500"),
("4","Rosa Viejo","Pequeño","Cartera","Simple","31.000"),
("5","Azul y Negro","Mediano","Cartera","Simple","33.900"),
("6","Rosa o Gris","Mediano","Carrito Cartera","Viaje","34.500"),
("7","Azul y Negro","Mediano","Carrito Cartera","Simple","35.000"),
("8","Beige y Blanco","Grande","Minimalista","Viaje","29.900");

            COLLARES

INSERT INTO COLLARES (id_Collares,Tamaño,Estilo,Modelo,Precio)
VALUES ("1","Pequeño","cutte","Correa","7.900"),
("2","Pequeño","Simple","Collar","7.500"),
("3","Largo","Simple","Correa","10.900"),
("4","Mediano","Minimalista","Correa + Arnes","13.900"),
("5","Expansible largo","Princess","Correa + Arnes + Cinta","16.900"),
("6","Largo","Minimalista","Correa","14.900"),
("7","Mediano","Minimalista","Collar","8.200"),
("8","Grande","Simple","Correa","");