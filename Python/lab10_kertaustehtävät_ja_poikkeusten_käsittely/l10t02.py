#Kokeillaan if-else rakenteella täyttääkö luku vaatimukset
def algorytmi4(vuosi):
    if vuosi % 4 == 0:
        if vuosi % 100 == 0:
            if vuosi % 400 == 0:
                return True
            else:
                return False
        else:
            return True
    else:
        return False
    
#pyydetään käyttäjältä vuosiluku
vuosi = int(input("Insert year: "))

#Tuloste jos on karkausvuosi
if algorytmi4(vuosi):
    print(vuosi, "Is a leap year!")

#Tuloste jos ei karkausvuosi
else:
    print(vuosi, "Is not a leap year!")