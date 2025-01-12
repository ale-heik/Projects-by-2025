#luokka
class Cat:
    name = ""
    colour = ""

#luokan muodostaja
    def __str__(self):
        return f"{self.name}, colour: {self.colour}"
#metodi
    def miau(self):
        return "Meoooooow!"

#olioiden määritykset
kit = Cat()
kit.name = "Kit"
kit.colour = "black"

kat = Cat()
kat.name = "Kat"
kat.colour = "white"

#kissojen tuloste
print(kit)
print(kat)

#kissat naukuu
print("Kit says:", kit.miau())
print("Kat says:", kat.miau())