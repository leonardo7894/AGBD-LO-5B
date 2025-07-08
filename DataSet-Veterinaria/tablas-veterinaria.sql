CREATE TABLE "CATALOGO" (
	"id_catalogo"	INTEGER,
	"tipoProduct_id"	INTEGER NOT NULL,
	PRIMARY KEY("id_catalogo" AUTOINCREMENT),
	FOREIGN KEY ("tipoProduct_id") REFERENCES Tipo_Producto("id")
);