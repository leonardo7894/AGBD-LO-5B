CREATE TABLE "CATALOGO" (
	"id_catalogo"	INTEGER,
	"id_Tipo_Comida"	INTEGER NOT NULL,
	"id_Juguete"	INTEGER NOT NULL,
	"id_Higiene"	INTEGER NOT NULL,
	"id_Accesorio"	INTEGER NOT NULL,
	PRIMARY KEY ("id_catalogo" AUTOINCREMENT),
	FOREIGN KEY ("id_Accesorio") REFERENCES Tipo_Accesorio("id_Accesorio")
	FOREIGN KEY ("id_Tipo_Comida") REFERENCES Tipos_de_Comidas("id_Tipo_Comida")
	FOREIGN KEY ("id_Juguete") REFERENCES JUGUETES("id_Juguete")
	FOREIGN KEY ("id_Higiene") REFERENCES Tipos_Higiene("id_Higiene")
);

CREATE TABLE "FARMACIA" (
	"id_Farmacia"	INTEGER,
	"id_Alimentos_Medicados"	INTEGER NOT NULL,
	"id_Pastillas"	INTEGER NOT NULL,
	"id_Jarabes"	INTEGER NOT NULL,
	"id_Pipetas"	INTEGER NOT NULL,
	"id_Vacunas"	INTEGER NOT NULL,
	PRIMARY KEY ("id_Farmacia" AUTOINCREMENT),
	FOREIGN KEY ("id_Alimentos_Medicados") REFERENCES ALIMENTOS_MEDICADOS("id_Alimentos_Medicados")
	FOREIGN KEY ("id_Pastillas") REFERENCES PASTILLAS("id_Pastillas")
	FOREIGN KEY ("id_Jarabes") REFERENCES JARABES("id_Jarabes")
	FOREIGN KEY ("id_Pipetas") REFERENCES PIPETAS("id_Pipetas")
	FOREIGN KEY ("id_Vacunas") REFERENCES VACUNAS("id_Vacunas")
);


CREATE TABLE "PASTILLAS" (
	"id_Pastillas"	INTEGER,
	"Tipo_Emfermedad"	VARCHAR(20) NOT NULL,
	"Tipo_Animal"	VARCHAR(20) NOT NULL,
	"Peso_Animal"	INTEGER NOT NULL,
	"Marca"	VARCHAR(20) NOT NULL,
	"Precio"	INTEGER NOT NULL,
	PRIMARY KEY("id_Pastillas" AUTOINCREMENT)
);

CREATE TABLE "ALIMENTOS_MEDICADOS" (
	"id_Alimentos_Medicados"	INTEGER,
	"Tipo_Animal"	VARCHAR(20) NOT NULL,
	"Marca"	VARCHAR(20) NOT NULL,
	"Peso"	VARCHAR(20) NOT NULL,
	"Precio"	INTEGER NOT NULL,
	PRIMARY KEY("id_Alimentos_Medicados" AUTOINCREMENT)
);

CREATE TABLE `Tipos_Higiene` (
	`id_Higiene`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`id_Cepillos`	INTEGER NOT NULL,
	`id_Shampoo`	INTEGER NOT NULL,
	`id_Otros`	INTEGER NOT NULL
);

CREATE TABLE `OTROS` (
	`id_Otros`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`Producto`	VARCHAR(20) NOT NULL,
	`Adicional`	VARCHAR(20),
	`Colores`	VARCHAR(20) NOT NULL,
	`Precio`	INTEGER NOT NULL
);

