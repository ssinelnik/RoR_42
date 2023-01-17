require "net/http"

http = nil
uri = URI("https://www.google.com:81") # a URL that we know will time our request out

begin
  attempts ||= 1
  unless http
    puts "Opening TCP connection to #{uri.to_s}"
    http = Net::HTTP.start(uri.host, uri.port, open_timeout: 10) # error           raised here
  end
  puts "Making HTTP GET request..."
  puts http.request_get(uri.path).body

rescue Net::OpenTimeout => e # catching timeout exception
  puts "Timeout: #{e} (attempt ##{ attempts })"

  if (attempts += 1) <= 5 # retry if condition ok
    puts "<retrying..>"
    retry # ⤴
  else
    puts "--------------------------"
    puts "Retry attempts exceeded. Moving on."
  end

ensure
  if http # if the request is successful
  	puts "Closing the TCP connection..."
    http.finish
  end
end