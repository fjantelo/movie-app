require "http"
system "clear"

while true
  puts "Welcome to the movies app. Enter an index number to see information about that movie."
  puts "You can also enter '0' for all movies, or enter 'exit' to quit."
  choice = gets.chomp
  puts ""
  if choice == "0"
    response = HTTP.get("http://localhost:3000/movies")
    index = 0
    while index < response.parse(:json).length
      puts "Id: #{response.parse(:json)[index]["id"]}"
      puts "Title: #{response.parse(:json)[index]["title"]}"
      puts ""
      index += 1
    end
  elsif choice.downcase == "exit"
    break
  else
    response = HTTP.get("http://localhost:3000/movies/#{choice}")
    if response.parse(:json) == nil
      puts "Invalid choice."
      puts ""
    else
      puts "Title: #{response.parse(:json)["title"]}"
      puts "Year: #{response.parse(:json)["year"].to_s}"
      puts "Plot: #{response.parse(:json)["plot"]}"
      puts ""
    end
  end
end
