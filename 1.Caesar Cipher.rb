# TODO
# 1. Account for the cases
# 2. Take into account spaces 


def caesar_cipher(string, offset)
    alphabet = 'abcdefghijklmnopqrstuvwxyz'.chars
    message_arr = string.chars
    cipher_message = []
    message_arr.each do |letter| 
        index = -27 + offset + 1
        index += alphabet.find_index(letter)
        alphabet[index]
        cipher_message.push(alphabet[index])
    end    
    str = cipher_message.join
end

print caesar_cipher('sample wow',2)