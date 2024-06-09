#https://ruby-doc.com/docs/ProgrammingRuby/html/tut_classes.html
# https://github.com/maniramakumar/the-best-ruby-books/blob/master/books/Programming%20Ruby%201.9%20%26%202.0%20-%20The%20Pragmatic%20Programmers'%20Guide%20-%20Fourth%20Edition.pdf

# ================== yield ================== 
# 1. Método Básico con yield
# 2. yield con Argumentos
# 3. Verificar si se Pasó un Bloque
# 4. Métodos con Parámetros y Bloques
# 5. Usando yield para Iteradores Personalizados
# 6. Retornando Valores desde el Bloque
# 7. Uso Avanzado con Bloques Anidados

def function 
	p "1"
	yield 
	p "2"
end
function{ puts "something" }

puts 
puts

def method_name argumentValue
	puts "being"
  yield argumentValue
  puts "end"
end
method_name("richar"){|argument| p  "This is the block side \n #{argument}"}

def greet name
	puts "hello #{name}"
	yield(name)
	puts "end #{name}"
end

greet("name"){|x| p "we are into the block #{x} #{x.size}"}

puts 
puts 

def greet 
	puts "begin"
	if block_given?
		yield
	else
		puts "there is no block" 
	end
	puts "end"
end

greet
greet{p "wiiii there block"}


def repeat n
	n.times{ yield }
end
repeat(3){|x| puts "heelo"}
=begin
=end
=begin

before we continue a little bit of Bucles en Ruby

 * loop
 * times
 * upto 
 * downto 
 * step  
 * for...in  
 * while 
 * each

=end

 # loop
x = 0 
loop do 
	p x
	x += 1
 break if x == 10
end

 # times
3.times{ puts "times" }
 
 # upto 
1.upto(10){|x| p "#{x} lakjf"}

1.upto(10) do |x|
	p "#{x} lakjf"
end

 # downto 

10.downto(1){|x| p "#{x} lakjf"}

10.downto(1) do |x|
	p "#{x} lakjf"
end

 # step  
1.step(10,2) do |number|
	puts "#{number}"
end

 # for...in  
arr = [1,2,3,4,5]
for x in arr
	p "#{x} -"
end

 # while 
vidas = 3
while vidas > 0
  puts "Sigo vivo. Tengo #{vidas} vidas"
  vidas -= 1
end 
 #each
	[1,2,3,4,5].each{|x| p "#{x} * "}




# Before we continue a little bit of Iteradores en Ruby

class Collection 
	def initialize *elements
		@elements= *elements
	end
	def each
		for element in @elements
			yield(element)
		end
	end
end
collection = Collection.new(11,12,13,14,15,16)
collection.each{|x| puts x} 


def sum(x,y)
	result = yield(x,y)
end

p sum(12,12){|x,y| x+y}


def outer
	puts "outer"
	yield
end

def inner
	puts "inner"
	yield
end

outer do 
	inner do 
		puts "we are in "
	end 
end


def more_practice
	yield
end
array = [10,20,30,40,50]
ia = more_practice {
	array.map{|num| num * 2 }
}

puts ia 

def student
	p "Strudent in "
	yield 
end

student{
	puts "we are in the block"
	
	students = 0 
	while students < 10 
		p "student number #{students}"
		students += 1
	end
	puts "#{students} students jut crossed the street"
}

 #                                yield 
# yield is used inside of a method definition to say “hold on! I’ve got some code I need to run first”. 
# The code that yield is a block of code that you pass in when you call that method. It’s super useful in 
# allowing us flexibility within our code, depending on whatever our needs are at that time.
#
#
#
# =====================================================================================
#
#
#
#
=begin
  1 # My own version of mash method in ruby 
   2 module Enumerable 
   3   def mash
   4     hash = {}
   5     each do |item|
   6       key, value = yield(item)
   7       hash[key] = value
   8     end
   9     hash
  10   end
  11 end
  12 
  13 ["rides","bicy","moto"].mash{|x| [x,x.length]}  #{"rides"=>5, "bicy"=>4, "moto"=>4}
  14 

=end


