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
puts test_group_words_by_length_1









  def test_group_words_by_length_1
    words = ["sue", "alice", "steve", "sally", "adam", "fort", "tops", "dog", "cat"]
		a = Hash.new{|h,k| h[k]=[]}
		words.each do |item|
			a[item.size] << item
		end

		a



		
		#{3=>["sue", "dog", "cat"], 4=>["adam", "fort", "tops"], 5=>["alice", "steve", "sally"]}

  end


puts "======================="
puts test_group_words_by_length_1




en la documentacion de ruby doc de los hash esta esto 

default_proc → anObjectclick to toggle source
If Hash::new was invoked with a block, return that block, otherwise return nil.

1. ¿ que quiere decir → en este contexto ?
2. ¿ que quiere decir :: en este contexto ?
3. ¿ la fuente es esta es ese codigo C  ?

               static VALUE
rb_hash_default_proc(hash)
    VALUE hash;
{
    if (FL_TEST(hash, HASH_PROC_DEFAULT)) {
        return RHASH(hash)->ifnone;
    }
    return Qnil;
}
            
Dan este ejemplo 
h = Hash.new {|h,k| h[k] = k*k }   #=> {}
p = h.default_proc                 #=> #<Proc:0x401b3d08@-:1>
a = []                             #=> []
p.call(a, 2)
a                                  #=> [nil, nil, 4]

4. ¿ en este acaso h se refiera a hash y k se refiere a key ?
5. ¿ Explicame bien este concept de Hash y block al mismo ?













