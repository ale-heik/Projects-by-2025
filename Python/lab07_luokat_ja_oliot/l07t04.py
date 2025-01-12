#luokka
class Mobile:
    brand = ""
    model = ""
    price = 0

#luokan muodostaja
    def __str__(self):
        return self.brand + " " + self.model + " " + str(self.price)
    def __init__(self, brand = "", model = "", price = 0):
        self.brand = brand
        self.model = model
        self.price = price

#olioiden määritykset
phone1 = Mobile("Samsung", "Galaxy", 349)
phone2 = Mobile("Apple", "iPhone 12", 899)

#Olioiden tuloste
print(phone1)
print(phone2)