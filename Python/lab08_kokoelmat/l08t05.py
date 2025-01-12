import random
#arvotaan seitsemän lukua väliltä 1-40
def lotto():
    luku = [random.randint(1,40) for i in range(7)]
    luku.sort()
    return ', '.join(map(str, luku))

#rivin tuloste
lottorivi = lotto()
print(lottorivi)
