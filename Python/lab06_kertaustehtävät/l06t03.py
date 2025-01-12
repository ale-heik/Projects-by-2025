#tallennetaan muuttujiin
nimilista = []
nimiä_yhteensa = 0

#pyytää nimiä kunnes toisin käsketään
while True:
    nimiä = input("Anna oppilaan nimi: ")

#katkaisee nimet
    if not nimiä:
        break
    
    #lisää nimet listaan
    nimilista.append(nimiä)
    #laskee nimien määrän
    nimiä_yhteensa += 1

#tulostaa nimien määrän
print(f"Oppilaita: {nimiä_yhteensa}")

#nimet peräkkäin ja lisää pilkun väliin
nimet = ', '.join(nimilista)
#tulostaa annetut nimet
print(nimet)