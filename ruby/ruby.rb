
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
#=============================== Hashes ===============================
#=============================== Hashes ===============================
#=============================== Hashes ===============================
#=============================== Hashes ===============================
#=============================== Hashes ===============================
#=============================== Hashes ===============================
#=============================== Hashes ===============================














































