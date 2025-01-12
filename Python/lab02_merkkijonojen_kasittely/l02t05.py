etunimi = input("Anna Etunimesi: ")
kirjainten_maara =len(etunimi)

if len(etunimi) > 0:
    ensimmainen_kirjain =etunimi[0]

print(f"Etunimessasi {etunimi} on {kirjainten_maara} kirjainta")
print(f"{ensimmainen_kirjain * len(etunimi)}")


