#celsiuksista farenheitiksi
def celToFah(b):
    
    C = (b * 9/5) + 32
    return round(C, 1)

#farenheiteista celsiuksiksi
def fahToCel(a):

#laskuri
    F = (a - 32) * 5/9
    return round(F, 1)
    
#annetut arvot
farenheit = celToFah(10.0)
celcius = fahToCel(38.0)

#tulostus
print(farenheit)
print(celcius)