module Enumerable 
	def myMap
		arr = []
		each do |item|
			arr << yield(item)

		end
		arr
	end
end


a = [1,2,3,4,5,6,7].myMap{|x| x * x }
a = [1,2,3,4,5,6,7].myMap{|x| x * x }
puts a.inspect

def my_map(arr)
	new_arr = []
	arr.each do |x| 
		new_arr << yield(x)
	end
	new_arr
end
array = [1,2,3,4,5,6,7]
aaa = my_map(array) {|x| x * x}
p aaa.inspect
p aaa

 # ================== yield ==================
   # 1. Método Básico con yield
def my_method
	yield
end
my_method{puts "here"}
   # 2. yield con Argumentos
def my_method_
	yield("argumento yield")
end
my_method_{|item| puts "#{item}"}
   # 3. Verificar si se Pasó un Bloque
def my_method__
	if block_given?
		p "Yes"
	else
		p "No"
	end
	yield
end
my_method__{puts "----------"}

   # 4. Métodos con Parámetros y Bloques
def xx(name)
	yield(name)
end
xx("name"){|item| puts "#{item}"}
   # 5. Usando yield para Iteradores Personalizados
#una forma de hacer
def my_own_map(array)
	new_array = []
	array.each do |element|
		new_array << yield(element)
	end
	new_array
end
a = [1,2,3,4,5,6,7,8,9]
b = my_own_map(a){|x| (x * x)+10 }
p b.inspect
# otra forma de hacer
module Enumerable 
	def my_own_map
		new_array = []
		each do |item| 
			new_array << yield(item)
		end
		new_array
	end
end
a = [1,2,3,4,5,6,7,8,9]
b = a.my_own_map{|item| item * item }
p b
#
# 6. Retornando Valores desde el Bloque
module Enumerable 
	def my_own_hash
		new_hash = {}
		each do |item| 
			key, value = yield(item)
			p "key: #{key}"
			p "value: #{value}"
			new_hash[key.to_s] = value.to_s

		end
		new_hash 
	end
end
   # 7. Uso Avanzado con Bloques Anidados
o = [1,2,3,4].my_own_hash{|item| [item, item*item]}
p o
p o
p o
=begin
13 module Enumerable
  14   def mash
  15     hash = {}
  16     each do |item|
  17       key, value = yield(item)
  18       hash[key] = value
  19     end
  20     hash
  21   end
  22 end
=end

call_proc = Proc.new do 
	p "i am proc"
end
call_proc.call


call_proc = Proc.new do |x|
	p "i am proc with #{x}"
end
call_proc.call("X")

def ole oee
	oee.call
end

ole(call_proc)

def myDef
	Proc.new do |n|
		p "call proc with n as argument #{n}"
	end
end
g = myDef
g.call("N")

# proc with map 
my_procc = Proc.new{|x| x * 2 }
p my_procc.call(254)

array = [1,2,3,4,4]
my_proccc = Proc.new do |x|
	x * 2
end
p c = array.map(&my_proccc) 

my_proc = Proc.new{|item| item >= 3}

p c = array.filter(&my_proc) 

# ¿Qué hace el símbolo &?
# Convertir un Proc en un bloque: Cuando pasas un Proc a un método que espera un bloque, usas & para realizar la conversión.
# Convertir un bloque en un Proc: Cuando defines un método y quieres recibir un bloque como un argumento de tipo Proc, usas & en la definición del método.
# El símbolo & en Ruby es un operador que convierte un objeto Proc (o un bloque de código) en un bloque y viceversa.
puts " el operador & CONVIERTE UN OBJECTO PROC EN UN BLOQUE Y VICEVERSA"

odd_or_even = lambda do |number|
	if number % 2 == 0
		p "#{number} is even "
	else
		p "#{number} is odd"
	end
end
odd_or_even.call(234)
odd_or_even.call(2)
odd_or_even.call(3)


def beaf(odd_or_even)
	odd_or_even.call(25)
end
beaf(odd_or_even)


