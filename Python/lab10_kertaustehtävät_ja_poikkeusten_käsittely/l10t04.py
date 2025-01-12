try:   
    #summa laskuri
    summa = 0

    #hae tiedostot ja kulee ne riveittäin
    filename = "names.txt"
    with open(filename, "r") as file:
        result = file.readlines()
    print("Tiedosto names.txt luettu.")

    #laskee nimien määrän
    nimien_maara = len(result)
    print("Tiedostossa on", nimien_maara, "nimeä")
   
   #asettaa pisimmän nollapisteen
    pisin = None

    #jos 
    for suurin in result:
        if pisin is None or len(suurin) > len(pisin):
            pisin = suurin

    #tulostaa nimet ja kontako kertaa kukin nimi esiintyy
    print("Pisin nimi on:", pisin)

except FileNotFoundError:
    print("tiedostoa ei löydy")
