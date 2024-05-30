#!/usr/bin/ruby
##       https://i-love-ruby.gitlab.io/book.html#_ranges
#https://makeitrealcamp.gitbook.io/guias-de-make-it-real/programacion-orientada-a-objetos-en-ruby/excepciones
10.downto -12 do |num|
	p num
end

12.times{
	p "somethin"
}

12.times{|a|
	p "#{a}somethin"
}

p "============ "
5.times{|a|
	p "#{a} ole"
}

p "============ "
putamadre = 0
loop do
 putamadre+=1
 break if putamadre == 34
 p "#{putamadre}.ole"
end


#=============================== Array ===============================
# something {}
#
# something do 
#  bla 
#  bla 
# end
#
p (10)..(30)
array = []
array << "ole"
array << 234 
array << 24
array << "bla" 
array << Time.now
p array 
p "============ "
p "============ "
array.each do |element|
	p element
end 
p "============ "
array.each{|element| p element}

array = Array.new
array << 2
array << 20
array << 200
array << 2000
p "============ "
array.each{ |element| p element}
p "============ "
array.each do |element| 
	p element 
end 


p "============ "
array = %w[1 2 3 4 5 6 19]
p array
 def measurement_types
    %w[TENSION_DEL_CABLE DESPLAZAMIENTO_DE_REGLETA CABINAS_EN_OPERACION]
  end

msdf = measurement_types
p msdf

 def measurement_symbol
    %i[TENSION_DEL_CABLE DESPLAZAMIENTO_DE_REGLETA CABINAS_EN_OPERACION]
  end

p measurement_symbol

arr = [:df,1,3,"string"]
arr.each{|x| p x}
arr.join("\n")
arr.each{|x| p x}
p arr 
p "size of the array #{arr.size}" 
p arr.join("william") 
p arr.size
p arr.count
countries = ["India", "Brazil", "Somalia", "Japan", "China", "Niger", "Uganda", "Ireland"]
p countries[0]
p countries[0]..countries[3]
p countries[1..4]
countries = %w[India Brazil Somalia Japan China Niger Uganda Irelanda]
p countries
p countries[1..countries.count]
p countries.include? "colombia"
p countries.include? "Japan"
countries<<"colombia"
p countries 
countries[0] = "blabla"
countries.delete "India"
countries.delete_at 4

p countries 
p countries 
countries.pop
p countries 
countries.pop

p countries 
p countries.pop 4
p countries

nums = [2,3,4,45,453,2,435,35,4645,4,4,5,2,3,2,2,455,5]
p nums
p nums.min
p nums.max

volleyball = ["Ashok", "Chavan", "Karthik", "Jesus", "Budha"]
cricket = ["Budha", "Karthik", "Ragu", "Ram"]

p "(#{volleyball}) (#{cricket})" 
p volleyball & cricket #intersection 
p volleyball | cricket #union
p volleyball + cricket 

a = [ 1, nil, 2, nil, 3, nil, 3,4,nil]
p a 
p a.compact!
p a 
array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p array.select{ |item| item%2 == 0}
p array.keep_if{ |item| item%2 ==0 }


#=============================== Hashes ===============================
hash = Hash.new 
hash["Math"] = 50 
hash["Physic"] = 60 
hash["Science"] = 70 
hash["TuPutaMadre"] = 80
hash["mate"] = 90
hash["Spanish"] = 100
p hash["Spanish"]
p hash.keys
p hash.values
hash.each{|key,value| p "#{key} #{value}"}
 p ""
 p ""
 p ""
hash.each do |key,value| 
	p "#{key} #{value}"
end
total = 0
hash.each do |key,value| 
	total += value
	p "#{key} #{value}"
end
p total 
p "total: "+ total.to_s

p "key => value"
p "key => value"
hash.each do |a,b|
	p "#{a} => #{b}"
end

hash = Hash.new
hash = {"English"=> 50, "Math"=> 60,"Something"=> 70,""=> 80,"Ifisica"=> 90} 
s = "string"
n = 23423 
f = 234.234 
sy = :symbol
ha = {} 
p hash.class
p s.class
p n.class
p f.class
p sy.class
p ha.class

p String.class
p Array.class
p 23.class
p Hash.class
p Symbol.class

p " "
a = :apple 
p a.class
p a.to_s
p a.to_sym

c = "bla bla ba and more abla "
d = "bla bla ba and more abla "
p c.object_id
p d.object_id #object_id are differents 
p d.object_id  == c.object_id 


