import random
import math


# ----------------------------------
# - MATH FUNCTIONS
# ----------------------------------


def truncate(digit):
    return math.floor(digit * 100) / 100


def normalise_no_offset(inputlist):
    return [truncate(item / sum(inputlist)) for item in inputlist]


def normalise(inputlist):
    tmplist = normalise_no_offset(inputlist)
    tmplist[-1] += 1 - sum(tmplist)
    return [round(item, 2) for item in tmplist]


# ----------------------------------
# - TONE ROW FUNCTIONS
# ----------------------------------


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


# ----------------------------------
# - MATRIX OPERATIONS
# ----------------------------------


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


def random_row() -> list[int]:
    random_gen = random.choice(range(48))
    return [math.floor(random_gen / 12), random_gen % 12]


def trad_interpret_random_row(matrix, random_row):
    returnvalue = [
        lambda to_apply_startclass: prime_row(matrix, to_apply_startclass),
        lambda to_apply_startclass: inversion_row(matrix, to_apply_startclass),
        lambda to_apply_startclass: retrograde(prime_row(matrix, to_apply_startclass)),
        lambda to_apply_startclass: retrograde(
            inversion_row(matrix, to_apply_startclass)
        ),
    ][random_row[0]](random_row[1])
    return returnvalue


# ----------------------------------
# - LEXICAL FUNCTIONS
# ----------------------------------


def lexify(rownumberslist):
    return [
        (str(elem) if elem < 10 else ["t", "e"][elem - 10]) for elem in rownumberslist
    ]


def file_print_matrix(matrix):
    return [(",".join([str(item) for item in lexify(row)]) + "\n") for row in matrix]


# ----------------------------------
# - PROBABILITY FUNCTIONS
# ----------------------------------


def chkpdf(prob: float, pdf: list) -> int:
    for index in range(len(pdf) + 1):
        if prob < sum(pdf[0:index]):
            return int(index - 1)
    return -1


# ----------------------------------
# - MISC FUNCTIONS
# ----------------------------------


def make_durations(size):
    return [random.choice([1, 2, 3]) for _ in range(size)]


def concat_row(rowlist: list[int], new_row: list[int]) -> list[int]:
    return rowlist[: (-1 * (rowlist[::-1].index(new_row[0]))) - 1] + new_row


def listsetvalue(inputlist: list, value, index: int) -> None:
    try:
        inputlist[index] = value
    except IndexError:
        inputlist += [None] * (index + 1 - len(inputlist))
        inputlist[index] = value


def coordinate_to_row_number(row_coordinates) -> int:
    return (row_coordinates[0] * 12) + row_coordinates[1]


def row_number_to_coordinate(row_number: int) -> list[int]:
    try:
        return [math.floor(row_number / 12), row_number % 12]
    finally:
        pass


def cycle(inputlist, amount=1):
    return inputlist[amount:] + inputlist[:amount]


# ----------------------------------
# - FLAT VOICE GENERATION
# ----------------------------------


def rewrite_flat_voice(tone_row: list = []):
    if len(tone_row) == 0:
        tone_row = create_row()

    flat_voice_matrix = matrix_from_row(tone_row)

    rows_bank = [random_row()]

    rows_bank_positions = [coordinate_to_row_number(elem) for elem in rows_bank]

    pitches = trad_interpret_random_row(flat_voice_matrix, rows_bank[-1])

    while not (
        (len(pitches) >= 64) and ((rows_bank[-1][0] < 2) and rows_bank[-1][1] == 0)
    ):
        rows_bank += [random_row()]

        pitches = concat_row(
            pitches, trad_interpret_random_row(flat_voice_matrix, rows_bank[-1])
        )
        listsetvalue(
            rows_bank_positions,
            coordinate_to_row_number(rows_bank[-1]),
            len(pitches) - 12,
        )

        listsetvalue(rows_bank_positions, None, len(rows_bank_positions) + 14)

    durations = make_durations(len(pitches))

    return list(zip(zip(pitches, durations), rows_bank_positions))


# ----------------------------------
# - MARKOV FUNCTIONS
# ----------------------------------


def weighting_function(prime_form_zero: list[int], rowlist, degree=2) -> float:
    return (
        (len(rowlist) - cycle(rowlist)[::-1].index(prime_form_zero[0])) / len(rowlist)
    ) ** degree


def concat_weight(
    prime_form_zero: list[int], rowlistone: list[int], rowlisttwo: list[int]
) -> float:
    try:
        return weighting_function(
            prime_form_zero, rowlisttwo[rowlisttwo.index(rowlistone[-1]) :]
        )
    except ValueError:
        return 0


def markov_pdf(rowlist_prime_zero: list, row_number: int) -> list[float]:
    matrix = matrix_from_row(rowlist_prime_zero)

    rowlist = trad_interpret_random_row(matrix, row_number_to_coordinate(row_number))

    return normalise(
        [
            concat_weight(
                rowlist_prime_zero,
                rowlist,
                trad_interpret_random_row(matrix, row_number_to_coordinate(rownumber)),
            )
            for rownumber in range(48)
        ]
    )


def markov_matrix(rowlist_prime_zero: list) -> list[list[float]]:
    return [markov_pdf(rowlist_prime_zero, rownumber) for rownumber in range(48)]


# ----------------------------------
# - MARKOV VOICE GENERATION
# ----------------------------------


def markov_voice(tonerow: list = []):
    if len(tonerow) == 0:
        tonerow = create_row()

    tone_matrix = matrix_from_row(tonerow)

    rows_bank = [random_row()]

    rows_bank_positions = [coordinate_to_row_number(elem) for elem in rows_bank]

    markov_voice_matrix = markov_matrix(tonerow)

    pitches = trad_interpret_random_row(tone_matrix, rows_bank[-1])

    while not (
        (len(pitches) > 64) and (coordinate_to_row_number(rows_bank[-1]) in [0, 12])
    ):
        rows_bank += [
            row_number_to_coordinate(
                chkpdf(
                    random.random(),
                    markov_voice_matrix[coordinate_to_row_number(rows_bank[-1])],
                )
            )
        ]

        pitches = concat_row(
            pitches, trad_interpret_random_row(tone_matrix, rows_bank[-1])
        )
        listsetvalue(
            rows_bank_positions,
            coordinate_to_row_number(rows_bank[-1]),
            len(pitches) - 12,
        )

    listsetvalue(rows_bank_positions, None, len(rows_bank_positions) + 14)

    durations = make_durations(len(pitches))

    return list(zip(zip(pitches, durations), rows_bank_positions))
