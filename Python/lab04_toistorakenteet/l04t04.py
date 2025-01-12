annettu = input("Anna numero väliltä 1-10: ")


try:
    luku = int(annettu)
    if 1 <= luku <= 10:

        print (f"Luvun {luku} neliö on: ")
        for i in range(1, luku + 1):
            neliö = i ** 2
            print(f"{i}: {neliö}")


except ValueError:
    print("Noudata ohjeita")


    