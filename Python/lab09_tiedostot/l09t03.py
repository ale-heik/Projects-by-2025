#tiedostoon kirjoittaminen
filename = "L09T03"
file = open(filename, "w")
i = 0

#pyytää nimiä kunnes tyhjä
while True:
    luku = input("Anna Kokonaislukuja, tyhjä lopettaa : ")

    if luku == "":
        break

    try:
        kokonaisluku = int(luku)
    except ValueError:
        print("Anna vastaus lukuna")
        continue

#poistaa listasta tyhjät rivit
    file.write(str(kokonaisluku) + "\n")
    i += 1

file.close()
print("Syötetty", i, "lukua.")