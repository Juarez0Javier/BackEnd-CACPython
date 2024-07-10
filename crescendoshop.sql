--Base de Datos Inicial--

--Creacion de la tabla productos--

DROP TABLE Productos;

CREATE TABLE IF NOT EXISTS Productos (
id SERIAL PRIMARY KEY,
name VARCHAR (50) NOT NULL,
l_name VARCHAR(100) NOT NULL,
image VARCHAR(100) NOT NULL,
description VARCHAR(1000) NOT NULL,
price float NOT NULL,
stock int DEFAULT 12
);

--Subida de los datos--

INSERT INTO Productos (name,l_name,image,description,price,stock)
	VALUES (
	'Bajo',
	'TAGIMA TW-73 BLACK BAJO ELECTRICICO 4 CUERDAS TIPO JAZZBASS', 
	'../img/prods/bajo.png', 
	'El bajo eléctrico (también llamado sencillamente bajo)es un instrumento musical similar en apariencia yconstrucción a la guitarra eléctrica, pero con un cuerpo de mayores dimensiones, un mástil de mayorlongitud y escala y, normalmente, cuatro cuerdas afinadas según la afinación estándar del contrabajo.',
	480000,
	0
);

INSERT INTO Productos (name,l_name,image,description,price,stock)
	VALUES (
	'Bateria',
	'Batería Acústica Yamaha Stage Custom Birch Bombo 18',
	'../img/prods/bateria.png', 
	'La batería es un conjunto de instrumentos de percusión dispuestos de manera que puedan ser tocados por un solo músico, conocido como baterista. Una batería típica incluye un bombo, una caja, toms, platillos (como el hi-hat, crash y ride), y otros elementos adicionales según el estilo musical y las preferencias del baterista.',
	550000,
	-1
);

INSERT INTO Productos (name,l_name,image,description,price, stock)
	VALUES (
	'Cello',
	'Cello Parquer Majestic Madera',
	'../img/prods/cello.png', 
	'Instrumento musical grande y con registros graves en sus notas, además de emitir sonidos potentes y nítidos a la vez y del cual puede llegar a hacer de solista. Debido a las dimensiones que caracteriza a este instrumento, la única forma de ubicarlo es colocarlo entre las rodillas.',
	240000,
	1
);

INSERT INTO Productos (name,l_name,image,description,price)
	VALUES (
	'Guitarra',
	'Guitarra Acústica Star 38" Color Madera Parque',
	'../img/prods/guitarra.png', 
	'Imagen	La guitarra es un instrumento versátil y expresivo que ha sido fundamental en la música durante siglos. Además de sus características físicas, como el cuerpo, el mástil y las cuerdas, hay elementos adicionales que contribuyen a su sonido y personalidad.',
	270000
);

INSERT INTO Productos (name,l_name,image,description,price)
	VALUES (
	'Teclado',
	'Piano Eléctrico Yamaha P45B 88 Teclas De Acción Martillo',
	'../img/prods/teclado.png', 
	'Disfrute de la sensacion y el tacto de piano en cualquier sitio. Este piano digital, compacto y elegante, es muy facil de utilizar. El p-45 cuenta con un teclado de martillos graduados estandar (GHS). El tacto y la sensibilidad del teclad cambia gradualmene segun el registro, de modo que la sensacion es de mayor peso cuando se tocan partes graves y de mas ligereza cuando se tocan partes agudas.',
	170000
);

INSERT INTO Productos (name,l_name,image,description,price)
	VALUES (
	'Trompeta',
	'Yamaha Ytr-8335Laiis-Trompeta Profesional Personalizada',
	'../img/prods/trompeta.png', 
	'Instrumento musical de viento, consistente en un tubo largo de metal que va ensanchándose desde la boquilla al pabellón y produce diversidad de sonidos según la fuerza con que la boca impele el aire.',
	120000
);

INSERT INTO Productos (name,l_name,image,description,price)
	VALUES (
	'Violin',
	'SEGOVIA Violín de estudio antique mate',
	'../img/prods/violin.png', 
	'El violín es un instrumento de cuerda frotada, caracterizado por su cuerpo pequeño y elegante, cuatro cuerdas afinadas en quintas y su sonido agudo y expresivo. Se toca con un arco, que frota las cuerdas para producir sonido, aunque también puede ser pulsado con los dedos en técnicas como el pizzicato.',
	350000
);


SELECT * FROM Productos 
WHERE NOT stock =-1 
ORDER BY id;
