# https://ruby-doc.org/3.2.2/Enumerable.html#module-Enumerable-label-Other+Methods

=begin
	any 
	find 
	map reduce
	reject
	select
	sort_by
	group_by
=end

class AnyUsingEach
  def test_has_at_least_one_zero
    #numbers = [2, 0, 9, 3, 0, 1]
    numbers = [2, 3, 9, 3, 9, 1]
		pivote = false 
		numbers.each do |x| 
			pivote = true if x.zero?
		end
		pivote 
  end

  def test_does_not_have_any_zeros
    numbers = [3, 1, 3, 2, 4, 9, 8]
		any_zeros = false
		numbers.each{|item| any_zeros = true if !item.zero?} 
		any_zeros
  end

  def test_has_at_least_one_alice
    names = ["Bill", "Bob", "Burton", "Alice", "Brandon"]
		one_alice = false 
		names.each do |name| 
			one_alice = true if name == "Alice"
		end
	  one_alice	
  end

   def test_has_a_multi_word_phrase
    phrases = ["Sure!", "OK.", "I have no idea.", "Really?Whatever."]
		word_phrase = true 
		phrases.each do |x| 
			word_phrase = true if word_phrase.include?(" ")
   	end
   end
end

instance = AnyUsingEach.new
puts instance.test_has_at_least_one_zero
puts instance.test_does_not_have_any_zeros


class AnyEnumerableMethod
  def test_has_at_least_one_zero
    numbers = [2, 0, 9, 3, 0, 1]
		numbers.any?{|item| item.zero?}
  end

  def test_does_not_have_any_zeros
    numbers = [3, 1, 3, 2, 4, 9, 8]
		numbers.any?{|item| !item.zero?}
  end

  def test_has_at_least_one_alice
    names = ["Bill", "Bob", "Burton", "Alice", "Brandon"]
		names.any?{|name| name == "Alice"}
  end

   def test_has_a_multi_word_phrase
    phrases = ["Sure!", "OK.", "I have no idea.", "Really?Whatever."]
		phrases.any?{|item| item.include?(" ")}
   end
end

any = AnyEnumerableMethod.new
puts any.test_has_at_least_one_zero
puts any.test_does_not_have_any_zeros



class CountUsingEach 
  def test_count_count_words_with_e
    words = ["thing", "phone", "bark", "belt", "shoe", "bath"]
		wor = 0
		words.each do |item|
			wor += 1 if item.include?("e")
		end
		wor
    # assert_equal 3, tally
  end

  def test_count_numbers_greater_than_17
    numbers = [9, 18, 12, 17, 1, 3, 99]
		wor = 0
		numbers.each do |item|
			wor += 1 if item >= 17
		end
		wor
    # assert_equal 2, tally
  end

  def test_count_words_that_are_uppercase
    words = ["trousers", "SOCKS", "sweater", "Cap", "SHOE", "TIE"]
		words.count{|item| item == item.upcase}
    # assert_equal 3, tally
  end
end


  def test_group_words_by_length
    words = ["sue", "alice", "steve", "sally", "adam", "fort", "tops", "dog", "cat"]
    lengths = []
		words.each do |item|
			lengths<< item.length
		end
		lengths.uniq! 
		
		items_array = Array.new
		complete_array= Array.new
		lengths.each do |length|
			words.each do |word|
				if length == 	word.size
					puts "#{length}: each #{length}:#{word.size} ===> #{word}"
					items_array << word
				end
			end
			complete_array << [length,items_array]
			items_array = []
		end
		Hash[complete_array]

  end


puts "======================="
puts test_group_words_by_length 


def test_group_words_by_length_1
  words = ["sue", "alice", "steve", "sally", "adam", "fort", "tops", "dog", "cat"]
	group = Hash.new{|h,k| h[k]=[]}
	words.each do |item|
		group[item.size] << item
	end
	group
	#{3=>["sue", "dog", "cat"], 4=>["adam", "fort", "tops"], 5=>["alice", "steve", "sally"]}
