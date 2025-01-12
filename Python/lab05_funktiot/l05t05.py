def get_cost(a, b, c):
    summa = a * b / 100 * c
    return round(summa, 2)

ka1 = get_cost(100,7.5,1.88)
ka2 = get_cost(220,6.9,1.88)

print(ka1)
print(ka2)