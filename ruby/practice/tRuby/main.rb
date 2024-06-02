require_relative 'configuration'
require_relative 'domain/price_plan'
require_relative 'generator/electricity_readings_generator'
require_relative 'service/account_service'
require_relative 'service/electricty_reading_service'
require_relative 'service/price_plan_service'

class Main
	extend Configuration 
p	readings.inspect
puts 
puts 
puts 
puts 
	electricity_reading_service = ElectricityReadingService.new(readings)
  price_plan_service = PricePlanService.new(price_plans, electricity_reading_service)
  account_service = AccountService.new smart_meter_to_price_plan_accounts

	puts electricity_reading_service.inspect
	puts 
	puts 
	puts 
  p price_plan_service.inspect 
	puts 
	puts 
	puts 
  p account_service.inspect 
	puts 
	puts 
	puts 

end
