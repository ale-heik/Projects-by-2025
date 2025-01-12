#automerkkien kirjasto
automerkit = {
    "BCA-123" : "Scoda",
    "HOM-143" : "Toyota",
    "JAS-213" : "Volvo",
    "JKL-567" : "BMW",
    "KDF-345" : "Opel",
    "JKK-865" : "Volvo",
    "AUI-583" : "KIA",
    "KGB-007" : "Lada",
    "BOO-855" : "Scoda",
    "PEN-150": "Mercedes-Benz"
}
print("Aakkosjärjestyksessä (rekisterinumeron mukaan)")

#järjestetään rekisterinumerot aakkosten mukaan
aakkosjarjesyksessa = sorted(automerkit.items())

for rekisterinumerot, autot in aakkosjarjesyksessa:
    print(rekisterinumerot, ":", autot)
    
    