# -*- coding: utf-8 -*-
"""JuegoUNO_cartas.ipynb

Automatically generated by Colaboratory.

Original file is located at
    https://colab.research.google.com/drive/1a8OgX-b1gcuyxEb0GKT_FEgG6uZUEdpL
"""

import random

baraja = ["R0","R1","R2","R3","R4","R5","R6","R7","R8","R9","B0","B1","B2","B3","B4","B5","B6","B7","B8","B9","Y0","Y1","Y2","Y3","Y4","Y5","Y6","Y7","Y8","Y9","G0","G1","G2","G3","G4","G5","G6","G7","G8","G9"]

jugador1 = []
jugador2 = []

def barajar_cartas(lista):
    random.shuffle(lista)
    return lista

def repartir_cartas(baraja):
    mano = []
    for i in range(7):
        mano.append(baraja.pop())
    return mano

def empieza_jugador():
    return random.randint(1, 2)

def turno_jugada(jugador, cartacentro, baraja):
    escogecarta = True
    while escogecarta:
        print(jugador)
        print("Carta central: ", cartacentro[-1])
        carta = input("¿Qué carta quieres escoger? (Ej:'R8') o pulsa intro para pasar").upper()
        if carta == "":
            if len(baraja) == 0:
                print("Empate")
                baraja += cartacentro[:-1]
                cartacentro = [cartacentro[-1]]
                break
            robacarta = baraja.pop()
            jugador.append(robacarta)
            print(jugador)
            print("Carta central: ", cartacentro[-1])
            carta = input("¿Qué carta quieres escoger? (Ej:'R8') o pulsa intro para pasar").upper()
        if carta == "":
            return jugador, cartacentro, baraja
        if carta[0] == cartacentro[-1][0] or carta[1] == cartacentro[-1][1]:
            cartacentro.append(carta)
            if carta in jugador:
                posicion = jugador.index(carta)
                jugador.pop(posicion)
                escogecarta = False
            else:
                print("No tienes esa carta")
                escogecarta = True
        else:
            print("Debes elegir una carta que coincida en color o número")
    return jugador, cartacentro, baraja

def juego_uno(jugador1, jugador2, baraja):
    baraja = barajar_cartas(baraja)
    jugador1 = repartir_cartas(baraja)
    jugador2 = repartir_cartas(baraja)
    cartacentro = [baraja.pop()]
    turno = empieza_jugador()
    if turno == 1:
      while len(jugador1) > 0 and len(jugador2) > 0:
        print("Turno jugador 1:")
        jugador1, cartacentro, baraja = turno_jugada(jugador1, cartacentro, baraja)
        print("Turno jugador 2:")
        jugador2, cartacentro, baraja = turno_jugada(jugador2, cartacentro, baraja)
        jugador2, cartacentro, baraja = turno_jugada(jugador2,cartacentro, baraja)
      if len(jugador1)==0:
        return "GANA jugador 1"
      if len(jugador2)==0:
        return "GANA jugador 2"
    if turno==2:
      while(len(jugador1)>0 and len(jugador2)>0):
        print("Turno jugador 2:")
        jugador2, cartacentro, baraja = turno_jugada(jugador2,cartacentro, baraja)
        print("Turno jugador 1:")
        jugador1, cartacentro, baraja = turno_jugada(jugador1,cartacentro, baraja)
      if len(jugador1)==0:
        return "GANA jugador 1"
      if len(jugador2)==0:
        return "GANA jugador 2"


juego_uno(jugador1,jugador2,baraja)
