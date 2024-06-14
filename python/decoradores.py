def mi_decorador(funcion):
    def nueva_funcion(a,b):
        print("1111111")
        c = funcion(a,b)   

        print("22222222")
        return c 
    return nueva_funcion


@mi_decorador
def suma(a,b):
    print("entra a suma")
    return a + b


suma(3,9)


def mi_decorador2(funcion):
    def rasta(a):
        c = funcion(a)
        return c
    return rasta

@mi_decorador2
def my_function(a):
    print(a)


my_function("hola will")
