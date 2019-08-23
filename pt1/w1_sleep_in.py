def sleep_in(weekday, vacation):
    if not weekday:
        return True
    if vacation:
        return True
    return False


ret = sleep_in(False, False)
print(ret)
print(sleep_in(True,False))
print(sleep_in(False,True))
