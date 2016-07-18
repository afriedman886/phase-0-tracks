# Password Encryption Program

# password encryption: advance each letter of string one letter forward in the alphabet

def encrypt(str)
   str.tr!('a-z', 'b-za')
end

# password decryption: move each letter of string one letter backward in the alphabet

def decrypt(str)
   str.tr!('a-z', 'za-y')
end

# ask secret agent's encryption/decryption preference and what their password is

puts "Would you like to encrypt or decrypt a password? (e/d)"
response = gets.chomp

puts "What is your password?"
password = gets.chomp

# print password alteration depending on agent's encryption/decryption choice

if response == "e" || response == "encrypt"
    puts encrypt(password)
else response == "d" || response == "decrypt"
    puts decrypt(password)
end

# test of encryption/decryption methods

puts encrypt("abc")  # should return "bcd"
puts encrypt("zed")  # should return "afe"
puts decrypt("bcd")  # should return "abc"
puts decrypt("afe")  # should return "zed"


# how to decrypt an encrypted password

puts decrypt(encrypt("swordfish"))












