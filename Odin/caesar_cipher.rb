def caesar_cipher(str, n)
  a = str.split("")
  new_str = ""
  a.each do |b|
    if b =~ /[a-z]/
      c = b.ord
      if c + n <= 122
        new_str << "#{(c+n).chr}"
      else
        d = 97 + (c + n) - 122
        new_str << "#{d.chr}"
      end
    elsif b =~ /[A-Z]/
      c = b.ord
      if c + n <= 90
        new_str << "#{(c+n).chr}"
      else
        d = 65 + (c + n) - 90
        new_str << "#{d.chr}"
      end
    else
      new_str << b
    end
  end
  puts new_str
  # puts a
end


# a-z 97-122
# A-Z 65-90
#
#

caesar_cipher("Kasia i Ania!", 5)
caesar_cipher("What a string!", 5)


# def caesar_cipher(string,num)
#   string.each_byte { |i|
#   case i when (65..90),(97..122) then offset = i + num
#   (offset > 90 && offset < 97 ? offset = offset - 26 : nil) else offset = i end
#   print offset.chr }
# end
