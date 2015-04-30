# students = ["Brandon","Stefanie","Enoch","Mandy","Jesse","Ernest","Jamel","Sabeel","Mike","Georgia"]

students = []

keep_going = true

puts "Enter all the students who showed up to class today."
puts "Type 'done' when finished:"

while keep_going
	student = gets.chomp.downcase.capitalize
	if student != "Done"
		students.push(student)
	else
		keep_going = false
	end
end

students.shuffle!

count = 0

num_students = students.length 

until count == num_students

	if num_students%2 == 1
		if count < num_students - 3
			puts "#{students[count]} & #{students[count+1]}"
		else
			puts "#{students[count]},#{students[count+1]} & #{students[count+2]}"
			break
		end
	else
		puts "#{students[count]} & #{students[count+1]}"
	end



	count += 2

end