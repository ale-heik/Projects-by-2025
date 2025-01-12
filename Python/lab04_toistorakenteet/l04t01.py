kokonaislukua = int(input("Montako kokonaislukua: "))

alkio = []

for i in range(kokonaislukua):
    luku = i * 10
    alkio.append(luku)

for i, luku in enumerate(alkio):
    print(f"{i}. luku: {luku}")