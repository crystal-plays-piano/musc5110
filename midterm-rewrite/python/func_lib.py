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
    # print(random_row)
    if random_row[0] < 2:
        return trad_interpret_random_row(matrix, random_row)
    else:
        return trad_interpret_random_row(
            invert_matrix(matrix), [random_row[0] - 2, random_row[1]]
        )


# DEFINING LEXICAL OPERATIONS


def lexify(rownumberslist):
    return [
        (str(elem) if elem < 10 else ["t", "e"][elem - 10]) for elem in rownumberslist
    ]


def file_print_matrix(matrix):
    return [(" ".join([str(item) for item in lexify(row)]) + "\n") for row in matrix]


testrow = create_row()

# print(testrow)

# print(lexify(testrow))

# print(matrix_from_row(testrow))

# matrixprintfile = open("matrix.txt", "w")
#
# matrixprintfile.writelines(file_print_matrix(matrix_from_row(testrow)))
#
# matrixprintfile.write("\n\n\n")
#
#
# matrixprintfile.writelines(file_print_matrix(invert_matrix(matrix_from_row(testrow))))
#
# matrixprintfile.close()

# print(lexify(prime_row(matrix_from_row((testrow)), 4)))
#
# print(lexify(inversion_row(matrix_from_row((testrow)), 4)))
#
# print(lexify(retrograde(prime_row(matrix_from_row(testrow), 4))))
#
# print(lexify(retrograde(inversion_row(matrix_from_row(testrow), 4))))
#
# print(lexify(trad_interpret_random_row(matrix_from_row(testrow), random_row())))


# DEFINING PROBABILITY STUFF


# - chkpdf takes a die-roll, checks it against a list of probabilities, returns the index of the list that matches
# - pdfchk is an implementation of a weighted discrete random variable: the list is the probability distribution
# - intent: call pdfchk with num_inpt a random() call and list_inpt the desired weigted variable


def chkpdf(prob: float, pdf: list) -> int:
    for index in range(len(pdf) + 1):
        if prob < sum(pdf[0:index]):
            return int(index - 1)


def cdf(distro_list):
    return [round(sum(distro_list[:index]), 2) for index in range(len(distro_list) + 1)]


# def segment(rowlist, startindex=None):
#     if startindex is not None:
#         segment_gen = rowlist[
#             rowlist.index(startindex) : min(
#                 len(rowlist[startindex:]) - 1,
#                 chkpdf(random.random(), expo_distribution()),
#             )
#         ]
#         # while len(segment_gen) < 4:
#         #     print(segment_gen)
#         #     segment_gen = rowlist[
#         #         startindex : max(
#         #             len(rowlist[startindex:]) - 1,
#         #             chkpdf(random.random(), expo_distribution()),
#         #         )
#         #     ]
#         return segment_gen
#
#     else:
#         segment_gen = rowlist[: chkpdf(random.random(), expo_distribution())]
#         while len(segment_gen) < 4:
#             segment_gen = rowlist[: chkpdf(random.random(), expo_distribution())]
#         return segment_gen
#
def segment(rowlist):
    segment_gen = rowlist[: chkpdf(random.random(), expo_distribution())]
    while len(segment_gen) < 3:
        segment_gen = rowlist[: chkpdf(random.random(), expo_distribution())]
    return segment_gen


# print(expo_distribution())
# print(cdf(expo_distribution()))
# print(chkpdf(random.random(), expo_distribution()))
# print(testrow[: chkpdf(random.random(), expo_distribution())])

new_segment = segment(testrow)

# print(new_segment)

new_row = start_interpret_random_row(
    matrix_from_row(testrow), [random.randrange(4), new_segment[-1]]
)

# print(new_row)
#
# print(segment(new_row))


def make_durations(size):
    return [random.choice([1, 2, 3]) for _ in range(size)]


def make_flat_voice():
    # if tone_row is None:
    #     tone_row = create_row()

    tone_row = create_row()

    # print(tone_row)

    flat_voice_matrix = matrix_from_row(tone_row)

    rows_bank = [random_row()]

    # print(rows_bank)

    pitches = segment(trad_interpret_random_row(flat_voice_matrix, rows_bank[-1]))

    # print(new_segment)

    while len(pitches) < 40:
        rows_bank += [[random.randrange(4), pitches[-1]]]

        pitches += segment(
            start_interpret_random_row(flat_voice_matrix, rows_bank[-1])[1:]
        )

    print(rows_bank)

    return list(zip(pitches, make_durations(len(pitches))))


voice1 = make_flat_voice()

print(voice1)

print(len(voice1))


# make_flat_voice()


def concat_row(rowlist, new_row):
    return rowlist[: (-1 * (rowlist[::-1].index(new_row[0])))] + new_row


def cycle(inputlist, amount=1):
    return inputlist[amount:] + inputlist[:amount]


def render_row(row_coordinates):

def weighting(rowlist, degree=2):
    print(cycle(rowlist))
    return ((len(rowlist) - cycle(rowlist)[::-1].index(0)) / len(rowlist)) ** degree


print(weighting(list(range(12))))


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
