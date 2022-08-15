print('''
2)   Crear una lista en Python denominada “Dueno2”  y recorrerla con un bucle  mostrando sus elementos por pantalla
con excepción del DNI y el apellido. Los elementos de la lista son:

           23546987,  “Maria”,  “Perez”, 4789689,  “Pueyrredon  811”

 que representan los datos del dueño de un perro (DNI, nombre, apellido, teléfono y dirección)
 ''')

dueno2 = [23546987, "Maria", "Perez", 4789689, "Pueyrredon  811"]

#Solución con dos if
for posicion in range(len(dueno2)):
    if posicion == 2:
        continue
    if posicion > 0:
        print(dueno2[posicion])

#Solución con if-else        
for posicion in range(len(dueno2)):
    if posicion == 0 or posicion == 2:
        continue
    else:
        print(dueno2[posicion])