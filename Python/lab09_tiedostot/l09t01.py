#tiedostoon kirjoittaminen
filename = "L09T01"
file = open(filename, "w")
name = "*"
i = 0

#pyytää nimiä kunnes tyhjä
while True:
    name = input("Anna henkilöiden sukunimiä, tyhjä lopettaa : ")

    if name == "":
        break

#poistaa listasta tyhjät rivit
    file.write(name + "\n")
    i += 1
file.close()