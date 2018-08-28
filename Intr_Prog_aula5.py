import turtle

frank = turtle.Turtle()

def draw_line(turtle):
    frank.color('red')
    frank.fd(100)
    frank.color('blue')
    frank.fd(100)
    return

frank.reset()
frank.width(10)
frank.up()
frank.goto(-300,0)
frank.down()
draw_line(frank)
draw_line(frank)
draw_line(frank)

frank.reset()

def draw_square(turtle):
    frank.fd(100)
    frank.left(90)
    return

frank.right(45)
frank.fillcolor('blue')
frank.begin_fill()
draw_square(frank)
draw_square(frank)
draw_square(frank)
draw_square(frank)
frank.end_fill()  
frank.left(45)

frank.reset()

def draw_triangle(turtle):
    frank.fillcolor('red')
    frank.begin_fill()
    frank.fd(100)
    frank.right(120)
    frank.fd(100)
    frank.right(120)
    frank.fd(100)
    frank.end_fill()
    return

draw_triangle(frank)

frank.reset()

frank.circle(30)

frank.reset()

frank.circle(100)
frank.up()
frank.left(90)
frank.fd(50)
frank.right(90)
frank.down()
frank.circle(50)
