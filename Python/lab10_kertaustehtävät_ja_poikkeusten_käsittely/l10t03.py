#luokka
class account:
    saldo = 0

#tilin alkuarvo
    def __init__(self, saldo = 2000):
        self.saldo = saldo   

#lisätään rahaa tilille
    def add(self, money):
        if money > 0:
            self.saldo += money

#Rahaa otetaan tililtä        
    def withdtaw(self, money):
        if money > 0 and money <= self.saldo:
            self.saldo -= money
        else:
            print("Sorry, you have only", Bank.saldo, "€, the withdraw cannot be done.")

#luodaan pankkitili
Bank = account()
print("Bank account created.")
print("Bank account balance", Bank.saldo, "€")

#Toimii kunnes tililä 0€
while True:
    if Bank.saldo > 0:

#Pyydetään lisäämään tilille rahaa
        add = int(input("How many euros will be added? "))
        Bank.add(add)
        print("Bank account balance:", Bank.saldo, "€")

#Pyydetään nostamaan tililtä rahaa
        withdraw = int(input("How many euros will be withdrawm? "))
        Bank.withdtaw(withdraw)
        print("Bank account balance:", Bank.saldo, "€")

#Jos rahat loppuvat
    else:
        print("Go to work")
        break
    
   




        
       


#olioiden määritykset




#Olioiden tuloste


