#Este es el algoritmo dedicado a la revision sintaxica del proyectos 
class Analizador
	attr_accessor :sumas, :linea, :lineal, :caracter, :ultima_palabra, :palabra, :error, :nlinea, :nlinea_error
	attr_accessor :cantidades
	def initialize()
		self.cantidades=Array.new(27)
		self.sumas = 0
		self.lineal = 0
		self.error = false
		
	end
	def aumentar
		self.sumas = self.sumas + 1
	end
	def analizarLinea(lin)
		self.linea = lin
		self.lineal = self.linea.length

		contador = 0

		while (contador < lineal)
			caracter = linea[contador]
			case caracter
			#Inicio Letras
			when "a"
				puts "caracter a"
			when "b"
			when "c"
			when "d"
			when "e"		
			when "f"
			when "g"
			when "h"
			when "i"
			when "j"
			when "k"
			when "l"
			when "m"
			when "n"
			when "o"
				puts "caracter o"
			when "p"
			when "q"
			when "r"
			when "s"
			when "t"
			when "u"
			when "v"
			when "w"		
			when "x"
			when "y"
			when "z"
			#inicio Digitos
			when "1"
			when "2"
			when "3"
			when "4"
			when "5"
			when "6"
			when "7"
			when "8"
			when "9"
			when "0"
			#inicio operadores 
			when "+"
				if(palabra.length == 0)
					self.cantidades[10]
				else
				end
			when "-"
			when "*"
			when "/"		
			when "%"
			when "="
			when "<"
			when ">"
			when ")"
			when "("
			when "{"
			when "}"
			when ";"
			when " "
			else 
				error =true
			end

			contador += 1
		end
	end
end
analizador = Analizador.new()
suma = 0 
suma = suma + 1 
texto_revisar ="entero holatu = 1"
analizador.analizarLinea(texto_revisar)
texto_revisar = "entero holayo = 2"
texto_revisar = "entero final"
texto_revisar = "final = holatu + hola"
