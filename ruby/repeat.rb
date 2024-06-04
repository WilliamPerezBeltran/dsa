#https://ruby-doc.com/docs/ProgrammingRuby/html/tut_classes.html

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





































































