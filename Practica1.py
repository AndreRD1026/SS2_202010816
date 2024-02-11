import os

def menu_consultas():
        opcion_consulta = ''
        while opcion_consulta != '11':
            print("------------------ Consultas Disponibles ------------------")
            print("1. Select count de todas las tablas")
            print("2. Cantidad de tsunamis por año")
            print("3. Tsunamis por país")
            print("4. Promedio total de damage por país")
            print("5. Top 5 países con más muertes")
            print("6. Top 5 años con más muertes")
            print("7. Top 5 años que más tsunamis han tenido")
            print("8. Top 5 de países con mayor número de casas destruidas")
            print("9. Top 5 de países con mayor número de casas dañadas")
            print("10. Promedio de altura máxima del agua por cada país")
            print("11. Regresar al menu principal")
            print("------------------------------------------------------------")
            opcion_consulta = input('Ingrese una opción: ')
            if opcion_consulta == '1':
                print("Count de las tablas del modelo \n")
                comando = 'sqlcmd -S DESKTOP-U4HAKNQ\SQLEXPRESS -d SS2_Practica1 -i "C:\\Users\\Andre\\Desktop\\U\\SEMI 2\\Practica1\\SQL\\Consultas\\CONSULTA1.sql"'
                os.system(comando)
            elif opcion_consulta == '2':
                print("Cantidad de tsunamis por año \n")
                comando = 'sqlcmd -S DESKTOP-U4HAKNQ\SQLEXPRESS -d SS2_Practica1 -i "C:\\Users\\Andre\\Desktop\\U\\SEMI 2\\Practica1\\SQL\\Consultas\\CONSULTA2.sql"'
                os.system(comando)
            elif opcion_consulta == '3':
                print("Tsunamis por país \n")
                comando = 'sqlcmd -S DESKTOP-U4HAKNQ\SQLEXPRESS -d SS2_Practica1 -i "C:\\Users\\Andre\\Desktop\\U\\SEMI 2\\Practica1\\SQL\\Consultas\\CONSULTA3.sql"'
                os.system(comando)
            elif opcion_consulta == '4':
                print("Promedio total de damage por país \n")
                comando = 'sqlcmd -S DESKTOP-U4HAKNQ\SQLEXPRESS -d SS2_Practica1 -i "C:\\Users\\Andre\\Desktop\\U\\SEMI 2\\Practica1\\SQL\\Consultas\\CONSULTA4.sql"'
                os.system(comando)
            elif opcion_consulta == '5':
                print("Top 5 países con más muertes \n")
                comando = 'sqlcmd -S DESKTOP-U4HAKNQ\SQLEXPRESS -d SS2_Practica1 -i "C:\\Users\\Andre\\Desktop\\U\\SEMI 2\\Practica1\\SQL\\Consultas\\CONSULTA5.sql"'
                os.system(comando)
            elif opcion_consulta == '6':
                print("Top 5 años con más muertes \n")
                comando = 'sqlcmd -S DESKTOP-U4HAKNQ\SQLEXPRESS -d SS2_Practica1 -i "C:\\Users\\Andre\\Desktop\\U\\SEMI 2\\Practica1\\SQL\\Consultas\\CONSULTA6.sql"'
                os.system(comando)
            elif opcion_consulta == '7':
                print("Top 5 años que más tsunamis han tenido \n")
                comando = 'sqlcmd -S DESKTOP-U4HAKNQ\SQLEXPRESS -d SS2_Practica1 -i "C:\\Users\\Andre\\Desktop\\U\\SEMI 2\\Practica1\\SQL\\Consultas\\CONSULTA7.sql"'
                os.system(comando)
            elif opcion_consulta == '8':
                print("Top 5 de países con mayor número de casas destruidas \n")
                comando = 'sqlcmd -S DESKTOP-U4HAKNQ\SQLEXPRESS -d SS2_Practica1 -i "C:\\Users\\Andre\\Desktop\\U\\SEMI 2\\Practica1\\SQL\\Consultas\\CONSULTA8.sql"'
                os.system(comando)
            elif opcion_consulta == '9':
                print("Top 5 de países con mayor número de casas dañadas \n")
                comando = 'sqlcmd -S DESKTOP-U4HAKNQ\SQLEXPRESS -d SS2_Practica1 -i "C:\\Users\\Andre\\Desktop\\U\\SEMI 2\\Practica1\\SQL\\Consultas\\CONSULTA9.sql"'
                os.system(comando)
            elif opcion_consulta == '10':
                print("Promedio de altura máxima del agua por cada país \n")
                comando = 'sqlcmd -S DESKTOP-U4HAKNQ\SQLEXPRESS -d SS2_Practica1 -i "C:\\Users\\Andre\\Desktop\\U\\SEMI 2\\Practica1\\SQL\\Consultas\\CONSULTA10.sql"'
                os.system(comando)
            elif opcion_consulta == '11':
                print("")
                break
            elif opcion_consulta != "11":
                print("Ingrese una opcion correcta")


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
            comando = 'sqlcmd -S DESKTOP-U4HAKNQ\SQLEXPRESS -d SS2_Practica1 -i "C:\\Users\\Andre\\Desktop\\U\\SEMI 2\\Practica1\\SQL\\Aplicacion\\Borrar_modelo.sql"'
            os.system(comando)
            informacion_cargada = False
        elif opcion == '2':
            print("Opcion de crear modelo \n")
            comando = 'sqlcmd -S DESKTOP-U4HAKNQ\SQLEXPRESS -d SS2_Practica1 -i "C:\\Users\\Andre\\Desktop\\U\\SEMI 2\\Practica1\\SQL\\Aplicacion\\Crear_modelo.sql"'
            os.system(comando)
        elif opcion == '3':
            print("Opcion de extraer informacion \n")
            comando = 'sqlcmd -S DESKTOP-U4HAKNQ\SQLEXPRESS -d SS2_Practica1 -i "C:\\Users\\Andre\\Desktop\\U\\SEMI 2\\Practica1\\SQL\\Aplicacion\\Extraer_informacion.sql"'
            os.system(comando)
        elif opcion == '4':
            print("Opcion de cargar informacion \n")
            comando = 'sqlcmd -S DESKTOP-U4HAKNQ\SQLEXPRESS -d SS2_Practica1 -i "C:\\Users\\Andre\\Desktop\\U\\SEMI 2\\Practica1\\SQL\\Aplicacion\\Cargar_informacion.sql"'
            os.system(comando)
            informacion_cargada = True
        elif opcion == '5':
            if informacion_cargada == False :
                print("!! Error, debes cargar informacion primero para realizar consultas \n")
            else:
                print("Opcion de realizar consultas \n")
                menu_consultas()
        elif opcion != "6":
            print("Ingrese una opcion correcta \n")
        else:
            print("Gracias por usar el programa :D")
            break
menu()