odd_or_even = ->(number){
	p "new SYNTAX"
	if number % 2 == 0
		p "#{number} is even "
	else
		p "#{number} is odd"
	end
}
odd_or_even.call(234)
odd_or_even.call(2)
odd_or_even.call(3)




odd = ->(number){
	number.odd?
}
array = [1,2,3,4,4]

p c = array.filter(&odd) 


#append( aSong ) » list
#Append the given song to the list.
#deleteFirst() » aSong
#Remove the first song from the list, returning that song.
#deleteLast() » aSong
#Remove the last song from the list, returning that song.
#[ anIndex } » aSong
#Return the song identified by anIndex, which may be an integer index or a song title.




#================================= classes and POO ==============================


class SongList
	def initialize
			@songs = Array.new
	end

	def append(aSong)
		@songs.push(aSong)
		self
	end

	def deleteFirst 
		@songs.shift
	end

	def deleteLast 
		@songs.pop
	end
end

list = SongList.new

class Song
	def initialize(name, artist,duration)
		@name = name
		@artist = artist
		@duration = duration
	end
end

aSong = Song.new("Bicylops", "Fleck", 260)
p aSong.inspect 
p aSong


class Song
	def to_s
		"Song: #{@name}, -- #{@artist}, #{@duration}"
	end
end

p aSong.to_s

puts "In Ruby, classes are never closed: you can always add methods to an existing class. "


class KaraokeSong < Song
	def initialize(name,artist, duration,lyrics)
		super(name,artist, duration)
		@lyrics = lyrics 
	end
end
asong = KaraokeSong.new("my way","sinatra",234, "and now bla bla ")
p asong.to_s 



class KaraokeSong < Song
	def initialize(name,artist, duration,lyrics)
		super(name,artist, duration)
		@lyrics = lyrics 
	end

	def to_s
		super + " [#{@lyrics}] "
	end
end
asong = KaraokeSong.new("my way","sinatra",234, "and now lyrics of song bla bal bla bla ")
p asong.to_s 


class Song
	def name 
		@name
	end
	
	def artist
		@artist
	end
	
	def duration 
		@duration
	end
	
end

aSong = Song.new("ella por ella","victor manuel",234)
p aSong.name 
p aSong.artist 
p aSong.duration 



class Song 
	attr_accessor :name, :artist, :duration
end

a = Song.new("vivo por ella","andrea boccelli", 234)

p a.name 
p a.artist 
p a.duration 

class Song
	def duration=(newDuration)
		@duration = newDuration 
	end
end

aa = Song.new("name cancion","andrea boccelli", 234)
puts 
puts 
p aa.duration 
p aa.duration = 100
p aa.duration 

class Song 
	attr_writer :duration
end

aa = Song.new("name cancion","andrea boccelli", 234)
p aa.duration = 200 
p aa.duration 

puts puts 
class Song 
	def durationInMinutes
		@duration/60.0
	end

	def durationInMinutes=(value)
		@duration = (value * 60 ).to_i
	end
end
aSong = Song.new("Bicylops", "Fleck", 260)
p aSong.durationInMinutes 
p aSong.durationInMinutes = 12 
p aSong.duration

# las variables de clase den ser inicializadas 
# Unlike global and instance variables, class variables must be initialized 
# before thely are used. Ogten this initialization is just a simple assignment in the body of the class definition.
 


# Class variables are private to aclass and its intances. I you
# want to make them accesssible to the outsde world , wyou will need to write an accessor methid.

class Song
	@@play = 0 
	def initialize(name, artist, duration)
		@name = name,
		@artist = artist
		@duration = duration 
		@play = 0
	end
	def play
		@play += 1
		@@play += 1
		"This song: #{@play} plays.Canciones totales tocadas: #{@@play} "
	end
end 
s1 = Song.new("Song1", "Artist1", 234)  # test songs..
s2 = Song.new("Song2", "Artist2", 345)
p s2.play
p s2.play
p s2.play
p s1.play
p s2.play
p s1.play
p s1.play
p s1.play




# Class methods are defined by placing the class name and a period in from of the 
# method name.
class Example 
	def Example.classMethod # ===> metodo de clase 
	end

	def methodo_de_instancia  # ===> metodo de instancia   
	end
