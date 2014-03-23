for i in (0..5)
  break if i==3
  puts i
end

for i in (0..5)
  next if i==3
  puts i
end

i=5
until i==0
	puts i
	i -=1
end