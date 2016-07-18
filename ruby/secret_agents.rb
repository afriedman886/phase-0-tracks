# Password Encryption program

# ask secret agent for password, and whether they would like to encrypt or decrypt

puts "Would you like to encrypt or decrypt a password? (e/d)"
response = gets.chomp

puts "What is your password?"
password = gets.chomp


# encryption method: advance each letter of password one letter forward in the alphabet

def encrypt(str)
   str.tr!('a-z', 'b-za')
end

# decryption method: move each letter of password one letter backward in the alphabet

def decrypt(str)
   str.tr!('a-z', 'za-y')
end

# print password alteration depending on agent's encryption/decryption choice

if response == "e" || response == "encrypt"
    puts encrypt(password)
else response == "d" || response == "decrypt"
    puts decrypt(password)
end


# to decrypt an encrypted password (ex: swordfish)

puts decrypt(encrypt("swordfish"))












