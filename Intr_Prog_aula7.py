import turtle
import random

def posiciona(t,x,y,ang):
    t.penup()
    t.goto( x , y )
    t.setheading( ang )
    t.pendown()
    

def mudaCaneta(t,cor,esp):
    t.color( cor )
    t.pensize( esp )
    

def desenhaUm(t):
    mudaCaneta( t , "red" , 10 )
    t.setheading( 90 )
    t.fd( 100 )
    t.setheading( 220 )
    t.fd( 40 )

def desenhaCoisa(t):
    desenhaUm(t)
    posiciona(t , 0 , 0 , 180)
    desenhaUm(t)
    

jan = turtle.Screen()	#  a variável jan referencia a janela p/desenho
jan.bgcolor("lightgreen")       # define a cor de fundo da janela

pat = turtle.Turtle()
esp=random.randint(1,8)

posiciona( pat , 0 , 0 , 0 )
desenhaCoisa(pat)

#escreva, aqui, o código para desenhar a figura do enunciado

jan.exitonclick()		#a janela é fechada no clique do mouse