end
puts test_group_words_by_length_1
puts "======================="


def test_group_numbers_by_odd_and_even
	numbers = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
	odd_and_even = Hash.new{|h,k| h[k]=[]}
	numbers.each do |item|
		odd_and_even[item%2] << item
	end
	odd_and_even 
	# {1=>[1, 1, 3, 5, 13, 21, 55], 0=>[2, 8, 34]}
end

def test_group_words_by_first_letter
	words = ["ant", "axis", "albatross", "bolt", "badge", "butter", "car", "cdr", "column"]
	group = Hash.new{|k,v| k[v] = []}
	words.each do | item|
		group[item[0]] << item 
	end
	group 
	# {"a"=>["ant", "axis", "albatross"], "b"=>["bolt", "badge", "butter"], "c"=>["car", "cdr", "column"]}
end

def test_group_words_by_uniqueness
	words = ["one", "two", "one", "TWO", "three", "one", "three", "three", "three"]
	group = Hash.new{|k,v| k[v] = []}
	words.each do |item|
		group[item.downcase] << item 
	end
	group 
	#  {"one"=>["one", "one", "one"], "two"=>["two", "TWO"], "three"=>["three", "three", "three", "three"]}
end

def test_group_by_number_of_zeros
	numbers = [1, 3, 500, 200, 4000, 3000, 10000, 90, 20, 500000]
	group = Hash.new{|k,v| k[v] = []}
	numbers.each do | item|
		group[item.to_s.count("0")] << item 
	end
	group 
	# {0=>[1, 3], 2=>[500, 200], 3=>[4000, 3000], 4=>[10000], 1=>[90, 20], 5=>[500000]}
end

def test_group_by_order_of_magnitude
	numbers = [1, 3, 503, 239, 4938, 3932, 19982, 93, 21, 501787]
	group = Hash.new{|k,v| k[v] = []}
	numbers.each do | item|
		group[item.to_s.length] << item 
	end
	group 
	# {1=>[1, 3], 2=>[93, 21], 3=>[503, 239], 4=>[4938, 3932], 5=>[19982], 6=>[501787]}
end

p test_group_numbers_by_odd_and_even
p test_group_words_by_first_letter
p test_group_words_by_uniqueness
p test_group_by_number_of_zeros
p test_group_by_order_of_magnitude













def test_group_words_by_length_1
  array = ["sue", "alice", "steve", "sally", "adam", "fort", "tops", "dog", "cat"]
	array.group_by{|item| item.length} 
end

def test_group_numbers_by_odd_and_even
	array = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
	array.group_by{|item| item%2} 
end

def test_group_words_by_first_letter
	array = ["ant", "axis", "albatross", "bolt", "badge", "butter", "car", "cdr", "column"]
	array.group_by{|item| item[0]} 
end

def test_group_words_by_uniqueness
	array = ["one", "two", "one", "TWO", "three", "one", "three", "three", "three"]
	array.group_by{|item| item.downcase} 
end

def test_group_by_number_of_zeros
	array = [1, 3, 500, 200, 4000, 3000, 10000, 90, 20, 500000]
	array.group_by{|item| item.to_s.count("0")} 
end

def test_group_by_order_of_magnitude
	array = [1, 3, 503, 239, 4938, 3932, 19982, 93, 21, 501787]
	array.group_by{|item| item.to_s.length} 
end

p test_group_numbers_by_odd_and_even
p test_group_words_by_first_letter
p test_group_words_by_uniqueness
p test_group_by_number_of_zeros
p test_group_by_order_of_magnitude




