# Python program to print a dictionary whose keys should be the alphabet from a-z and the value should be corresponding ASCII values

import string
d = {c: ord(c) for c in string.ascii_lowercase}  # doesn't require you to know the range
print("sample output: ".title(),d,end=" ")