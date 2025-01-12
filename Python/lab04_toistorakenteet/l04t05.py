etunimi = input("Anna Etunimesi: ")
sukuninmi = input("Anna sukunimesi: ")
kirjainten_maara = len(etunimi)
sukunimi_vaarinpain = sukuninmi[::-1]
if len(etunimi) > 0:
    ensimmainen_kirjain = etunimi[0]

print(f"{ensimmainen_kirjain * len(etunimi)} {sukunimi_vaarinpain}")
