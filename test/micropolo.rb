require 'byebug'
def marcoPoloFunc(number)
	retVal = ""
	(1..number).to_a.each do |index|
	if index%4==0 && index%7==0
		retVal+='marcopolo'
	elsif index%4==0
		retVal+='marco'
	elsif index%7==0
		retVal+='polo'
	else
		retVal+=index.to_s
	end
	retVal+=',' unless index == number
	# retVal = retVal.split(//,(retVal.length-1))
	end
	p retVal
end

marcoPoloFunc(100)