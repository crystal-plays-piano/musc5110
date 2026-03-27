import random

import math


# DEFINING ROW AND MATRIX OPERATIONS


def create_row(superset=list(range(12))):
    return random.sample(superset, len(superset))


def transpose_by(rowlist, amount, supersetsize=12):
    return [((elem + amount) % supersetsize) for elem in rowlist]


def transpose_to(rowlist, value, supersetsize=12):
    return transpose_by(transpose_by(rowlist, -1 * rowlist[0]), value, supersetsize)


def invert_around_zero(rowlist, supersetsize=12):
    return [((-1 * elem) % supersetsize) for elem in rowlist]


def invert(rowlist, axis=0):
    return transpose_by(invert_around_zero(transpose_by(rowlist, -1 * axis)), axis)


def invert_around_first(rowlist):
    return invert(rowlist, rowlist[0])


def retrograde(rowlist):
    return rowlist[::-1]


def matrix_from_row(rowlist, supersetsize=12):
    matrix = [
        transpose_to(rowlist, value, supersetsize)
        for value in invert_around_first(rowlist)
    ]
    return matrix


def xinvert_matrix(matrix):
    return [retrograde(row) for row in matrix]


def yinvert_matrix(matrix):
    return retrograde(matrix)


def invert_matrix(matrix):
    return yinvert_matrix(xinvert_matrix(matrix))


def prime_row(matrix, startclass):
    return matrix[[row[0] for row in matrix].index(startclass)]


def inversion_row(matrix, startclass):
    return [row[matrix[0].index(startclass)] for row in matrix]


def random_row():
    random_gen = random.choice(range(48))
    return [random_gen % 4, random_gen % 12]


def trad_interpret_random_row(matrix, random_row):
    # print(random_row)
    returnvalue = [
        lambda to_apply_startclass: prime_row(matrix, to_apply_startclass),
        lambda to_apply_startclass: inversion_row(matrix, to_apply_startclass),
        lambda to_apply_startclass: retrograde(prime_row(matrix, to_apply_startclass)),
        lambda to_apply_startclass: retrograde(
            inversion_row(matrix, to_apply_startclass)
        ),
    ][random_row[0]](random_row[1])
    # print(returnvalue)
    return returnvalue


def start_interpret_random_row(matrix, random_row):
    print(random_row)
    if random_row[0] < 2:
        return trad_interpret_random_row(matrix, random_row)
    else:
        random_row[0] -= 2
        return trad_interpret_random_row(invert_matrix(matrix), random_row)


# DEFINING LEXICAL OPERATIONS


def lexify(rownumberslist):
    return [
        (str(elem) if elem < 10 else ["t", "e"][elem - 10]) for elem in rownumberslist
    ]


def file_print_matrix(matrix):
    return [(" ".join([str(item) for item in lexify(row)]) + "\n") for row in matrix]
