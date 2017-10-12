# ruby 2.3.0
# About Instance and Class method.
class AspireSoftware
	
	# class method
	def self.soft_ware
		puts 'soft_ware: It is a class method, need to prepend with "self".'
	end

	# instunce method
	def consulting
		puts 'consulting method: it is a instance method, while calling this we need to create instance using "new".'
	end
end

# calling the methods
AspireSoftware.soft_ware
AspireSoftware.new.consulting