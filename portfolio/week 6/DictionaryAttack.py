#!/usr/bin/python3
import hashlib
#hidden password hash
passwordHash = "2cf24dba5fb0a30e26e83b2ac5b9e29e1b161e5c1fa7425e73043362938b9824"
#open wordlist
with open("wordlist.txt", "r") as wordlist:
    #repeat 
    for word in wordlist.readlines():
        word = word.rstrip()
        #hash  word
        wordlistHash = hashlib.sha256(word.encode("utf-8")).hexdigest()
        print(f"Trying password {word}:{wordlistHash}")
        #if hash is same as correct password's hash, passwd cracked
        if(wordlistHash == passwordHash):
            print(f"Password has been cracked! It was {word}")
            break