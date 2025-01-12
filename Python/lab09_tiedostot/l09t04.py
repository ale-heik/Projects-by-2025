#summa laskuri
summa = 0

#hae tiedostot ja lukee ne riveittäin
filename = "nimet.txt"
file = open(filename, "r")
result = file.readlines()

#käy läpi nimet tiedostossa
nimi_dictionary = {}
for nimi in result:
    nimi = nimi.strip()

#jos nimi jo listassa, lisää +1
    if nimi in nimi_dictionary:
        nimi_dictionary[nimi] += 1

#lisää uuden nimen listaan jos sitä ei vielä ollut
    else:
        nimi_dictionary[nimi] = 1

#laskee nimien määrän
    summa += 1

#tulostaa montako nimeä listassa on
print("Nimiä yhteensä", summa)

#tulostaa nimet ja kontako kertaa kukin nimi esiintyy
print("Nimet ja niiden esiintymiskerrat: ")
for nimi, kerrat in nimi_dictionary.items():
    print(nimi, kerrat)



