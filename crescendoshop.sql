--Base de Datos Inicial--

--Creacion de la tabla productos--

DROP TABLE Productos;

CREATE TABLE IF NOT EXISTS Productos (
id SERIAL PRIMARY KEY,
name VARCHAR (50) NOT NULL,
l_name VARCHAR(100) NOT NULL,
image VARCHAR(100) NOT NULL,
description VARCHAR(3000) NOT NULL,
price float NOT NULL,
stock int DEFAULT 10
);

--Subida de los datos--

INSERT INTO Productos (name,l_name,image,description,price)
	VALUES (
	'Bajo',
	'TAGIMA TW-73 BLACK BAJO ELECTRICICO 4 CUERDAS TIPO JAZZBASS', 
	'../img/prods/bajo.png', 
	'El bajo eléctrico (también llamado sencillamente bajo)es un instrumento musical similar en apariencia yconstrucción a la guitarra eléctrica, pero con un cuerpo de mayores dimensiones, un mástil de mayorlongitud y escala y, normalmente, cuatro cuerdas afinadas según la afinación estándar del contrabajo.',
	480000
);

INSERT INTO Productos (name,l_name,image,description,price)
	VALUES (
	'Bateria',
	'Batería Acústica Yamaha Stage Custom Birch Bombo 18',
	'../img/prods/bateria.png', 
	'La batería es un conjunto de instrumentos de percusión dispuestos de manera que puedan ser tocados por un solo músico, conocido como baterista. Una batería típica incluye un bombo, una caja, toms, platillos (como el hi-hat, crash y ride), y otros elementos adicionales según el estilo musical y las preferencias del baterista. Este instrumento es fundamental en la mayoría de las bandas de rock, pop, jazz y muchos otros géneros, proporcionando el ritmo y la base rítmica de la música. La batería puede ser acústica, generando el sonido de manera natural, o electrónica, permitiendo una mayor variedad de sonidos y configuraciones.',
	550000
);

INSERT INTO Productos (name,l_name,image,description,price)
	VALUES (
	'Cello',
	'Cello Parquer Majestic Madera',
	'../img/prods/cello.png', 
	'Instrumento musical grande y con registros graves en sus notas, además de emitir sonidos potentes y nítidos a la vez y del cual puede llegar a hacer de solista. Debido a las dimensiones que caracteriza a este instrumento, la única forma de ubicarlo es colocarlo entre las rodillas.',
	240000
);

INSERT INTO Productos (name,l_name,image,description,price)
	VALUES (
	'Guitarra',
	'Guitarra Acústica Star 38" Color Madera Parque',
	'../img/prods/guitarra.png', 
	'La guitarra es un instrumento versátil y expresivo que ha sido fundamental en la música durante siglos. Además de sus características físicas, como el cuerpo, el mástil y las cuerdas, hay elementos adicionales que contribuyen a su sonido y personalidad. Tipo de guitarra: Existen varios tipos de guitarras, cada una con su propio sonido distintivo y estilo de juego. Algunos ejemplos incluyen la guitarra acústica de cuerpo sólido, la guitarra clásica con cuerdas de nylon, la guitarra eléctrica con pastillas magnéticas para amplificar el sonido, la guitarra resonadora con un cono metálico para mayor proyección, y la guitarra de doce cuerdas que produce un sonido más rico y completo. Componentes adicionales: Además de las partes principales como el cuerpo y el mástil, la guitarra puede tener varios componentes adicionales. Estos incluyen el diapasón, donde se colocan los trastes para cambiar la afinación de las cuerdas, los trastes mismos, que dividen el diapasón en segmentos para producir diferentes notas al presionar las cuerdas, y el puente, que sostiene las cuerdas en su lugar y ayuda a transmitir la vibración al cuerpo de la guitarra. Sonido y tono: El tipo de madera utilizada en la construcción de una guitarra puede afectar significativamente su sonido y tono. Por ejemplo, la caoba tiende a producir un tono cálido y resonante, mientras que el arce puede ofrecer un tono más brillante y nítido. Otros factores que influyen en el sonido incluyen la forma del cuerpo, el grosor de las cuerdas y el tipo de pastillas en el caso de las guitarras eléctricas. Estilo de tocar: La guitarra se toca de diversas maneras, desde rasgueos vigorosos hasta delicados arpegios. Los guitarristas pueden utilizar una variedad de técnicas, como el picking, el fingerpicking, los bendings, los hammer-ons y los pull-offs, para crear diferentes efectos y expresiones musicales. En resumen, la guitarra es mucho más que un simple instrumento musical. Es una herramienta de expresión artística que ha capturado la imaginación de músicos y oyentes de todo el mundo. Desde sus orígenes hasta su evolución moderna, la guitarra continúa siendo un símbolo de creatividad y pasión en la música',
	270000
);

INSERT INTO Productos (name,l_name,image,description,price)
	VALUES (
	'Teclado',
	'Piano Eléctrico Yamaha P45B 88 Teclas De Acción Martillo',
	'../img/prods/teclado.png', 
	'Disfrute de la sensacion y el tacto de piano en cualquier sitio. Este piano digital, compacto y elegante, es muy facil de utilizar. El p-45 cuenta con un teclado de martillos graduados estandar (GHS). El tacto y la sensibilidad del teclad cambia gradualmene segun el registro, de modo que la sensacion es de mayor peso cuando se tocan partes graves y de mas ligereza cuando se tocan partes agudas. El teclado del piano tambien tiene un tacto natural, con teclas negras con acabado mate que transmiten una experiencia de autentico piano acustico al tocar. Estilizado y elegante, con menos de 30cm de fondo, este instrumento requiere poco espaco, y como solo pesa 11,5kg (con su altavoz incorporado), es muy comodo de transportar, tanto dentro de casa como para llevarlo a una actuacion en otro lugar. Los diversos ajustes de configuracion del P-45 se pueden hacer con un unico boton. Basta con mantener pulsado el boton “gran piao/function” y pulsar el teclado para cambiar los timbres, reproducir las demo, configurar el metronomo, etc.',
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
	'El violín es un instrumento de cuerda frotada, caracterizado por su cuerpo pequeño y elegante, cuatro cuerdas afinadas en quintas y su sonido agudo y expresivo. Se toca con un arco, que frota las cuerdas para producir sonido, aunque también puede ser pulsado con los dedos en técnicas como el pizzicato. El violín es un componente esencial de la música clásica, pero también se utiliza en otros géneros como el jazz, la música folk y el pop. Su capacidad para producir una amplia gama de tonos y matices lo convierte en un instrumento muy versátil y apreciado por músicos de todo el mundo.',
	350000
);


SELECT * FROM Productos
ORDER BY id;
