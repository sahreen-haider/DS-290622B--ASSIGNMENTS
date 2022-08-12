numbers=[int(input("Please enter the items for the list: ")) for each in range(int(input("Please enter the length for the list: ")))]
res= map(lambda x: x**2,numbers)
print(list(res))