# # ruby 2.3.0
# # About Instance and Class method.
class AboutMethod
	# # class method
	def self.soft_ware
		puts 'soft_ware: It is a class method, need to prepend with "self".'
	end

	# # instance method
	def hr_consulting
		puts 'consulting method: it is a instance method, while calling this we need to create instance using "new".'
	end
end

# # calling the class methods
AboutMethod.soft_ware

# # calling the instance method
	# # can call in this way also 
		# AboutMethod.new.consulting

i = AboutMethod.new
i.hr_consulting