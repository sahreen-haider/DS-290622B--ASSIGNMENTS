# Write a Python class to implement pow(x, n)

class pow1:
    def power(self,x,n):
        result=pow(x,n)
        return result

obj=pow1()
print("the result is : ",obj.power(int(input("enter the base literal : ")),int(input("enter the power for base literal : "))))
