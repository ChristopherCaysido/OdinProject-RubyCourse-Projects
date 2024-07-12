# TODO
# Case Sensitivity


def caesar_cipher(string, offset)
    alphabet = 'abcdefghijklmnopqrstuvwxyz'.chars
    message_arr = string.chars
    cipher_message = []
    message_arr.each do |letter|
        unless letter == " " || letter =~ /\d/ || letter =~ /[^a-zA-Z]/
            if letter == letter.upcase
                alphabet = alphabet.join
                alphabet = alphabet.upcase!
                alphabet = alphabet.chars
            else 
                alphabet = 'abcdefghijklmnopqrstuvwxyz'.chars
            end 
            index = -27 + offset + 1
            index += alphabet.find_index(letter)
            cipher_message.push(alphabet[index])
        else 
            cipher_message.push(letter)
            next
        end     
    
    end
    return str = cipher_message.join
end

print caesar_cipher('Sample wow!!!',10)