nimi = input("Syötä koko nimesi: ")

space = nimi.find(' ')

if space != -1:
    etunimi = nimi[:space]
    sukunimi = nimi[space + 1:]

    print("Etunimi:", etunimi)
    print("Sukunimi:", sukunimi)