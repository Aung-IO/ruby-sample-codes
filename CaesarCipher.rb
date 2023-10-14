def caesar_cipher(message, shift_value)

    alphabet = Array('a'..'z')
    non_caps = alphabet.zip(alphabet.rotate(shift_value)).to_h

    alphabet = Array('A'..'Z')
    caps = alphabet.zip(alphabet.rotate(shift_value)).to_h

    encrypt = non_caps.merge(caps)
    message.chars.map { |char| encrypt.fetch(char,char)  }.join
  
end

message = "Enter message here"
shift_value = #Enter shift value here

encrypted_message = caesar_cipher( message, shift_value)
puts encrypted_message

decrypted_message = caesar_cipher( encrypted_message, -shift_value)
puts decrypted_message