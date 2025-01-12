#yhteishinta laskuri
hinta = []

#luokka
class Car:
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
        
        hinta.append(price)

#olioiden määritykset
auto1 = Car("Skoda", "Octavia", 3000)
auto2 = Car("Audi", "A4", 4000)
auto3 = Car("Volvo", "V70", 5000)

#Olioiden tuloste
print(auto1)
print(auto2)
print(auto3)
print("Autojen hinta yhteensä:", sum(hinta))