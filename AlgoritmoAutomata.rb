#Este es el algoritmo dedicado a la revision sintaxica del proyectos 
class Analizador
	attr_accessor :sumas, :linea, :lineal, :caracter, :ultima_palabra, :palabra, :error, :nlinea, :nlinea_error
	attr_accessor :cantidades, :nerror
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

		while (contador < lineal && self.error == false)
			caracter = linea[contador]
			case caracter
			#Inicio Letras
			when "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"
				if (palabra.length == 0)
					self.palabra = caracter
				else
					if(self.palabra[0]=="1"||self.palabra[0]=="2"||self.palabra[0]=="3"||self.palabra[0]=="4"||self.palabra[0]=="5"||self.palabra[0]=="6"||self.palabra[0]=="7"||self.palabra[0]=="8"||self.palabra[0]=="9"||self.palabra[0]=="0" )
						self.error = true 
						self.nerror = 1
					else
						self.palabra = palabra + caracter
					end

				end
			#inicio Digitos
			when "1", "2", "3", "4", "5", "6", "7","8", "9", "0"
				if(palabra.length == 0)
					self.palabra = caracter
				else

				end
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
