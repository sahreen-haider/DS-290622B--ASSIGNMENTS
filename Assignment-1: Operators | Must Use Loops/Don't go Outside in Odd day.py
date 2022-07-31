def odd_day():
    odd=0
    even=0
    for each in range(int(input("please enter the length of the series: "))):
        if each%2==0:
            even+=1
        elif each%2!=0:
            odd+=1
    print(even, "is the count for even numbers")
    print(odd, "is the count for odd numbers")

odd_day()