end

class SongList
	MaxTime = 5*60  # 5 minutes (300 segundos) 

	def SongList.isTooLong(aSong)
		return aSong.duration > MaxTime
	end

	def self.bad(aSong)
		aSong.name == "myName"
	end
end

song1 = Song.new("name","artist",260)
p SongList.isTooLong(song1) # ==> false

p SongList.bad(song1) # ==> false

song2 = Song.new("The Calling", "Santana", 468)
SongList.isTooLong(song2)   # ==> true 

class Logger
  private_class_method :new
  @@logger = nil
  def Logger.create
    @@logger = new unless @@logger
    @@logger
  end
end
p Logger.create.object_id
p Logger.create.object_id
p Logger.create.object_id
p Logger.create.object_id
p Logger.create.object_id
p Logger.create.object_id
#                                     OOP
#
#
# Access control
# Public methods: can be called by abyone -- there is no access control .
# 		Methdos are public by defautl ( except for initialize, which is always private )
#
# Protected methods : can be invoked only by onject of the definning class and its subclases. 
#			Access is kept whithn the family.
#
# Private methods: cannot be called whit an explicit receiver. Beacuse you 
# 		cannot specify an obnject when using them .
# 		Private methods ca be called only in the defining class and by 
# 		direct descendents within that same object .
#
#
#
# Important:   
# 		protected ====> it may be called by any instance of the defining class or its subclasses.
# 		private   ====> It may be called only whithn the context of the called object. 
 #
#

# Estos metodos proporciona un nivel intermedio de control de acceso, más restringido que 
# los metodos publicos pero menos restrictivos que los metodos privados
#
#  metodos protegidos:
#  		Los metodos protegidos son aquellos que pueden ser llamados cuando:
#  			* pueden ser llamados solo dentro de la misma clase 
#  			* pueden ser llamados por instancias de la misma clase 
#  			* pueden ser llamados por sus subclases 


#  		Los metodos protegidos pueden llamarlos cuando son:
#  			* Misma clase 
#  			* instancias de la misma clase 
#  			* por sus subclases 
#
#  			ejemplo metodos protegidos
class Persona
	def initialize(nombre)
		@nombre = nombre 
	end

	def mostrar_nombre
		@nombre
	end
	
	def llamar_metodo_protegido # primera forma llamar al metodo dentro de la misma clase
 		nombre_protegido
	end

	protected
	def nombre_protegido
		@nombre
	end
end

class Estudiante < Persona
	def acceder_a_metodo_protegido
		nombre_protegido
	end
	def obtener_nombre_protegido(instancia_classe)
		instancia_classe.nombre_protegido # segunda forma de llamar metodo protegido. Por medio de la instancia de la clase 
	end
end

persona = Persona.new("juan")
p persona.mostrar_nombre # juan 
p "ol2"
p persona.llamar_metodo_protegido
p "ol2"
# persona.obtener_nombre_protegido ===> repeat.rb:710:in `<main>': undefined method `obtener_nombre_protegido' for #<Persona:0x0000562d3947aa10 @nombre="juan"> (NoMethodError)

instancia_estudiante = Estudiante.new("roberto")
p instancia_estudiante.obtener_nombre_protegido(instancia_estudiante)
p instancia_estudiante.acceder_a_metodo_protegido


# ejemplo metodos privados 

class MyClase
	def initialize(a,b)
		@a = a
		@b = b
 	end
	def show_private_methods
		"#{return_a} #{return_b}"
	end
	private 
	def return_a
		@a
	end

	def return_b
		@b
	end
end
myclase = MyClase.new(1,2)
p myclase.show_private_methods

class My < MyClase
end
my = My.new(2,3)
# my.return_a # repeat.rb:756:in `<main>': private method `return_a' called for #<My:0x000055e1f10157b0 @a=2, @b=3> (NoMethodError)

# two way of definition 
class MyClasss
	# by defautl are publid methods if not Specific the type 
	def method_1
	end
	def method_2
	end
	protected	
	def method_3
	end
	def method_4
	end
	def method_5
	end
	private 
	def method_6
	end
	def method_7
	end
