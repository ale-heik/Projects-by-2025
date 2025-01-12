lista = []

#pyydetään rekisterinumeroa kunnes tyhjä
while True:
    rekisterinum = input("Anna rekisterinumero: ")

    if rekisterinum == "":
        break

    lista.append(rekisterinum)

#järjestetään rekisterinumerot aakkosjärjestykseen
lista.sort()
print("Aakkosjärjestyksessä")
for aakkoset in lista:
    print(aakkoset)


