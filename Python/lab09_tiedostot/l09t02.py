#hae tiedostot
filename = "L09T01"
file = open(filename, "r")
result = file.read()

#tulosta tiedosto
print(result)

#muunna lista aakkosjärjestykseen
aakkosina = sorted(result.split())

#muunna lista pystyyn ja tulosta
for vertical in aakkosina:
    print(vertical)
file.close()