end


class MyClasss
	def method_1
	end
	def method_2
	end
	def method_3
	end
	def method_4
	end
	def method_5
	end
	def method_6
	end
	def method_7
	end
	public :method_1,:method_2
	protected:method_3,:method_4,:method_5
	private:method_6, :method_7
end





# =============================== mirar con detalle =================================
# =============================== mirar con detalle =================================
# =============================== mirar con detalle =================================
#
# It's time for some examples. Perhaps we're modeling an accounting system where every debit has a corresponding credit. Because we want to ensure that no one can break this rule, we'll make the methods that do the debits and credits private, and we'll define our external interface in terms of transactions.
class Accounts

  private

    def debit(account, amount)
      account.balance -= amount
    end
    def credit(account, amount)
      account.balance += amount
    end

  public

    #...
    def transferToSavings(amount)
      debit(@checking, amount)
      credit(@savings, amount)
    end
    #...
end
=begin
En esta parte en la que dice "we'll define our external interface in terms of transactions."

que quiere decir external interface in terms of trasactions

¿como asi, qué es una interfaz ?

En el contexto de la programación orientada a objetos, una "interfaz" se refiere al conjunto de métodos públicos que una clase expone para que otros objetos interactúen con ella. Es la manera en que otras partes del programa pueden usar y manipular las instancias de esa clase sin necesidad de conocer los detalles internos de su implementación.

Cuando el texto dice "we'll define our external interface in terms of transactions," significa que los métodos públicos de la clase Accounts (es decir, su interfaz externa) estarán diseñados para permitir a los usuarios de la clase realizar transacciones. En este caso, las transacciones son operaciones como transferencias de dinero entre cuentas. Los métodos públicos exponen estas operaciones de manera segura y controlada, sin permitir el acceso directo a los métodos internos (debit y credit), que son privados.

Ejemplo Detallado
Vamos a mejorar el ejemplo que tienes para ilustrar mejor esta idea.

=end
class Account
  attr_accessor :balance

  def initialize(balance)
    @balance = balance
  end
end

class Accounts
  def initialize(checking, savings)
    @checking = checking
    @savings = savings
  end

  # Interfaz externa: métodos públicos
  public

  def transfer_to_savings(amount)
    if @checking.balance >= amount
      debit(@checking, amount)
      credit(@savings, amount)
    else
      puts "Fondos insuficientes en la cuenta corriente."
    end
  end

  def transfer_to_checking(amount)
    if @savings.balance >= amount
      debit(@savings, amount)
      credit(@checking, amount)
    else
      puts "Fondos insuficientes en la cuenta de ahorros."
    end
  end

  # Métodos privados: implementación interna
  private

  def debit(account, amount)
    account.balance -= amount
  end

  def credit(account, amount)
    account.balance += amount
  end
end

# Creación de cuentas
checking_account = Account.new(1000)
savings_account = Account.new(500)

# Creación de la instancia de Accounts
accounts = Accounts.new(checking_account, savings_account)

# Uso de la interfaz externa para realizar transacciones
accounts.transfer_to_savings(200)  # Transferencia exitosa
puts checking_account.balance      # 800
puts savings_account.balance       # 700

accounts.transfer_to_checking(100) # Transferencia exitosa
puts checking_account.balance      # 900
puts savings_account.balance       # 600

accounts.transfer_to_savings(1500) # Fondos insuficientes
=begin
Explicación
Clase Account:

Una clase simple para representar una cuenta con un saldo.
Clase Accounts:

Métodos Públicos (public):
transfer_to_savings(amount): Transfiere una cantidad de la cuenta corriente a la cuenta de ahorros, verificando primero que haya fondos suficientes.
transfer_to_checking(amount): Transfiere una cantidad de la cuenta de ahorros a la cuenta corriente, verificando primero que haya fondos suficientes.
Métodos Privados (private):
debit(account, amount): Reduce el saldo de la cuenta en la cantidad especificada.
credit(account, amount): Aumenta el saldo de la cuenta en la cantidad especificada.
Interfaz Externa
La interfaz externa de la clase Accounts está definida por los métodos transfer_to_savings y transfer_to_checking. Estos métodos permiten a los usuarios de la clase realizar transferencias entre cuentas sin preocuparse por los detalles internos de cómo se debita o acredita el saldo. Los métodos privados debit y credit encapsulan la lógica interna, asegurando que las transacciones se realicen de manera consistente y segura.

