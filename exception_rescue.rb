# ruby 2.3.0
# exception using rescue

def change_for(inr_amt)
  	begin 
		currency_value = {quarter: 25, dime: 10, nickel: 5, penny: 1}
		currency_value.each do |k, v|
			currency_value[k] = v*inr_amt
		end
	rescue StandardError => e 
		e.message
	end
end

puts change_for(2)