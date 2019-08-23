def monkey_trouble(a_smile, b_smile):
    ret = False
    if a_smile and b_smile:
        ret = True
    if not a_smile and not b_smile:
        ret = True
    return ret


print(monkey_trouble(True,True))
print(monkey_trouble(False,False))
print(monkey_trouble(True,False))
print(monkey_trouble(False,True))

