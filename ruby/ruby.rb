#!/usr/bin/ruby
##       https://i-love-ruby.gitlab.io/book.html#_ranges
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

asdf =  [1, 2, 3, 4, 5, 6, 7].map{|x| x**2}
p asdf
#=============================== variables ===============================
=begin 
1. Variables Locales 
	- Definción:
		-
	- Sintaxis:
		-
	- Alcance:
		-
=end

=begin 
1. Variables Locales 
	- Definción:
		-
	- Sintaxis:
		-
	- Alcance:
		-
=end
=begin 
1. Variables Locales 
	- Definción:
		-
	- Sintaxis:
		-
	- Alcance:
		-
=end
=begin 
1. Variables Locales 
	- Definción:
		-
	- Sintaxis:
		-
	- Alcance:
		-
=end
=begin 
1. Variables Locales 
	- Definción:
		-
	- Sintaxis:
		-
	- Alcance:
		-
=end
=begin 
1. Variables Locales 
	- Definción:
		-
	- Sintaxis:
		-
	- Alcance:
		-
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
#=============================== Hashes ===============================
#=============================== Hashes ===============================














































