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
caesar_cipher("What a string!", 5)