p " "
c = :bla 
d = :bla 
p c.object_id
p d.object_id #object_id are differents 
p d.object_id  == c.object_id 
p "This means if we declare symbols again and again, they won’t occupy extra space.".upcase
p "Frozen strings and symbols are good for memory. Ordinary strings are bad.".upcase
hash = {a: 1, b: nil, c: 2, d: nil, e: 3, f:nil}
p hash 
#=============================== Ranges ===============================
(1..6).each{|x| p x}
# 1..6 ==> 1 2 3 4 5 6 
("bad".."bag").each {|a| print "#{a}, " }
p ""
a = -4..23

p a.class
p a.max # 23 
p a.min # -4
p (1..20).to_a # => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]


mark = 45
grade = case mark 
when 80..90
	'A'
when 60..89
	'B'
when 40..59
	'C'
when 10..39
	'D'
else
	"sorry no available"
end
p grade


p (1..5).to_a  # => 1 2 3 4 5  INCLUSIVO = que incluye 
p (1...5).to_a # => 1 2 3 4    EXCLUSIVO = excluye el ultimo element (no lo agrega)
#11 in (..10)

   #
#=============================== Functions =============================
def print_line
	"-"*20
end
p print_line

def print_name name="william"
	p name 
end
 print_name "rasputin"
 print_name 

 def array_changer ar
	 ar << 23
 end
 ar = [1,2,3,4,5]
 p ar
array_changer ar
 p ar

 def addition a,b
	 sum = a + b 
	 sum
 end
 p addition 3,4

 def some_function a, *other
	 p " argument other array => #{other}"
	 p " argument first array => #{a}"
 end 
 some_function "first argument" ,2,3,34,34,34,34,3,43

 def print_something(string)
  puts string
end


#=============================== Global Variables ===============================
$global_variable = 234
def print_global_variable 
	$global_variable =33 
end
print_global_variable
p $global_variable #print 33
#=============================== map, reduce, and filter ===============================




=begin 
1. Variables Locales 
	* Definción: 
			- Se utiliza dento de un método , un bloque o una estructura de control 
	
	* Sintaxis: 
			- Comienza con una lettra minúscula o un guion bajo 

	* Alcance: 
			- Solo son accesibles dentro del contexto en que se definen 

	* Example:
			def example_mettho
				local_varible  = "skafj"
				puts local_varible
			end
=end



=begin 
2. Instance Variables  
	* Definción: 
			- Instance variables are avariables that are associated with a specific instance of a class.
	 
	* Sintaxis: 
			- they start with an @ symbol. 

	* Alcance: 
			- Accessible within all instance methods of the class.  

	* Example:

			class Example 
				def initialize name 
					@name = name  ==> instance variable 
				end 

				def display_name 
					puts @name 
				end 
			end 

			example = Example.new("ruby")
			example.display_name ==> ruby 
=end


=begin 
3. Class Variables 

* Definción: 
			- Class variables are shared among all instances of a class. 
 	
	* Sintaxis: 
			- They start with @@ 

	* Alcance: 
			- Accessible within class methods and instance methods of the class. 

	* Example:


    	Class Example 
			 	@@class_variable = 0

				def initialize
					@@class_variable += 1
				end

				def self.count
					@@class_variable 
				end 


	    end

			example1 = Example.new 
			example2 = Example.new 
			puts Example.count // ==> 2

=end


=begin 

4. Global Variables  

* Definción: 
			- Global variables are accessible from anywhere int ethe ruby program.
	
	* Sintaxis: 
			- They start with $ 

	* Scope: 
			- Accessible globally throughout the program. 

	* Example:
			$global_variable = 23

			def display_global 
				puts $global_variable
			end

			display_global // ====> 23
=end

=begin 
5. Constants Variables
	
	* Definition: 
			- Constants are variables that are intended to remain unchanged. 
	
	* Syntax: 
			- They start with a capital letter. 

	* Scope: 
			- Accessible within the class or module the are defined in, and ca be accessed globally if prefixed
			with the class or module name.

	* Example:

			class Example
				CONSTANT = "I'm a constant"	

				def display_constant
					puts CONSTANT 
				end

			end


		example = Example.new 
		example.displat_constant ======>> "I'm a constant"	 

=end

=begin
6. Block Variables
		Definition: 
			Block variables are variables that are used within blocks, such as those passed to methods like each.
		Syntax: 
			Like local variables, they start with a lowercase letter or an underscore (_).
		Scope: 
			Only accessible within the block.

[1, 2, 3].each do |block_variable|
  puts block_variable
end

=end


#=============================== Classes & Objects ===============================

class Square 
	#enable get and set 
	attr_accessor :side_length # it Stands for attribute accessor, which enable syou to get and set the side_length easily
end

s1 = Square.new #creates a new square 
s1.side_length = 5 # sets its side length
puts "Side length of s1 = #{s1.side_length}"

