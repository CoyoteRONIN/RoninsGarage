::ME FALTA PONER LAS ELECCIONES CORRECTAS Y LAS CORRECCIONES A ELLAS, EJ: ESTABLER LA CLASE, SI ELEGIMOS UNA OPCION QUE NO ENTRE EN EL JUEGO QUE DIGA: ESA RAZA AUN NO ESTA DISPONBLE.
@echo off
title La cruzada interna
color 0A
:: el Menu para elegir empezar o salir.
:Menu
		cls
:: Con el echo 1. o echo 2. damos la opcion de iniciar o salir mas el goto para llevar al indice o salir.
echo 1. Iniciar la aventura
echo 2. Controles del juego
echo 3. Salir del juego
			set /p pregunta=Presiona el numero de tu opcion y presiona Enter: 
echo.
echo.
			if %pregunta%==1 goto Inicio
			if %pregunta%==2 goto Controles
			if %pregunta%==3 goto Exit
		cls
:Controles
echo 1. Para un correcto disfrute del juego, responder siempre con las opciones que de el juego.
echo.
echo 2. Para continuar leyendo presionar el Enter.
echo.
echo AVISO IMPORTANTE "Contestar mal aproposito puede deteriorar la experiencia del juego" 
echo. 
	Pause
		goto Menu
		cls
:Inicio
echo Bienvenido, debes estar preparado para hacer frente a esta aventura.
echo.
	pause>nul
		cls
			set /p nombre= Como te llamas aventurero? 
echo.
echo Hola %nombre%, porque no eliges una clase. Presiona Enter:
echo.
	pause>nul 
			set /p clase= Puedes elegir entre un ( Barbaro / Mago / Bandido ). Como te gustaria vivir la aventura? Escribe el nombre de tu clase y presionar enter: 
echo.
:: poner eleccion de solo poder ser una de esas tres, de poner otra cosa volver a relanzar la pregunta diciendo eso no existe aventuro, solo puedes ser una de las tres.
echo Buena eleccion ser un %clase%, dejame prepararte para lo que viene...
	pause>nul
echo.
		cls
:: Historia introductoria
echo Te estas adentrando en una aventura brutalmente entretenida, en la cual deberas buscar el caliz de la vida. 
echo.
echo En el estan las lagrimas del primer ser que camino por el mundo.
echo.
	pause>nul
echo Las leyendas cuentan que esas lagrimas fueron las que hicieron brotar la vida despues el gran cataclismo. 
echo Con tan solo unas gotas pueden volver un vergel hasta el mas seco paramo de la tierra.
echo.
	pause>nul
echo Si logras encontrarlo podras optar por ayudar a tu especie y acabar con la sequia que se cierne en tu tiempo, 
echo o derramarlas y asi acabar con esta realidad y sus gentes. Tu tienes la potestad.
echo.
	pause>nul
echo Eso si, solo tendras esa eleccion si lo encuentras, pues la tarea va a ser dificil.
echo.
	pause>nul
echo Comencemos con tu aventura...
echo.
set /p pregunta=Estas listo? ( Si / No ) 
if %pregunta%==Si goto :InicioDeAVENTURA
if %pregunta%==No goto Menu
	pause>nul
		cls
:InicioDeAVENTURA
cls
:: Comenzamos con la aventura, descripciones de las salas.
echo Acabas de llegar a la entrada de la mazmorra, una vieja puerta oxidada esta delante de ti.
echo.
	pause>nul
echo Un viejo candado destrozado esta a un lado de la puerta. Y por algun raro motivo, no hay ningun ruido de animal,
echo solo un intenso viento, tan frio que te hiela la sangre solo de pensar en entrar.
echo.
	pause>nul
echo Tragas saliba y recuerdas porque estas alli, concentras tus pensamientos y das un primer paso en direccion a la mazmorra...
echo.
	pause>nul
		cls
:: Sala 1 El camino del aventurero, las decisiones que tomamos en la vida.
:Sala_1
echo Sala 1
echo.
	pause>nul
echo Frente a ti una pequeña habitacion se deja ver, unas viejas candelas dan la poca luz que necesitas para ver.
echo.
	pause>nul
echo Hace cuanto estan prendidas estas luces? quizas no este solo... piensas para ti
echo.
	pause>nul
echo La sala parece vacia, salvo por unos cajones que estan destrozados en una esquina, dos caminos se abren para ti, una puerta orientada al NORTE y otra al ESTE.
echo.
	pause>nul
:: Con el set establecemos la variable de pregunta, para con el IF establecer las respuestas y que el GOTO lleve a la eleccion.
		set /p pregunta= Que puerta quieres abrir? (Norte o Este) 
			if %pregunta%==Norte goto Puerta_Cerrada
			if %pregunta%==Este goto Puerta_Abierta
		cls
:Puerta_Abierta
		cls
