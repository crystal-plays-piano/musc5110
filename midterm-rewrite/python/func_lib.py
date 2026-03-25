import random
import math


# DEFINING MATHEMATICAL OPERATIONS


def truncate(digit):
    return math.floor(digit * 100) / 100


def normalise_no_offset(inputlist):
    return [truncate(item / sum(inputlist)) for item in inputlist]


def normalise(inputlist):
    tmplist = normalise_no_offset(inputlist)
    tmplist[-1] += 1 - sum(tmplist)
    return [round(item, 2) for item in tmplist]


def expo_distribution(list_len=12):
    return normalise([math.e ** (item / list_len) for item in range(list_len)])


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


def prime_row(matrix, startclass):
    return matrix[[row[0] for row in matrix].index(startclass)]


def inversion_row(matrix, startclass):
    return [row[matrix[0].index(startclass)] for row in matrix]


def random_row():
    random_gen = random.choice(range(48))
    return [random_gen % 4, random_gen % 12]


def interpret_random_row(matrix, random_row):
    print(random_row)
    return [
        lambda to_apply_startclass: prime_row(matrix, to_apply_startclass),
        lambda to_apply_startclass: inversion_row(matrix, to_apply_startclass),
        lambda to_apply_startclass: retrograde(prime_row(matrix, to_apply_startclass)),
        lambda to_apply_startclass: retrograde(
            inversion_row(matrix, to_apply_startclass)
        ),
    ][random_row[0]](random_row[1])


# DEFINING LEXICAL OPERATIONS


def lexify(rownumberslist):
    return [
        (str(elem) if elem < 10 else ["t", "e"][elem - 10]) for elem in rownumberslist
    ]


def file_print_matrix(matrix):
    return [(" ".join([str(item) for item in lexify(row)]) + "\n") for row in matrix]


testrow = create_row()

# print(testrow)

print(lexify(testrow))

# print(matrix_from_row(testrow))

matrixprintfile = open("matrix.txt", "w")

matrixprintfile.writelines(file_print_matrix(matrix_from_row(testrow)))

matrixprintfile.close()

print(lexify(prime_row(matrix_from_row((testrow)), 4)))

print(lexify(inversion_row(matrix_from_row((testrow)), 4)))

print(lexify(retrograde(prime_row(matrix_from_row(testrow), 4))))

print(lexify(retrograde(inversion_row(matrix_from_row(testrow), 4))))

print(lexify(interpret_random_row(matrix_from_row(testrow), random_row())))


# DEFINING PROBABILITY STUFF


# - chkpdf takes a die-roll, checks it against a list of probabilities, returns the index of the list that matches
# - pdfchk is an implementation of a weighted discrete random variable: the list is the probability distribution
# - intent: call pdfchk with num_inpt a random() call and list_inpt the desired weigted variable
def chkpdf(num_inpt: float, list_inpt: list):
    prob = num_inpt
    pdf = list_inpt

    for index in range(len(pdf) + 1):
        if prob < sum(pdf[0:index]):
            return index - 1


def mkpdf(size_inpt: int):
    size = size_inpt
    pdf_no_norm = [random.random() for _ in range(size)]
    norm_factor = sum(pdf_no_norm)
    pdf_norm_frac = [(item / norm_factor) for item in pdf_no_norm]
    pdf_norm = [math.floor(item * 100) / 100 for item in pdf_norm_frac]
    offset = round(1 - sum(pdf_norm), 2)
    pdf_norm[-1] = round(pdf_norm[-1] + offset, 2)
    return pdf_norm


def mkmatrix(size_inpt: int):
    size = size_inpt
    matrix = []
    for _ in range(size):
        matrix.append(mkpdf(size))
    return matrix


def mkvchn(size_inpt: int, matrix_inpt: list):
    size = size_inpt
    matrix = matrix_inpt
    chain = []
    initial_index = random.randint(0, len(matrix[0]) - 1)
    chain.append(initial_index)
    for iter in range(size - 1):
        randx = random.random()
        chain.append(chkpdf(randx, matrix[chain[iter]]))
    return chain


def lyprint(lines_inpt: list):
    lines = lines_inpt
    lylines = ["    " + line + "\n" for line in lines]
    return lylines
