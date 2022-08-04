
def sum_all():
    lst=[]
    sum=0
    for each in range(int(input("please enter the length for the list: "))):
        lst.append(int(input(f"Please enter the item for position {each+1}: ")))
    for x in lst:
        sum+=x
    print(sum)

sum_all()