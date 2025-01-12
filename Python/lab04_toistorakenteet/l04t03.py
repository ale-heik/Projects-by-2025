summa = 0
Lukuja_yhteensa = 0

while True:
    annettu = input("Anna luku: ")

    if not annettu:
        break
    try:
        luku = int(annettu)
        summa += luku
        Lukuja_yhteensa += 1
    except ValueError:
        print("anna vain lukuja")

print(f"Lukuja annettu: {Lukuja_yhteensa}")
print(f"Lukujen summa: {summa}")