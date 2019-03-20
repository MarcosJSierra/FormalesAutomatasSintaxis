#Este es el algoritmo dedicado a la revision sintaxica del proyectos 
class Nodo
	attr_accessor :siguiente, :palabra, :numero, :existe
	def initialize()
		self.numero = 0
		self.palabra =""
	end
	def set_palabra(pal)
		self.palabra = pal 
		self.numero = 1
	end 
	def inc_palabra()
		self.numero += 1
	end
	def set_nextnodo(nodos)
		self.siguiente = nodos 
	end 

end
class Lista_identificador
	attr_accessor :i, :nodot , :f, :nnodos, :existe, :palabrae
	def initialize()
		self.i = Nodo.new()
		self.nnodos = 0
	end
	def buscar()
		x = 0
		self.nodot = i 
		while (x < self.nnodos)
			if (nodot.palabra == palabrae)
				self.existe = true
				self.nodot.inc_palabra
				x=self.nnodos
			else
				self.nodot = self.nodot.siguiente
			end
			x+=1
		end
	end
	def rec_palabra(pala)
		self.existe = false
		self.palabrae = pala
		if (nnodos == 0)
			self.i.set_palabra(self.palabrae)
			self.nnodos += 1 
		else
			self.buscar()
			if(self.existe == false)
				temp = Nodo.new()
				temp.set_palabra(self.palabrae)
				self.nnodos += 1
				if (self.nnodos == 2)
					self.f = temp
					self.i.set_nextnodo(f)
				else
					self.f.set_nextnodo(temp)
					self.f = temp
				end
			end
		end 
	end
	def recorrer()
		if(self.nnodos > 0)
			x = 0
			temp = i
			while (x < self.nnodos)

				puts temp.palabra + " | "+ temp.numero.to_s
				temp = temp.siguiente
				x += 1 
			end
		end 
	end

end 
class Analizador
	attr_accessor :sumas, :linea, :lineal, :caracter, :ultima_palabra, :palabra, :error, :nlinea, :nlinea_error
	attr_accessor :cantidad, :nerror
	def initialize()
		self.cantidad=Array.new(27)
		x=0
		while(x<27)
			cantidad[x]=0
			x+=1
		end

		self.sumas = 0
		self.lineal = 0
		self.error = false
		self.palabra = ""
		
	end
	def aumentar
		self.sumas = self.sumas + 1
	end
	#diferenciar un palabra de un numero
	def discriminacion()
		case self.palabra
		when "suma"
		when ""
		else
		end
		self.palabra = ""
	end
	def analizarLinea(lin)
		self.linea = lin
		self.lineal = self.linea.length

		contador = 0

		while (contador < self.lineal && self.error == false)
			self.caracter = self.linea[contador]
			case caracter
			#Inicio Letras
			when "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"
				if (self.palabra.length == 0)
					self.palabra = self.caracter
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
					self.palabra = palabra + caracter
				end
			#inicio operadores 
			when "+"
				if(palabra.length == 0)
					self.cantidad[10] += 1  
				else
					self.cantidad[10] += 1  
					self.discriminacion()
				end
			when "-"
				if(palabra.length == 0)
					self.cantidad[11] += 1  
				else
					self.cantidad[11] += 1  
					self.discriminacion()
				end
			when "*"
				if(palabra.length == 0)
					self.cantidad[12] += 1  
				else
					self.cantidad[12] += 1  
					self.discriminacion()
				end
			when "/"
			if(palabra.length == 0)
					self.cantidad[13] += 1  
				else
					self.discriminacion()
					self.cantidad[13] += 1  
				end		
			when "%"
				if(palabra.length == 0)
					self.cantidad[14] += 1  
				else
					self.discriminacion()
					self.cantidad[14] += 1 
				end
			when "="
				if(palabra.length == 0)
					self.cantidad[15] += 1  
				else
					if(self.palabra[0]=="=")
						self.cantidad[16] +=1
					else 
						if( self.palabra[0]==">")
							self.cantidad[19] +=1
						else 
							if( self.palabra[0]=="<")
								self.cantidad[20] +=1
							else
								self.discriminacion()
								self.cantidad[15] = self.cantidad[15] + 1 


							end
						end 
					end
				end
			when "<"
				if(palabra.length == 0)
					self.cantidad[17] += 1  
				else 
					if(self.palabra[0]="=")
						self.error =true
						self.nerror = 2
					else
						self.discriminacion()
						self.cantidad[17] += 1
					end  
				end
			when ">"
				if(palabra.length == 0)
					self.cantidad[18] += 1  
				else 
					if(self.palabra[0]="=")
						self.error =true
						self.nerror = 2
					else
						self.discriminacion()
						self.cantidad[18] += 1 
					end
				end
			when ")"
				if(palabra.length == 0)
					self.cantidad[21] += 1  
				else
					self.discriminacion()
					self.cantidad[21] += 1  
				end
			when "("
				if(palabra.length == 0)
					self.cantidad[22] += 1  
				else
					self.discriminacion()
					self.cantidad[22] += 1  
				end
			when "{"
				if(palabra.length == 0)
					self.cantidad[23] += 1  
				else
					self.discriminacion()
					self.cantidad[23] += 1  
				end
			when "}"
				if(palabra.length == 0)
					self.cantidad[24] += 1  
				else
					self.discriminacion()
					self.cantidad[23] += 1  
				end
			when ";"
				if(palabra.length == 0)
					self.cantidad[26] += 1  
				else
					self.discriminacion()
					self.cantidad[23] += 1  
				end
			when " "
				if(palabra.length != 0)
					self.discriminacion()
				end
			else 
				self.error =true
				self.nerror = 3
			end
			puts "palabra:" + self.palabra
			contador += 1
		end
		if self.error == true 
			puts "hay error"
		end 
	end
end
analizador = Analizador.new()
texto_revisar ="entero ho1latu = 1"
analizador.analizarLinea(texto_revisar)
texto_revisar = "entero holayo = 2"
#analizador.analizarLinea(texto_revisar)
texto_revisar = "entero final"
texto_revisar = "final = holatu + hola"