echo Cruzas el umbral y te adentras en la siguiente habitacion.
	pause
		goto Sala_2
:Puerta_Cerrada
		cls
echo La puerta esta cerrada y parece que no quiere abrirse. Busca otra entrada.
	pause
		goto Sala_1
:: Sala 2 Sera que nuestros instintos funcionan a la perfeccion y a veces nos dejamos guiar por lo que nos digan los demas pese a lo que pensemos.
:Sala_2
echo Sala 2
echo.
	pause>nul
echo Una sala nueva se presenta frente a ti, una pared lisa a tu izquierda fuera de lo comun te llama la atencion.
echo.
	pause>nul
echo En rojo, una flecha parece dibujar el camino hacia alguna parte, debo seguir la flecha?... piensas para ti
echo.
	pause>nul
echo Mirando a tu alrededor te das cuenta de que tienes dos puertas mas que poder abrir, una al ESTE adornada con oro, brilla como si la acabaran de pulir.
echo.
	pause>nul
echo Por otra parte la otra puerta hacia el SUR esta cochambrosa, casi al punto de pudrirse.
echo.  
echo ( A VECES NO ES ORO TODO LO QUE RELUCE... ) Y el tiempo hace estragos en la naturaleza.
echo.
		set /p pregunta= Que puerta quieres abrir? (Este o Sur) 
			if %pregunta%==Este goto Puerta_Abierta2
			if %pregunta%==Sur goto Puerta_Abierta3
		cls
:Puerta_Abierta2
		cls
echo Cruzas el umbral de la dorada puerta y te adentras en la siguiente habitacion.
	pause
		goto Sala_3
:Puerta_Abierta3
		cls
echo Cruzas el umbral de la cochambrosa puerta quedandote con el asa en la mano, ante ti se presenta otra habitacion.
	pause
		goto Sala_4
		cls
:: Sala 3 Representa la codicia, los valores tan perdidos que dan mas importancia al dinero que a su propia vida.
:Sala_3
echo Sala 3
echo.
	pause>nul
echo La habitacion brilla con una lampara de techo, un fulgor fantasmagorico dibuja sombras que bailan en las paredes.
echo.
	pause>nul
echo Una mesa en la mitad de la sala preside con un candelabro ostentoso sin encender, hay libros en un idioma que no entiendes y una vieja silla frente a la mesa. 
echo.
	pause>nul
echo A tu izquierda, las puertas de un celda te hacen mirar dentro, un esqueleto vestido con una armadura oxidada te observa desde alli. 
echo Esta abrazado un cofre cerrado y en el suelo tiradas unas monedas doradas. Se ve que lo sujeto con fuerza hasta su muerte... Piensas para ti.
echo.
	pause>nul
echo Otra puerta esta frente a ti, y tiene un viejo pergamino clavado, SI QUIERES RIQUEZAS ENTRA, SOLO LAS ALMAS PURAS RECIBIRAN EL TESORO.
echo.
	pause>nul
echo A tu derecha hay una puerta decorada con piedras y runas, con un grabado de una lengua antigua que crees poder adivinar. 
echo QUOD QUAERIS INTRA CUBICULUM HOC EST, INTRA INTRO ET CAPE ILLUD INEPTUM.
echo.
		set /p pregunta= Que puerta quieres abrir? ( Norte / Este / Sur ) 
			if %pregunta%==Norte goto Puerta_Cerrada
			if %pregunta%==Este goto Puerta_Abierta5
			if %pregunta%==Sur goto Puerta_Abierta6
:Puerta_Cerrada
		cls
echo La puerta de la celda esta cerrada, pero no tiene llave, parece un mensaje para todos los aventureros ansiosos como muestra de su final.
	pause
		goto Sala_3
:Puerta_Abierta5
cls
echo Cruzas el umbral de la puerta y te adentras en la siguiente habitacion.
echo.
	pause>nul
echo Escuchas el ruido de un mecanismo cada vez mas veloz, la puerta se bloquea y tus intentos por echarla abajo cesan cuando...
echo ves caer rocas del techo, y por fin entiendes tu final, aplastado por el techo que se derrumba encima de ti.
echo.
	pause>nul
echo ESTE ES TU FIN AVENTURERO, HAS MUERTO! intentalo otra vez...
	pause
		goto Sala_Muerte
:Puerta_Abierta6
		cls
echo Cruzas el umbral de la puerta, ante ti se presenta otra habitacion. Una luz cegadora inunda la sala.
	pause
		goto Sala_Final
:: Sala 4 La iluminacion del camino del guerrero, todo se presenta luminoso tras un camino duro recorrido. El aprendizaje es lo que mas ilumina tu camino.
:Sala_4
echo Sala 4
echo Una sala oscura se abre frente a ti, esta habitacion parece mucho mas grandes que las anteriores. Y mucho mas alta, el sistema de luces es mas extraño.
echo.
	pause>nul
