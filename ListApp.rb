require "./list.rb"
require "./item.rb"








class ListApp
  attr_writer :list
  def initialize()
    @list = List.new
  end

  def run
    puts "Bienvenido a nuestra App de Listas"
    loop do # LOOP DE FUNCIONAMIENTO DE LA APP
      puts
      puts "a - Agregar artículo"
      puts "r - Remover artículo"
      puts "v - Ver artículos"
      puts "m - Marcar artículo"
      puts "b - Borrar todos los artículos"
      puts "s - Salir de la App"



      input = gets.chomp
      case input
      when "a"  # AGREGAR ARTICULO
        puts "¿Qué deseas agregar?"
        item = gets.chomp
        @list.add_item(item)
        30.times {print "*"}
        puts "\n#{item} ha sido agregado a tu lista"
        30.times {print "*"}

        when "r" # REMOVER ARTICULO
        puts "Qué artículo quieres eliminar? Ingrese #"
        index = gets.chomp #chomp nos da string
        item = @list.remove_item(index.to_i) # to_i nos da número
        30.times {print "*"}
        puts "\n #{item.text} ha sido eliminado"
        30.times {print "*"}

        when "v" # VER ARTICULOS
        @list.show_all()

        when "m" # MARCAR ARTICULO
          puts "Qué artículo quieres marcar? Ingrese #"
          index = gets.chomp #chomp nos da string
          item = @list.check_item(index.to_i) # to_i nos da número
          40.times {print "*"}
          puts "\n #{item.text} ha sido marcado"
          40.times {print "*"}

        when "b" # REMOVER TODO
          puts "Deseas remover todos los artículos? s/n"
        input = gets.chomp
        if input == "s"
          puts "Todos los artículos han sido borrados"
        @list.remove_all()
        else
          puts "Operación cancelada"
        end

      when "s" # SALIR  DE LA APP
        break

      else
        puts
        puts "Operación no reconocida"
        puts "Introduzca un valor correspondiente en minúscula"
        end
      end
      puts "Gracias por utilizar nuestra App"

  end
end

list_app = ListApp.new
list_app.run
