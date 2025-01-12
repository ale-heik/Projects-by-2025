#poikkeus
try:
#Yritetään kirjoittaaa c-aseman juureen
    filename = "c:\\ayho.txt"
    file = open(filename, "w")
    file.write("Kirjoitetaan C:n juureen satunnaista tekstiä.")
    file.close

#poikkeus, jos tiedostoon ei voi kirjoittaa
except PermissionError:
    print("Could not create this file. You might not have acces to this directory")
#Poikkeus jos tulee jokin muu ongelma
except:
    print("Something went wrong")
    