def fibonacci():
    lst=[]
    var1=0
    lst.append(var1)
    lst.append(1)
    for each in range(1,50):
        if lst[-1] in range(1,30):
            lst.append(lst[-1]+lst[-2])
    print(lst)

fibonacci()