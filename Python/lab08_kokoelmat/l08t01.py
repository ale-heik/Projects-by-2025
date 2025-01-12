lista = []

#pyydetään nimet
for i in range(10):
    nimet = input("Anna kymmenen kaverin nimet: ")
    
    lista += nimet

#nimet  annetussa järjesyksessä
print("Nimet annetussa järjestyksessä")

for nimi in lista:
    print(nimi)

#nimet päinvastaisessa järjesyksessä
print("Nimet päinvastaisessa järjestyksessä")

nimet_vaarinpain = lista[::-1]
for vaarinpain in nimet_vaarinpain:
    
    print(vaarinpain)
    