#!/usr/bin/python3
import hashlib
import itertools
import string

# hidden password hash
passwordHash = "2cf24dba5fb0a30e26e83b2ac5b9e29e1b161e5c1fa7425e73043362938b9824"

# characters try 
characters = string.ascii_lowercase + string.digits  # a-z, 0-9

# try combinations up to length 6 (can be adjusted)
max_length = 9

def try_password(password):
    # hash password
    wordlistHash = hashlib.sha256(password.encode("utf-8")).hexdigest()
    print(f"Trying password {password}:{wordlistHash}")
    # if hash matches, found it
    return wordlistHash == passwordHash

# try possible lengths to max_length
for length in range(1, max_length + 1):
    print(f"\nTrying all combinations of length {length}")
    
    # generate possible combinations per length
    for guess in itertools.product(characters, repeat=length):
        password = ''.join(guess)
        
        if try_password(password):
            print(f"\nPassword has been cracked! It was {password}")
            exit(0)

print("\nPassword not found") 