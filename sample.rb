array = Array.new
for i in 1..100
	if (i % 2) == 0 && (i % 5) == 0
	  array<<"both"
	elsif i % 2 == 0
		array<<"even"
	elsif i % 3 == 0
		array<<"odd"
	else
		array<< i
	end
end
print array