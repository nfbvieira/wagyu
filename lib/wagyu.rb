class Wagyu
	attr_reader :digits, :base

	def initialize(options = {})
		options = { digits: 4, base: 10 }.merge(options)
		@digits = options[:digits]
		@base = options[:base]
	end
end