CREATE TABLE `Tipo_Accesorio` (
	`id_Accesorio`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`id_Ropa`	INTEGER,
	`id_Cama`	INTEGER,
	`id_Transportadora`	INTEGER,
	`id_Collares`	INTEGER
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

CREATE TABLE `SHAMPOO` (
	`id_Shampoo`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`Marca`	VARCHAR ( 20 ) NOT NULL,
	`Precio`	VARCHAR ( 20 ) NOT NULL,
	`Tipo_Animal`	VARCHAR ( 20 ) NOT NULL
);

CREATE TABLE `CEPILLOS` (
	`id_Cepillos`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`Color`	INTEGER NOT NULL,
	`Tamaño`	INTEGER NOT NULL,
	`Precio`	INTEGER NOT NULL
);

CREATE TABLE `JARABES` (
	`id_Jarabes`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`Tipo_Jarabe`	VARCHAR ( 20 ) NOT NULL,
	`Tipo_Animal`	VARCHAR ( 20 ) NOT NULL,
	`Marca`	VARCHAR ( 20 ) NOT NULL,
	`Precio`	INTEGER NOT NULL
);

CREATE TABLE `PIPETAS` (
	`id_Pipetas`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`Tipo_Animal`	VARCHAR(20) NOT NULL,
	`Marca`	VARCHAR(20) NOT NULL,
	`Precio`	INTEGER NOT NULL
);

CREATE TABLE `VACUNAS` (
	`id_Vacunas`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`Tipo_Vacuna`	VARCHAR(20) NOT NULL,
	`Precio`	INTEGER NOT NULL
);

           VACUNAS

insert into VACUNAS ("id_Vacunas", "Tipo_Vacuna", "Precio")
values ("1", "Sextuple", "22.000"),
("2", "Antirrábica", "23.000"),
("3", "Bordetella", "20.200"),
("4", "Leishmaniosis", "22.500"),
("5", "CoronaVirus Canino", "21.500"),
("6", "Tiple Felina", "21.900"),
("7", "Leucemia Felina", "21.300"),
("8", "Clamidiosis Felina", "19.900")

                   FARMACIA

insert into FARMACIA ("id_Farmacia", "id_Alimentos_Medicados", "id_Pastillas", "id_Jarabes", "id_Jarabes", "id_Vacunas")
values ("1","1","1","1","1","1"),
("2","2","2","2","2","2","2"),
("3","3","3","3","3","3","3"),
("4","4","4","4","4","4","4"),
("5","5","5","5","5","5","5"),
("6","6","6","6","6","6","6"),
("7","7","7","7","7","7","7"),
("8","8","8","8","8","8","8")

               PIPETAS

INSERT INTO PIPETAS ("id_Pipetas", "Tipo_Animal", "Marca", "Precio")
VALUES ("1", "Perros", "Power Ultra", "19.500"),
("2", "Perros", "Power Ultra", "18.500"),
("3", "Perros", "Power Ultra", "19.900"),
("4", "Perros", "Power Ultra", "19.500"),
("5", "Perros", "Power Ultra", "20.500"),
("6", "Gatos", "Power Spot On", "19.800"),
("7", "Gatos", "Power Spot On", "18.800"),
("8", "Gatos", "Power Met", "19.200")

			  PASTILLAS

INSERT INTO PASTILLAS ("id_Pastillas","Tipo_Emfermedad","Tipo_Animal","Peso_Animal","Marca","Precio")
VALUES("1","Antiparasitaria","Perros"," 30-50kg","Basken","29.800"),
("2","Antipulgas","Perros","20-40kg","Simparica","28.900"),
("3","Mata Pulgas","Perros","2-4kg","NexGard","32.900"),
("4","Analgesicas y Antinflamatoria","Perros","10-18kg ","Meloxicam","25.900"),
("5","Analgesicas y Antinflamatoria","Perros","5-10kg","Meloxic","30.900"),
("6","Analgesicas y Antinflamatoria","Perros y Gatos","5-10kg","Meloxic","30.900"),
("7","Analgesicas y Antinflamatoria","Perros","5-10kg","Meloxic","21.900"),
("8","Antiparasitaria","Perros","20-30kg","Praziquantel","33.900")

					 Tipo_Accesorio

insert into Tipo_Accesorio ("id_Accesorio","id_Ropa","id_Cama","id_Transportadora","id_Collares")
values('1','1','1','1','1'),
('2','2','2','2','2'),
('3','3','3','3','3'),
('4','4','4','4','4'),
('5','5','5','5','5'),
('6','6','6','6','6'),
('7','7','7','7','7'),
('8','8','8','8','8')

                     JARABES

insert into JARABES ("id_Jarabes", "Tipo_Jarabe", "Tipo_Animal", "Marca", "Precio")
values ("1", "Tónico Antianémico Vitamínico", "Perros y Gatos", "TonaVit", "16.900"),
("2", "Mucolítico", "Perros y Gatos", "Laika", "15.900"),
("3", "Mucolítico", "Perros y Gatos", "Laika", "14.900"),
("4", "Antiparasitorio Digestivo ", "Perros y Gatos", "VerStop", "17.900"),
("5", "Protector Hepático de Origen Natural ", "Perros y Gatos", "Silimadrag", "12.900"),
("6", "Regulador Intestinal", "Perros y Gatos", "Himalaya", "13.500"),
("7", "Complejo B Oral", "Perros y Gatos", "Bongo", "$14.700"),
("8", "Antiflamatorio", "Perros y Gatos", "Meloxi Laika", "15.800")

                   ALIMENTOS_MEDICADOS

INSERT INTO ALIMENTOS_MEDICADOS ("id_Alimentos_Medicados", "Tipo_Animal", "Marca", "Peso", "Precio")
VALUES ("1","Perro","Royal Canin","1KG","22.500"),
("2","Gato","Whiskas","900g","21.000"),
("3","Perro","Royal Canin","1KG","23.000"),
("4","Perro","Royal Canin","1KG","23.500"),
("5","Gato","Royal Canin","900g","25.500"),
("6","Gato","Cat Chow","900g","24.500"),
("7","Perro","Royal Canin","900g","25.500"),
("8","Perro","Royal Canin","900g","25.500")

                     Tipos_de_Comidas

INSERT INTO "Tipos_de_Comidas" ("id_Tipo_Comida","id_perros","id_Gatos","id_Aves","id_Conejos") VALUES (1,1,1,1,1),
 (2,2,2,2,2),
 (3,3,3,3,3),
 (4,4,4,4,4),
 (5,5,5,NULL,NULL),
 (6,6,6,NULL,NULL),
 (7,7,7,NULL,NULL),
 (8,8,8,NULL,NULL),
 (9,9,NULL,NULL,NULL),
 (10,10,NULL,NULL,NULL),
 (11,11,NULL,NULL,NULL),
 (12,12,NULL,NULL,NULL)

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

               CEPILLOS
          
insert into CEPILLOS ("id_Cepillos", "Color","Tamaño", "Precio")
values ('1','Gris','Intermedio','16.700'),
('2','Blanco','Pequeño','20.000'),
('3','Negro y Celeste','Estandar','7,000'),
('4','Blanco','Pequeño','12.000'),
('5','Negro y Fucsia','Pequeño','27.800'),
('6','Blanco y Verde o Blanco y Rosa','Pequeño','9.900'),
('7','Blanco','Intermedio','21,300'),
('8','Gris','Pequeño','25.200')

                        JUGUETES

INSERT INTO "JUGUETES" ("id_Juguete","Precio","Marca","Tipo_Juguete","Material") VALUES (1,'3.500','VetLife','Hueso','Goma'),
 (2,'2.900','VetLife','pelota','Goma'),
 (3,'3.900','VetLife','Pelota','Goma'),
 (4,'4.100','VetLife','Soga Mordedora','Goma'),
 (5,'3.200','VetLife','Soga Mordedora','Tela'),
 (6,'3.800','VetLife','Pelota','Estilo Tenis'),
 (7,'14.900','VetLife','Poste Rascador','Madera y Tela'),
 (8,'4.300','VetLife','Peluche Pequeño','Tela y Algodón');

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

				SHAMPOO

insert into "SHAMPOO" ("id_Shampoo", "Marca", "Precio","Tipo_Animal")
values ('1', 'MoonCat', '9.800', 'Gatos'),
('2', 'Coconut Milk', '10.700', 'Perros'),
('3', 'Mascota Moda', '4.800', 'Perros y Gatos'),
('4', 'Genial Pet', '9.900', 'Perros y Gatos'),
('5', 'Sanol', '11.800', 'Perros y Cachorros'),
('6', 'Puppy', '13.900', 'Perros y Cachorros'),
('7', 'Osspret', '10.000', 'Perros y Gatos'),
('8', 'Osspret', '13.000', 'Cachorros');

              