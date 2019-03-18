#Este es el algoritmo dedicado a la revision sintaxica del proyectos 
class Analizador
	attr_accessor :sumas, :linea, :lineal, :caracter, :ultima_palabra, :palabra
	def initialize()
		self.sumas = 0
		self.lineal = 0
		#linea = "hola"
	end
	def aumentar
		self.sumas = self.sumas + 1
	end
	def analizarLinea(lin)
		self.linea = lin
		self.lineal = self.linea.length

		contador = 0

		while (contador < lineal)
			
			puts linea[contador]
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
