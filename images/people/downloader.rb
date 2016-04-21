require "open-uri"

puts "Downloading Users:"
(1..99).each do |i|
  File.open("men/#{i}.jpg", 'wb') do |fo|
    fo.write open("https://randomuser.me/api/portraits/men/#{i}.jpg").read
  end
  puts "- Men #{i}"
  File.open("women/#{i}.jpg", 'wb') do |fo|
    fo.write open("https://randomuser.me/api/portraits/women/#{i}.jpg").read
  end
  puts "- Women #{i}"
end

puts "Done"
