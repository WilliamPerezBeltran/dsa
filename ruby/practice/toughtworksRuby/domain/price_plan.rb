class PricePlan
	attr_reader :plan_name, :base_cost
	def initialize(plan_name, energy_supplier, base_cost, peak_time_multipliers)
		@plan_name = plan_name 
		@energy_supplier  = energy_supplier
		@base_cost =	base_cost
		@peak_time_multipliers = peak_time_multipliers
	end
	
	def price(date_time)
		ptm = @peak_time_multipliers.select{|ptm| ptm.day_of_week == date_time.wday}.first
		ptm.nil? ? @base_cost : @base_cost * ptm.multiplier
	end

	class PeakTimeMultiplier
		attr_reader :day_of_week, :multiplier
		def initialize(day_of_week, multiplier)
			@day_of_week = day_of_week
			@multiplier = multiplier
		end
	end
end

=begin

casos de estudio 
1. require 'date'
2. attr_reader and def initialize 
3. uses of select
4. uses of nil  
5. A class within another class

=end

class SelectMethod
	def use_1
		a = [1,2,3,4,5,6]
		rta = []
		a.each do |n|
			if n.even? 
				rta << n
			end
		end
		rta 
	end
	def use_2
		[1,2,3,4,5,6].select{|x| x.even?}
	end

	def use_3
		[1,2,3,4,5,6].select(&:even?)
	end
	
	def use_4
		names = %w(robert, douglas,richar,rabit)
		names.select.with_index{|name,index| index.even? }
	end
end
s = SelectMethod.new
p s.use_1
p s.use_2
p s.use_3
p s.use_4











































