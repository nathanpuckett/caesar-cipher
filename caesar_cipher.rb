def caesar_cipher(string, key)
  split_string = string.split('')
  
  ascii_array = []
  split_string.each do |char|
    ascii_array.push(char.ord)
  end
  
  ascii_shifted = []
  ascii_array.each do |num|
    if num.between?(65,90)
      num_shift = num + key
      if num_shift > 90
        num_shift -= 26
      end
      ascii_shifted.push(num_shift)
    elsif num.between?(97,122)
      num_shift = num + key
      if num_shift > 122
        num_shift -= 26
      end
      ascii_shifted.push(num_shift)
    else
      ascii_shifted.push(num)
    end
  end

  shifted_array = []
  ascii_shifted.each do |num|
    shifted_array.push(num.chr)
  end

  shifted_array.join

end

print "Please Enter A String: "
og_string = gets

print "Please Enter A Shift Factor (Integer): "
key = gets.chomp.to_i

mod_string = caesar_cipher(og_string, key)

print "Your Modified String Is: #{mod_string}"