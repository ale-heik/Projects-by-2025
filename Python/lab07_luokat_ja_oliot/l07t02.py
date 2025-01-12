#luokka
class Human:
    name = ""
    age = ""

#luokan muodostaja
    def __str__(self):
        return f"Nimi: {self.name} Ikä: {self.age}"

#olioiden määritykset
adam = Human()
adam.name = "Adam"
adam.age = 19

eva = Human()
eva.name = "Eva"
eva.age = 18

#ihmisten tuloste
print(adam)
print(eva)