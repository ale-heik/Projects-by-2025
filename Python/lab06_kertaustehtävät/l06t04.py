#tallennetaan muuttujaan
hypyn_pisteet = []

#pyydetyt muuttujat
for i in range(5):
    piste = input("Hypyn pisteet: ")

    try:
        laskenta = int(piste)

    except ValueError:
        print("Annathan vain kokonaislukuja")
        continue

    if laskenta <1 or laskenta >20:
        print("Anna vain 1-20 väliltä olevia lukuja")
        continue

    else:
        hypyn_pisteet.append(laskenta)

print(sum(hypyn_pisteet)-min(hypyn_pisteet)-max(hypyn_pisteet))