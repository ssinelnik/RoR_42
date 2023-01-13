module Validate
	def validate?
		validate!
		true
	rescue StandardError
		false
	end
end