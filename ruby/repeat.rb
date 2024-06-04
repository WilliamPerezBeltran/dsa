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


# yield is used inside of a method definition to say “hold on! I’ve got some code I need to run first”. 
# The code that yield is a block of code that you pass in when you call that method. It’s super useful in 
# allowing us flexibility within our code, depending on whatever our needs are at that time.