p ""
p ""

class Square1
	attr_accessor :side_length

	def area 
		@side_length * @side_length
	end

	def perimeter 
		@side_length * 4 
	end
end 
a = Square1.new
a.side_length = 2
p "area #{a.area}"
p "perimeter #{a.perimeter}"


#private methods

class Human 
	attr_accessor :name ,:age

	def prints_something
		p "arguments: #{name} #{age}"
	end
	private
		def secrets 
			p "the secrets"
		end
end 

example = Human.new 
example.name = "william "
example.age = 23
example.prints_something
example.prints_something


class Person 
	def initialize 
		randon_number = self.random
	end 

	def random
		Random.new.rand(12...45)
	end 
end

person = Person.new
p person.random
p person.random
p person.random
p person.random
# inheritance

class Father
	attr_accessor :name 
	def initialize name
		@name = name 
	end

	def father_name
		@name 
	end 
end 



class Son < Father 
	attr_accessor :son_name
	def initialize son_name
		@son_name = son_name 
	end 

	def name_son
		 @son_name
	end

	def both_name 
		"both names #{@son_name } and #{@name}"
	end 

end 
father = Father.new "jose"
hijo = Son.new "William"
p father.father_name
p hijo.name_son
p hijo.both_name
p hijo.father_name




class Figure
	attr_accessor :stroke, :fill
end 

class Circle < Figure
	attr_accessor :radius
end
c1 = Circle.new
c1.stroke = "stroke" 
c1.fill = "fill" 
c1.radius = 23

p " #{c1.stroke} #{c1.fill} #{c1.radius} "

class Employe
  def salary
    puts "Calculando salario"
  end
end

class Manager < Employe
  def salary
    puts "Calculando bonos"
    super # esta línea llama el método salary de Employee
  end
end

manager = Manager.new
manager.salary

module MyModule
	MAX_CONNECTIONS = 5

	def metodo_1
			p "metodo 1"
	end

	def metodo_2
			p "metodo 2"
	end

	def metodo_3
			p "metodo 3"
	end

	class Clase_1
		def metodo_clase_1
			p "metodo de la clase 1"
		end
	end

	class Clase_2
		def metodo_clase_2
			p "metodo de la clase 2"
		end
	end

end

p MyModule::MAX_CONNECTIONS
clase1 = MyModule::Clase_1.new
clase1.metodo_clase_1



module Greeting 
	def self.metodo
		"self metodos"
	end
end 
p Greeting.metodo



module Apellidos
	def primer_apellido
		"perez beltran"
	end
end

class Apellido
	include Apellidos
end

apellido = Apellido.new
p apellido.primer_apellido

apellido1 = Apellido.new


class AnotherClassApellido
end
ole = AnotherClassApellido.new
ole.extend(Apellidos)
ole.primer_apellido


p "======="
p "======="

module Grey
	def hello
		"hello"
	end
end

class Name 
	include Grey
end

class Opp 
	extend Grey
end

o = Name.new
p o.hello # hace el llamado en la instancia de la clase 

p  Opp.hello # hace el llamado en la clase 


module System
	module Currency
		class Dollar
		end
	end
end
System::Currency::Dollar.new # way to get access to class Dollar 
 

#=============================== Overriding Methods ============================== 

class A
	def myMethod
		p "method A class "
	end 
end 


class B < A
	def myMethod
		p "method B class "
	end 
end 

a = A.new
b = B.new
a.myMethod
b.myMethod

p ""
p ""



#=============================== The super function ===============================
p "the super funcion "

class Rectangulo 
	def set_dimension ancho, largo 
		@ancho = ancho
		@largo = largo  
	end
	def area 
		@ancho * @largo 
	end
end 

class Cuadrado < Rectangulo
	def set_dimension(ancho, largo)
		super(ancho,largo)
	end 
end
cuadrado = Cuadrado.new
cuadrado.set_dimension(2,3) 
p cuadrado.area

class G
	def initialize name, last_name, age
		@name, @last_name, @age  = name, last_name, age
	end

	def show_variables
		p "   ====>    #{@name} #{@last_name} #{@age}" 
	end

	def set_another_function x
		@x = x 
	end
	
	def get_another_function
		p "asdf: #{@x}"
	end
end 

class H < G
	def initialize name, last_name, age
		super(name, last_name, age)
	end
	
	def set_another_function x
		super(x)
	end
end
p "========================="
p "========================="
p "========================="
h = H.new "robert", "jose", 23
h.show_variables
h.set_another_function 10000 
h.get_another_function
#=============================== Excepciones =============================== 
begin 
#1 / 0 
rescue 
	p "it not allow divide into zero"
end

begin 
#1 / 0 
rescue => e
	p e
	p e.public_method
