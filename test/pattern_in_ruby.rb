require 'byebug'

def fetch
	s = File.read('/home/vishal/Downloads/RoR_test/input_user_story_1.txt', :encoding => 'iso-8859-1')
	puts lines = s.split("\n")

	retVal = ""
	(0..lines.length-1).step(2).to_a.each do |line|
	  p line
	  a = lines[line].split(' ')
	  # arr = []
	  arr = [
          [],
          [],
          [],
          [],
          [],
          [],
          [],
          [],
          []
        ]
	  # (1..a.length).to_a.each do |f|
	  # 	arr << []
	  # end
	  k = 0
	  if (lines[line] == nil)
	    next
	  end
	  (1..a.length-1).to_a.each do |i|
	    if a[i] == '_'
	      arr[k][0] = true
	    end
	    i+=1
	    i+=1
	    k+=1
	  end

	  if (line < lines.length)
	    line+=1
	    if (lines[line] == nil)
	      next
	    end
	    a = lines[line].split(' ')
	    k = 0
	    (0..a.length-1).to_a.each do |i|
	      if (a[i] == '|')
	        arr[k][5] = true
	      end
	      i+=1
	      if (a[i] == '_')
	        arr[k][6] = true
	      end
	      i+=1
	      if (a[i] == '|')
	        arr[k][1] = true
	      end
	      k+=1
	  end

	  if (line < lines.length)
	    line+=1
	    if (lines[line] == nil)
	      next
	    end
	    a = lines[line].split(' ')
	    k = 0
	    (0..a.length-1).to_a.each do |i|
	      if (a[i] == '|')
	        arr[k][4] = true
	      end
	      i+=1
	      if (a[i] == '_')
	        arr[k][3] = true
	      end
	      i+=1
	      if (a[i] == '|')
	        arr[k][2] = true
	      end
	      k+=1
	    end
	  end

	  (0..(a.length-1)).to_a.each do |t|
	    result = 0
	    # byebug
	    (0..(arr[t].length-1)).to_a.each do |u|
	    # byebug
	      if arr[t][u]
	        result += 2**u
	      end
	    end
	    res = mapp(result) + " "
	    retVal += res
			p res
	  end
	  retVal += '\n'
	end
	 retVal
	end
end

 def mapp(n)
	case n
		when 63
		  return "0"
		when 6
		  return "1"
		when 91
		  return "2"
		when 79
		  return "3"
		when 102
		  return "4"
		when 109
		  return "5"
		when 125
		  return "6"
		when 7
		  return "7"
		when 127
		  return "8"
		when 111
		  return "9"
		else
		  return "0"
		end
	end


fetch