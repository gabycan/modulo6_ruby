require_relative "modulo_usuarios" #enlazar los archivos modulo_usuarios.rb
require_relative "modulo_impresiones" #enlazar los archivos modulo_impresiones.rb

include ModuloUsuarios # incluye el m贸dulo usuarios # comience por may煤sculas 
include ModuloImpresiones # incluye el m贸dulo impresiones

module ModuloMenu

    def mostrar_menu()
        opcion = 0
        while opcion !=3
            system ("clear")
            puts "Generardor de datos".center(50, "-")
            puts "Ingrese la opci贸n que desea:"
            puts "1. Generar lista de usuario con correo 馃摟"
            puts "2. Generar lista de usuario con gustos 馃懇"
            puts "3. Salir 馃洬"

            opcion = gets.chomp.to_i

            if opcion == 1
                con_cantidad_registros = obtener_cantidad_registros

                arreglo_usuarios_correo_faker = generar usuario_con_correo(con_cantidad_registros) #m贸dulo usuarios
                imprimir_usuarios_con_correos(arreglo_usuarios_correo_faker) #m贸dulo impresiones

            elsif opcion == 2

                cantidad = obtener_cantidad_registros

                arreglo_usuarios_con_gustos = generar usuarios_con_gustos(cantidad) #m贸dulo usuarios
                imprimir_usuarios_con_gustos(arreglo_usuarios_con_gustos) #m贸dulo impresiones

            elseif opcion == 3
                puts "Saliendo del generador de datos 馃憢"
            
            else
                puts "Opci贸n no v谩lida 馃Ж"
            end
            puts "Presione ENTER para continuar"
            gets
        end
    end

    def obtener_cantidad_registros
        puts "Introduzca la cantidad de registros 馃敡"
        return gets.chomp.to_i
    end

end