end 

class PermissionDeniedError < StandardError
  attr_reader :action

  def initialize(message, action)
    # Call the parent's constructor to set the message
    super(message)

    # Store the action in an instance variable
    @action = action
  end
end

# Cuando alguien trate de borrar algo sin permiso podrías
# hacer algo así:
#raise PermissionDeniedError.new("Permission Denied", :delete)


#=============================== reflection ===============================

# reflection.rb

class Someclass
  attr_accessor :a, :b

  private
  # A dummy private method
  def private_method
  end

  protected
  # A dummy protected method
  def protected_method
  end

  public
  # A dummy public method
  def public_method
  end
end

something = Someclass.new
something.a = 'a'
something.b = 123
puts "something belongs to #{something.class}"
puts
puts "something has the following instance variables:"
puts something.instance_variables.join(', ')
puts
puts "something has the following methods:"
puts something.methods.join(', ')
puts
puts "something has the following public methods:"
puts something.public_methods.join(', ')
puts
puts "something has the following private methods:"
puts something.private_methods.join(', ')
puts
puts "something has the following protected methods:"
puts something.protected_methods.join(', ')



#=============================== Private, Public, protected in inherintance================
puts 
puts 
puts 
puts 
class A 
	def public_method
		p "public method of Parent class"
	end

	private
	def private_method
		p "private method of A"
	end

	def private_method_1
		p "private method of A"
	end


	protected
	def protected_method
		p "protected methdod  of Parent class"
	end
end

class B < A
	def get_private_methods
		private_method 
		private_method_1
	  "public method called from B class "
		protected_method
		self.protected_method
	end

	
	def get_protected_methods
		protected_method
		self.protected_method
	end
end

b = B.new
p b.get_private_methods
p b.get_protected_methods




#=============================== Reflection===============================
puts
puts
puts
=begin
	.class
	.instance_variables
	.public_methods
	.private_methods
	.protected_methods
=end

class SomeClass
	attr_accessor :a, :b
	
	def public_method_1
	end

	def public_method_2
	end

	private 
	def private_method_1 
	end

	def private_method_2
	end

	protected 
	def protected_method_1
	end
	
	def protected_method_1
	end
end

object = SomeClass.new
object.a = "a"
object.b = 100 

p "tipo del objecto"
p object.class 
puts 
p "Variables de instancia del objeto"
p object.instance_variables.join(", ")

puts 
p "Metodos publicos del objeto"
p object.public_methods.join(", ")

puts 
p "Metodos privados del objecto"
p object.private_methods.join(", ")

puts 
puts 
p "Metodos protegidos del objecto"
p object.protected_methods.join(", ")



#=============================== mixin ===============================
#=============================== Reflection===============================

module Constants
  Pi = 22.0 / 7
end

class Circle
  include Constants
  attr_accessor :radius

  def area
    Pi * radius * radius
  end
end

circle = Circle.new
circle.radius = 5  # Establecer el radio del círculo
puts circle.area  # Calcular y mostrar el área del círculo


#===============================  Proc, Lambdas and Blocks ===============================

my_proc = Proc.new do 
	p "hellos"

end 
my_proc.call
my_proc.call

my_procc = Proc.new do |name| 
	p "hey name #{name}"
end
my_procc.call "wallas"
 

def execute_proc myProc, name 
	myProc.call name 
end
execute_proc my_procc,"willy"
# Returning Proc from function
def return_proc
	Proc.new do |name|
		p "the name #{name}"
	end
end

my_proccc = return_proc
my_proccc.call "rastas"

my_lambda = lambda do 
	puts "i am a lambda"
end
my_lambda.call

my_anotyher_lambda = lambda { puts "i am  another lambda"}
my_anotyher_lambda.call

x = lambda { puts "i am  another lambda"}
x.call

r = Proc.new{ puts "mmmmmmmmmmmmmmmmm"}
r.call


get =	lambda do |num|	
	p num 
end
get.call [1,2,3,4]

mi_lambda = lambda { |x| puts "Hola #{x}" }
mi_lambda.call "robert"
									
mi_lambda =->(x){puts "hola #{x}"} 
mi_lambda.call "tranque"

array = [1,2,3,4,5,6,8,8]
duplicar = ->(x){x*2}
p array.map(&duplicar)
									
p array.map{|x| x*2}

=begin
Lambda:

Una función anónima que se comporta como un método, con un manejo estricto de argumentos y un return que solo sale de la lambda.
Se crea con lambda o ->.
Proc:

Un objeto que encapsula un bloque de código, con flexibilidad en el número de argumentos y un return que sale del método envolvente.
Se crea con Proc.new o proc.

=end






































