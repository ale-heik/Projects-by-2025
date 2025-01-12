#Pythonin timedelta moduuli
from datetime import timedelta

#showtume funktio
def showtime(a):

#laskuri
    tunnit, b = divmod(a, 3600) 
    minuutit, sekunnit = divmod(b, 60)

#munnetaan tulos siistiin muotoon
    aika_srt = "{:02d}:{:02d}:{:02d}".format(tunnit, minuutit, sekunnit)
    return aika_srt

#annettu arvo
annetut = showtime(121000)

#tulostus
print(annetut)
