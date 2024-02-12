import os

def salida_consultas():
    print("Generando salida de las consultas...")
    consulta_1 = "Consultas\\Consulta_1.txt"
    consulta_2 = "Consultas\\Consulta_2.txt"
    consulta_3 = "Consultas\\Consulta_3.txt"
    consulta_4 = "Consultas\\Consulta_4.txt"
    consulta_5 = "Consultas\\Consulta_5.txt"
    consulta_6 = "Consultas\\Consulta_6.txt"
    consulta_7 = "Consultas\\Consulta_7.txt"
    consulta_8 = "Consultas\\Consulta_8.txt"
    consulta_9 = "Consultas\\Consulta_9.txt"
    consulta_10 = "Consultas\\Consulta_10.txt"
    comando = 'sqlcmd -S DESKTOP-U4HAKNQ\\SQLEXPRESS -d SS2_Practica1 -i "C:\\Users\\Andre\\Desktop\\U\\SEMI 2\\Practica1\\SQL\\Consultas\\CONSULTA1.sql" > ' + consulta_1
    comando1 = 'sqlcmd -S DESKTOP-U4HAKNQ\\SQLEXPRESS -d SS2_Practica1 -i "C:\\Users\\Andre\\Desktop\\U\\SEMI 2\\Practica1\\SQL\\Consultas\\CONSULTA2.sql" > ' + consulta_2
    comando2 = 'sqlcmd -S DESKTOP-U4HAKNQ\\SQLEXPRESS -d SS2_Practica1 -i "C:\\Users\\Andre\\Desktop\\U\\SEMI 2\\Practica1\\SQL\\Consultas\\CONSULTA3.sql" > ' + consulta_3
    comando3 = 'sqlcmd -S DESKTOP-U4HAKNQ\\SQLEXPRESS -d SS2_Practica1 -i "C:\\Users\\Andre\\Desktop\\U\\SEMI 2\\Practica1\\SQL\\Consultas\\CONSULTA4.sql" > ' + consulta_4
    comando4 = 'sqlcmd -S DESKTOP-U4HAKNQ\\SQLEXPRESS -d SS2_Practica1 -i "C:\\Users\\Andre\\Desktop\\U\\SEMI 2\\Practica1\\SQL\\Consultas\\CONSULTA5.sql" > ' + consulta_5
    comando5 = 'sqlcmd -S DESKTOP-U4HAKNQ\\SQLEXPRESS -d SS2_Practica1 -i "C:\\Users\\Andre\\Desktop\\U\\SEMI 2\\Practica1\\SQL\\Consultas\\CONSULTA6.sql" > ' + consulta_6
    comando6 = 'sqlcmd -S DESKTOP-U4HAKNQ\\SQLEXPRESS -d SS2_Practica1 -i "C:\\Users\\Andre\\Desktop\\U\\SEMI 2\\Practica1\\SQL\\Consultas\\CONSULTA7.sql" > ' + consulta_7
    comando7 = 'sqlcmd -S DESKTOP-U4HAKNQ\\SQLEXPRESS -d SS2_Practica1 -i "C:\\Users\\Andre\\Desktop\\U\\SEMI 2\\Practica1\\SQL\\Consultas\\CONSULTA8.sql" > ' + consulta_8
    comando8 = 'sqlcmd -S DESKTOP-U4HAKNQ\\SQLEXPRESS -d SS2_Practica1 -i "C:\\Users\\Andre\\Desktop\\U\\SEMI 2\\Practica1\\SQL\\Consultas\\CONSULTA9.sql" > ' + consulta_9
    comando9 = 'sqlcmd -S DESKTOP-U4HAKNQ\\SQLEXPRESS -d SS2_Practica1 -i "C:\\Users\\Andre\\Desktop\\U\\SEMI 2\\Practica1\\SQL\\Consultas\\CONSULTA10.sql" > ' + consulta_10
    os.system(comando)
    os.system(comando1)
    os.system(comando2)
    os.system(comando3)
    os.system(comando4)
    os.system(comando5)
    os.system(comando6)
    os.system(comando7)
    os.system(comando8)
    os.system(comando9)

def menu():
    opcion = ''
    informacion_cargada = False
    while opcion != '6':
        print('------------ Menu --------------')
        print('1. Borrar Modelo')
        print('2. Crear Modelo')
        print('3. Extraer informacion')
        print('4. Cargar informacion')
        print('5. Realizar consultas')
        print('6. Salir')
        print("--------------------------------")
        opcion = input('Ingrese una opción: ')
        if opcion == '1':
            print("Opcion de borrar modelo \n" )
            comando = 'sqlcmd -S DESKTOP-U4HAKNQ\\SQLEXPRESS -d SS2_Practica1 -i "C:\\Users\\Andre\\Desktop\\U\\SEMI 2\\Practica1\\SQL\\Aplicacion\\Borrar_modelo.sql"'
            os.system(comando)
            informacion_cargada = False
        elif opcion == '2':
            print("Opcion de crear modelo \n")
            comando = 'sqlcmd -S DESKTOP-U4HAKNQ\\SQLEXPRESS -d SS2_Practica1 -i "C:\\Users\\Andre\\Desktop\\U\\SEMI 2\\Practica1\\SQL\\Aplicacion\\Crear_modelo.sql"'
            os.system(comando)
        elif opcion == '3':
            print("Opcion de extraer informacion \n")
            comando = 'sqlcmd -S DESKTOP-U4HAKNQ\\SQLEXPRESS -d SS2_Practica1 -i "C:\\Users\\Andre\\Desktop\\U\\SEMI 2\\Practica1\\SQL\\Aplicacion\\Extraer_informacion.sql"'
            os.system(comando)
        elif opcion == '4':
            print("Opcion de cargar informacion \n")
            comando = 'sqlcmd -S DESKTOP-U4HAKNQ\\SQLEXPRESS -d SS2_Practica1 -i "C:\\Users\\Andre\\Desktop\\U\\SEMI 2\\Practica1\\SQL\\Aplicacion\\Cargar_informacion.sql"'
            os.system(comando)
            informacion_cargada = True
        elif opcion == '5':
            if informacion_cargada == False :
                print("!! Error, debes cargar informacion primero para realizar consultas \n")
            else:
                salida_consultas()
                print("Se ha generado la salida de todas las consulta, se pueden encontrar en la carpeta 'Consultas' ")
        elif opcion != "6":
            print("Ingrese una opcion correcta \n")
        else:
            print("Gracias por usar el programa :D")
            break
menu()