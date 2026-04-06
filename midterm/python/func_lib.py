import random
import math


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
