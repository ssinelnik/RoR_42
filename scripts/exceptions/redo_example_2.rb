require "net/http"

http = nil
uris = [URI("https://www.google.com:81/"), URI("https://www.google.com/")] # one url that will timeout and another that won't

for uri in uris
  begin
		attempts ||= 1
		puts "Opening TCP connection to #{uri.to_s}"
		http = Net::HTTP.start(uri.host, uri.port, open_timeout: 5)
		puts "Connection object: #{http}”

	rescue Net::OpenTimeout => e # catching timeout exception
		puts "Timeout: #{e} (attempt ##{ attempts })"
		if (attempts += 1) < 5 # redo if condition ok
			puts "<redoing..>"
			redo # ⤴
		else
			puts "--------------------------"
			puts "Redo attempts exceeded. Moving on."
		end
	ensure
    if http # if the request is successful
			puts "Closing the TCP connection..."
			puts "--------------------------"
			http.finish
    end
	end
end

=begin
$ ruby redo-2.rb
Opening TCP connection to https://www.google.com:81/
Timeout: execution expired (attempt #1)
<redoing..>
Opening TCP connection to https://www.google.com:81/
Timeout: execution expired (attempt #2)
<redoing..>
Opening TCP connection to https://www.google.com:81/
Timeout: execution expired (attempt #3)
<redoing..>
Opening TCP connection to https://www.google.com:81/
Timeout: execution expired (attempt #4)
--------------------------
Redo attempts exceeded. Moving on.
Opening TCP connection to https://www.google.com/
Connection object: #<Net::HTTP:0x00007fc9c98d5b68>
Closing the TCP connection...
--------------------------
=end