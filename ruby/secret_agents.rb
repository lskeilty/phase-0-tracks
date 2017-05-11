
=begin

1.
while our index is less than our password length
  print the next index of the password
  with the value of index will increase by 1

=end

def encrypt(password)
  index = 0
  while index < password.length
  p password[index].next
  index += 1
  end
end
encrypt("abc")

=begin

2. our string is the alphabet, and the starting index is zero
  while our index is less than the length of the password
      letter equals the numbered index of the password
      if we set a as the 25th index
        the index of the password is equal to the 1st  index of the alphabet
      or else
        the index of the password is equal to the



=end

def decrypt(password)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  index = 0
  while index < password.length
    letter = password[index]
    a = alphabet.index(letter)
    if a == 25
      password[index] = alphabet[0]
    else
      password[index] = alphabet [a - 1]
    end
    index += 1
  end
  p password
end

encrypt(decrypt("swordfish")) #the code runs throught the decrypt first then the encrypt, so the code goes backward then forwards and arrives at the original password


#ask user if they want to encrypt or decrypt, store the answer
# ask user for a password made of letters and store the answer as the password

puts "Would you like to encrypt or decrypt"
user_input = gets.chomp

puts "Enter a password containing letters"
password = gets.chomp

if user_input == "encrypt"
  encrypt(password)
else user_input == "decrypt"
end