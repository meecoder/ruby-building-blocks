def caesar_cipher(str, int)
    fin = ""
    str.chars.each do |c|
        if ((65..90).to_a + (97..122).to_a).include? c.ord
            var = c.ord + int
            if ((90..97).to_a + (122..200).to_a).include? var
                var -= 26
            end
            fin += var.chr
        else
            fin += c
        end
    end
    puts fin
end
print "Enter some text: "
text = gets.chomp()
puts ""
print "How many letters should this be shifted forward? "
change = gets.chomp()
puts ""
caesar_cipher(text, change)
