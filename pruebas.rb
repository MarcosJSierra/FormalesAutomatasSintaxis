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
lista = Lista_identificador.new()
lista.rec_palabra("holatu")
lista.rec_palabra("holatu")
lista.rec_palabra("holatu1")
lista.recorrer
