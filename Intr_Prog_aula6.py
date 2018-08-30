import turtle

frank = turtle.Turtle()
'''comentario'''
"""comentario"""
#comentario

'''funcao desenha quadrado colorido'''
def draw_square(turtle , lado , color ):
    frank.fillcolor(color )
    frank.begin_fill()
    frank.fd(lado)
    frank.left(90)
    frank.fd(lado)
    frank.left(90)
    frank.fd(lado)
    frank.left(90)
    frank.fd(lado)
    frank.left(90)
    frank.end_fill()
    return

def DeslocaDireita( turtle , distance ):
    turtle.up()
    turtle.fd(distance)
    turtle.down()
    return

frank.reset()

#draw_square(frank , 100 , 'blue' )
#DeslocaDireita(frank , 100)
#draw_square(frank , 50 , 'red' )
#DeslocaDireita(frank , 50)
#draw_square(frank , 25 , 'green' )

frank.reset()
lado = 100
draw_square(frank , lado , 'white')
DeslocaDireita(frank , -100)
draw_square(frank , lado , 'white')
frank.right(90)
draw_square(frank , lado , 'white')
frank.right(90)
DeslocaDireita(frank, -200)
draw_square(frank, lado , 'white')
