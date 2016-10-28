#Ask to decrypt or encrypt
#Ask for a password
#Conduct operation
#Print on screen
#Exit

# encrypt method
#- ask for input
#- receive input
#- encrypt
#    - move each letter forward one letter
#- display encrypted result on screen


def encrypt(password)
    end_password = password.length
    encrypt_counter = 0
    e_string = ""
    while encrypt_counter < end_password
        if password[encrypt_counter].next == "aa"
             e_string += "a"
         elsif password[encrypt_counter].next == "!"
         		e_string += " "
        else 
            e_string += "#{password[encrypt_counter]}".next
            end
        encrypt_counter += 1
    end
    e_string
end


# decrypt method
#- ask for input
#- receive input
#- decrypt 
#    - compare input to full alphabet string
#    - find index
#    - rewrite as index one number back
#- display decrypted result on screen

def decrypt(encrypted_password)
    last_password = encrypted_password.length
    decrypt_counter = 0
    d_string = ""
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    while decrypt_counter < last_password
        decrypted_password = alphabet.index(encrypted_password[decrypt_counter]).to_i - 1
        d_string += "#{alphabet[decrypted_password]}"
        decrypt_counter += 1
    end
    d_string
end

puts "Are you decrypting or encrypting?"
process = gets.chomp
if process == "encrypting"
    puts "Please enter password"
    password = gets.chomp
    puts encrypt(password)
elsif process == "decrypting"
    puts "Please enter encrypted password"
    encrypted_password = gets.chomp
    puts decrypt(encrypted_password)
end

#puts encrypt("abc")
#puts encrypt("zed")
#puts decrypt("bcd")
#puts decrypt("afe")
#puts decrypt(encrypt("swordfish"))

#The method calls cancel each other out. The encryption method is resolved then the decryption method is resolved.