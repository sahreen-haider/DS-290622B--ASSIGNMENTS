
def count_upper_lower():
    upper_count=0
    lower_count=0
    var_string=input("Please enter your string here: ").replace(" ","")
    for each in var_string:
        if each.isupper()==True:
            upper_count+=1
        else:
            lower_count+=1
    print(upper_count,lower_count)

count_upper_lower()