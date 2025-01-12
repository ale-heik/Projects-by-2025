import random

#luodaan tiedosto ja kirjoitetaan sinne
filename = "lotto.txt"
file = open(filename, "w")

#pyydetään käyttäjältä rivien määrä
riveja = int(input("Haluamiesi rivien määrä: "))
#numeroiden määrä per rivi
numeroita_rivissa = 7

#arvotaan seitsemän lukua väliltä 1-40 ja siten että ei tule samoja
for i in range(riveja):
    rivi = random.sample(range(1,40), numeroita_rivissa)
    file.write(" ".join(map(str, rivi)) + "\n")

#lopettaa kirjoittamisen
file.close()
