#!/usr/bin/python3

import hashlib

from itertools import product

#hidden password hash

passwordHash = "2cf24dba5fb0a30e26e83b2ac5b9e29e1b161e5c1fa7425e73043362938b9824"

#characters 0-9 and lowercase letters doesn't do uppercase letters or special characters to save time
chars = '0123456789abcdefghijklmnopqrstuvwxyz'


#repeat for string of characters

for length in range(1, 6): # can only do words of up to six characters
    to_attempt = product(chars, repeat=length)
    for attempt in to_attempt:
        print(''.join(attempt))

    #hash the string of characters

    charHash = hashlib.sha256(to_attempt.encode("utf-8")).hexdigest()

    print(f"Trying password {to_attempt}:{charHash}")

    #if the hash is the same as the correct password's hash then we have cracked the password!

    if(charHash == passwordHash):

        print(f"Password has been cracked! It was {to_attempt}")

        break