Interfaz Interna
La interfaz interna está formada por los métodos privados debit y credit. Estos métodos solo pueden ser llamados desde otros métodos dentro de la misma instancia de la clase Accounts, garantizando que las operaciones de débito y crédito no puedan ser manipuladas directamente desde fuera de la clase.

Este enfoque de usar métodos públicos como interfaz externa para realizar operaciones garantiza que la lógica interna de la clase esté protegida y que las transacciones se realicen de manera controlada y segura.
=end

# =============================== se detiene la expicacion de interfaz =========================
# =============================== se detiene la expicacion de interfaz =========================
# =============================== se detiene la expicacion de interfaz =========================
# =============================== se detiene la expicacion de interfaz =========================












# ================ Containers, Blocks, and Iterators ================ 
#Implementing a SongList Container

# append( aSong ) » list

# Append the given song to the list.
# deleteFirst() » aSong

# Remove the first song from the list, returning that song.
# deleteLast() » aSong

# Remove the last song from the list, returning that song.
# [ anIndex } » aSong

# Return the song identified by anIndex, which may be an integer index or a song title.

class SongList
	def initialize
		@songs = Array.new
	end
	def totalItems 
		@songs.size 
	end


	def append(aSong) 
		@songs.push(aSong)
	end

	def deleteFirst
		@songs.shift
	end

	def deleteLast(aSong) 
		@songs.pop
	end

	def [](key) 
		if key.kind_of?(Integer)
			@songs[key]
		else
			# ...	
		end
	end

end

list = SongList.new
list.append(Song.new("title1","artist1",1))
list.append(Song.new("title2","artist2",2))
list.append(Song.new("title3","artist3",3))
list.append(Song.new("title4","artist4",4))
list.append(Song.new("title5","artist5",5))
list.append(Song.new("title6","artist6",6))
list.append(Song.new("title7","artist7",7))
list.append(Song.new("title8","artist8",8))

p Song.kind_of? Song
p SongList 
p SongList.kind_of? SongList

a = 2
p 2.kind_of? Numeric 

p Song

p list.totalItems
p list[0]
p list[2]
p list[9]

class SongList
	def [](key)
		if key.kind_of?(Integer)
			return  @songs[key]
		else
			for i in 0..@songs.length
				return @songs[i] if key == @songs[i].name 
			end
		end
	end
end


class SongList
	def [](key)
		if key.kind_of?(Integer)
			return @song[key]
		else
			for x in (0...@songs.length)
				return @songs[x] if @songs[x].name === key
			end

		end
	end
end

class SongList
	def[](key)
		if key.kink_of?(Integer)
			result = @songs[key]
		
			result = @songs.find{|x| key == @songs[key].name }
		end
		result
	end
end

class SongList
	def[](key)
		return @songs[key]  if key.kink_of?(Integer)
		return @songs.find{|aSong| key == aSong.name }
	end
end








module Enumerable 
      def mash
        hash = {}
        each do |item|
          key, value = yield(item)
          hash[key] = value
        end
        hash
      end
end


class Array
  def find
    for i in 0...size
      value = self[i]
      return value if yield(value)
    end
    return nil
  end
end
a = [1, 3, 5, 7, 9].find {|v| v*v > 30 }
puts a 

class Array
  def find_
		each do |item|
      return item if yield(item)
    end
    return nil
  end
end
a = [1, 3, 5, 7, 9].find_ {|v| v*v > 30 }

puts a 




class Array
  def inject(n)
     each { |value| n = yield(n, value) }
     n
  end
  def sum
    inject(0) { |n, value| n + value }
  end
  def product
    inject(1) { |n, value| n * value }
  end
end
[ 1, 2, 3, 4, 5 ].sum	»	15
[ 1, 2, 3, 4, 5 ].product	»	120

