echo La habitacion esta iluminada completamente, pero no hay ningun candelabro o antorchas. Sin embargo no hay ningun lugar sin luz.
echo.
	pause>nul
echo Mirando mas detenidamente, te das cuenta de unas oquedades en el techo, donde los rayos de luz se cuelan y rebotan para dar luz a todo.
echo.
	pause>nul
echo Dos puertas se dejan ver, una al Sur con rejas y una puerta al Este de la cual una explendida luz se cuela por debajo.
echo.
		set /p pregunta= Que puerta quieres abrir? ( Este / Sur ) 
			if %pregunta%==Este goto Puerta_Abierta7
			if %pregunta%==Sur goto Puerta_Cerrada
:Puerta_Cerrada
		cls
echo La puerta de la celda esta cerrada, pero la endidura de la llave tiene forma de corazon, se ven unas escaleras que bajan a un piso inferior.
echo.
	pause>nul
echo Quizas la mazmorra es mas grande de lo que parece... Piensas para ti.
	pause
		goto Sala_4
:Puerta_Abierta7
		cls
echo Cruzas el umbral de la puerta, ante ti la habitacion. Una luz cegadora inunda la sala casi no te deja ni ver, la luz es tan fuerte que te ciega al instante.
	pause
		goto Sala_Final
:: Las decisiones de la vida aun siendo dificiles, siempre son un punto de inflexion ante el camino de tu vida.
:Sala_Final
echo Sala Final
echo La luz no te deja ver bien la habitacion, tu vista tardara en acostumbrarse a soportar su intensidad.
echo.
	pause>nul
echo Das un par de pasos hacia el frente, tu vision comienza a notar detalles, un par de sillas de madera estan en el centro de la habitacion.
echo.
	pause>nul
echo Una enfrentada a la otra. Por fin tus ojos se han acostumbrado al fulgor, cuando de repente una voz te saca de tus pensamientos.
echo.
	pause>nul
echo AVENTURERO, POR FIN HAS LLEGADO... TE ESTABA ESPERANDO DESDE HACE MUCHOS AÑOS, HASTA HE PERDIDO LA CUENTA.
echo.
	pause>nul 
echo SIENTATE. SIENTATE EN FRENTE DE MI.
echo.
	pause>nul
echo Al fin lo distingues, una figura la cual no puedes dar forma esta sentada en una de las sillas. 
echo Solo llegas a distinguir su figura pero la luz es mucho mas intensa en ella.
echo.
	pause>nul
echo Y BIEN AVENTURO, EN TU VIAJE HAS PENSADO QUE HACER CON EL CALIZ? ( De la nada un caliz se presenta a ti, flotando, justo a tu alcance... )
echo.
		set /p pregunta= Que haras con el caliz? ( Coger / Derramar ) 
			if %pregunta%==Coger goto Coger
			if %pregunta%==Derramar goto Derramar
:Coger
		cls
echo Al tocar el calid y decidir quedartelo, un fuerte viento te impulsa hacia arriba. Sientes como si te estuvieras dentro de un huracan, 
echo de pronto una vision se cierne sobre ti. 
echo.
	pause>nul
echo Ves tierras verdes hasta donde llega tu vista, riachuelos con agua cristalina y animales bebiendo de ellos. 
echo.
	pause>nul
echo Y como de la nada, se presenta ante ti un campo lleno de cereal, tan largo y crecido que no puedes ver mas alla.
echo.
	pause>nul
echo De repente estas en la entrada de la mazmorra, pero tus manos sujetan algo, un caliz de madera con unas runas grabadas. 
echo Algo dentro de ti, te dice que debes volver a tu casa...
echo.
	pause
echo.
echo Tu final escogido: Has dado una nueva oportunidad a la humanidad, felicidades!
echo.
	pause>nul
echo. 
Pause
goto Menu
cls
		
:Derramar
		cls
echo Algo dentro de ti te dice que por mucho que den oportunidades al ser, jamas volvera a ir por el camino del bien. 
echo Estamos destinados a destruirnos siempre, como un ciclo.
echo.
	pause>nul
echo Quizas lo mejor es mandarlo todo al traste y no dar otra oportunidad. En tu interior sabes que no debes cogerlo y asi cerrar el ciclo.
echo.
	pause>nul
echo Das un manotazo al caliz y gritas: SE ACABO ESTE JUEGO, NO SEREMOS MAS MARIONETAS, SI NUESTRO DESTINO ES LA EXTINCION ASI SEA...
echo.
	pause>nul
echo Todo ennegrecio y de pronto un frio gelido inundo la habitacion.
echo.
	pause>nul
echo PARA QUE ALGO NUEVO PUEDA SURGIR, LO ANTERIOR DEBE SER DESTRUIDO. 
echo.
	pause
echo.
echo.
echo Tu final escogido: El fin de la humanidad, felicidades!
	pause>nul
echo. 
Pause
goto Menu
cls

