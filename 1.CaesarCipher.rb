# TODO
# Case Sensitivity


def caesar_cipher(string, offset)
    alphabet = 'abcdefghijklmnopqrstuvwxyz'.chars
    message_arr = string.chars
    cipher_message = []
    message_arr.each do |letter|
        unless letter == " " || letter =~ /\d/ || letter =~ /[^a-zA-Z]/
            debugger
            if letter == letter.upcase
                alphabet.upcase!
            end
            index = -27 + offset + 1
            index += alphabet.find_index(letter)
            alphabet[index]
            cipher_message.push(alphabet[index])
            alphabet.downcase!
        else 
            cipher_message.push(letter)
            next
        end     
    return str = cipher_message.join
    
end

print caesar_cipher('Sample wow!!!',5)