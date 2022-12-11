=begin
begin
  puts 'Before exception'
  Math.sqrt(-1)
rescue StandardError => e # change Exception class
  # puts "Exception: #{e.inspect}" # show exception (exception mean object)
  # puts "Exception: #{e.message}" # show exception (exception mean message)
  # puts e.backtrace # show backtrace
  puts "Error!!!"
  raise
rescue NoMemoryError => e
  puts "No memory!!!"
end

puts "After exception "
=end

#----------------------------------------------------------------------------

=begin
def method_with_error
  #...
  raise ArgumentError, "Oh no!"
end

begin
  method_with_error
rescue RuntimeError => e
  puts e.inspect
end

puts "After exception"
=end

#----------------------------------------------------------------------------

=begin
def sqrt(value)
  sqrt = Math.sqrt(value)
  puts sqrt
rescue StandardError
  puts "Error value!"
end

sqrt(-1)
=end

#----------------------------------------------------------------------------

def connect_to_wikipedia
  #...
  raise "Connection error"
end

attempt = 0 # counter for retry
begin
  connect_to_wikipedia
rescue RuntimeError
  attempt += 1
  # puts "Check your internet connection!"
  retry if attempt < 3 # try make exception 3 times
ensure # run any ways
  puts "There was #{attempt} attempts"
end