class ReduceUsingEach 
  
 def test_sum_a_list_of_numbers
    numbers = [32, 1, 21, 5, 81, 333]
		acco = 0 
		numbers.each do |item|
			acco += item
		end
		acco 
    # rta 473
  end

  def test_subtract_list_of_numbers
    numbers = [28, 12, 38, 1, 91]
		acco = 0 
		numbers.each do |item|
			acco -= item
		end
		acco 
    # rta -170
  end

  def test_multiply_list_of_numbers
    numbers = [2, 3, 5, 7]
		acco = 1 
		numbers.each do |item|
			acco *= item 
		end
		acco 
    # rta 210
  end

  def test_capitalize_keywords_in_phrase_one_fish_two_fish_red_fish_blue_fish
  keywords = ["fish", "blue"]
	phrase = 'one fish two fish red fish blue fish'
	keywords.each do |item|
		phrase = phrase.gsub(item,item.upcase)
	end
	phrase 

  # rta 'one FISH two FISH red FISH BLUE FISH'
  end

  def test_divide_560_by_a_bunch_of_numbers
    numbers = [2, 2, 2, 5, 7]
		acco = 1 
		numbers.each do |item|
			acco /= item
		end
		acco 
    # rta 2
  end

  def test_subtract_smallest_values_from_100
    elements = [[8, 5, 3], [1, 9, 11], [4, 7, 2], [19, 34, 6]]
		smallest = 100
		elements.each do |item|
			smallest -= item.min
		end
		smallest
    # rta 88, 
  end

  def test_add_all_the_second_values_together
    elements = [["a", 1], ["b", 9], ["c", 21]]
		together = 0 
		elements.each do |item|
			together= item[1]
		end
		together

    # rta 31
  end

end

a = ReduceUsingEach.new
p a.test_sum_a_list_of_numbers
p a.test_subtract_list_of_numbers
p a.test_multiply_list_of_numbers
p a.test_capitalize_keywords_in_phrase_one_fish_two_fish_red_fish_blue_fish
p a.test_divide_560_by_a_bunch_of_numbers
p a.test_subtract_smallest_values_from_100
p a.test_add_all_the_second_values_together



class ReduceUsingEach 
  
 def test_sum_a_list_of_numbers
    array = [32, 1, 21, 5, 81, 333]
		array.reduce(0){|acco,n|acco+n}
    # rta 473
  end

  def test_subtract_list_of_numbers
    array  = [28, 12, 38, 1, 91]
		array.reduce(0){|acco,n|acco-n}
    # rta -170
  end

  def test_multiply_list_of_numbers
    array  = [2, 3, 5, 7]
		array.reduce(1){|acco,n|acco-n}
    # rta 210
  end

  def test_capitalize_keywords_in_phrase_one_fish_two_fish_red_fish_blue_fish
  array  = ["fish", "blue"]
	phrase = 'one fish two fish red fish blue fish'
	array.reduce(phrase){|acco,item| acco.gsub(item,item.upcase)}

  # rta 'one FISH two FISH red FISH BLUE FISH'
  end

  def test_divide_560_by_a_bunch_of_numbers
    array  = [2, 2, 2, 5, 7]
		array.reduce(1){|acco,n|acco/n}
    # rta 2
  end

  def test_subtract_smallest_values_from_100
    array  = [[8, 5, 3], [1, 9, 11], [4, 7, 2], [19, 34, 6]]
		smallest = 100
		array.reduce(100){|acco,item| acco-item.min}
    # rta 88, 
  end

  def test_add_all_the_second_values_together
    array  = [["a", 1], ["b", 9], ["c", 21]]
		array.reduce(0){|sum,n|sum+n[1]}

    # rta 31
  end

end

a = ReduceUsingEach.new
p a.test_sum_a_list_of_numbers
p a.test_subtract_list_of_numbers
p a.test_multiply_list_of_numbers
p a.test_capitalize_keywords_in_phrase_one_fish_two_fish_red_fish_blue_fish
p a.test_divide_560_by_a_bunch_of_numbers
p a.test_subtract_smallest_values_from_100
p a.test_add_all_the_second_values_together
