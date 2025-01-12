lista = []
summa = 0

#pyydetään arvosanoja kunnes tyhjä
while True:
    arvosana = input("Anna arvosana väliltä 0-5: ")

    if arvosana == "":
        break

#testataan onko arvostana väliltä 1-5
    try:
        numero = int(arvosana)
        if 0 <= numero <= 5:
            lista.append(numero)
            
    except ValueError:
         print("noudata ohjeita")

#lisätään luku summalaskuun
for luku in lista:
    summa += luku

#lasketaan keskiarvo
ka = summa / len(lista)

#tulostetaan annettujen lukujen määrä ja keskiarvo
print("Annoit", len(lista), "numeroa")
print("Keskiarvosi on:", ka)