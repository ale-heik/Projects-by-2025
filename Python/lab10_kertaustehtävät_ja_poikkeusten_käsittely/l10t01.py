#Tuodaan kalenterista päivämäärä
from datetime import date
tanaan = date.today()

#pyydetään syntymävuosi
bday = input("Kerro syntymävuotesi: ")

#lasketaan ikä
def kerro3(age):
    return tanaan.year - age

age = int(bday)

#lopputulos
tulos = kerro3(age)

#eri vastaukset riippuen saadusta iästä
if tulos >= 0 and tulos <= 1:
    print("Baby")

elif tulos >= 0 and tulos <= 13:
    print("Child")

elif tulos >= 13 and tulos <= 19:
    print("Teen")
    
elif tulos >= 20 and tulos <= 65:
    print("Adult")

elif tulos >= 65:
    print("Senior")