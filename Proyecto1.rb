require 'gtk3'
def on_main_window_destroy(object)
	Gtk.main_quit()
end
puts "hola".methods
builder = Gtk::Builder.new()
builder.add_from_file('interfaz.glade')
builder.connect_signals{|handler| method(handler)}
builder.connect_signals do |handler|
	begin
		method handler 
	end
end
window1 = builder.get_object('ventanaPrincipal')
window1.show

Gtk.main