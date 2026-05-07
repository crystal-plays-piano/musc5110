import random

def random_percent():
    return float(str(random.random())[:4])

def eval_random_var(p_value):
    if(random_percent() < p_value):
        return 1
    else:
        return 0
