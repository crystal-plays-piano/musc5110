import func_lib

# ----------------------------------
# - CUSTOM BANKS AND FUNCTIONS
# ----------------------------------


pit_bank = [
    "c'!",
    "cis'!",
    "d'!",
    "dis'!",
    "e'!",
    "f'!",
    "fis'!",
    "g'!",
    "gis'!",
    "a'!",
    "ais'!",
    "b'!",
]

tonerow = func_lib.create_row()

tone_matrix = func_lib.matrix_from_row(tonerow)

# -----------------------------------
# - FLAT RANDOM CHOICE SECTION
# -----------------------------------

flat_voice = func_lib.rewrite_flat_voice(tonerow)

# -------------------------------
# - MARKOV SECTION
# -------------------------------

voice_markov_matrix = func_lib.markov_matrix(tonerow)

voice_markov = func_lib.markov_voice(tonerow)

# ---------------------------------------
# - WRITING LILYPOND FILE
# ---------------------------------------

version = """
\\version \"2.24.4\" \n
"""

staffgroup = """
\\new ChoirStaff <<

"""
staff = """

\\new Staff <<
  \\new Voice \\with {
  \\remove Note_heads_engraver
  \\consists Completion_heads_engraver
  \\remove Rest_engraver
  \\consists Completion_rest_engraver
  }
  {
  \\clef treble
  \\time 4/4
  {
"""

score = """

\\score{

 """

midi = """

\\midi{}

"""

layout = """

\\layout{}

"""

# - OPEN FLAT-RANDOM.LY AND WRITE

flat_random_printfile = open("../lilypond/flat-random.ly", "w")

# - STAFF GROUP

flat_random_printfile.write(version)

flat_random_printfile.write(score)

flat_random_printfile.write(layout)

flat_random_printfile.write(staffgroup)


# - STAVES + VOICES


lyprint_flat_voice = [
    pit_bank[flat_voice[i][0][0]] + ["4", "2", "2."][flat_voice[i][0][1] - 1]
    for i in range(len(flat_voice))
]


def row_coordinate_to_text(row_coordinate):
    return ["P", "I", "R", "RI"][row_coordinate[0]] + str(row_coordinate[1])


for i in range(len(flat_voice)):
    if flat_voice[i][1] is not None:
        lyprint_flat_voice[i] += (
            '-"'
            + str(
                row_coordinate_to_text(
                    func_lib.row_number_to_coordinate(flat_voice[i][1])
                )
            )
            + '"'
        )


lyprint_flat_voice = ["   " + item + "\n" for item in lyprint_flat_voice]

flat_random_printfile.write(staff)
flat_random_printfile.writelines(lyprint_flat_voice)
flat_random_printfile.write("}\n}\n>>\n")

# - CLOSES STAFFGROUP

flat_random_printfile.write(">>")

flat_random_printfile.write(midi)

flat_random_printfile.write("}")

# - CLOSES FILE

flat_random_printfile.close()


# - OPEN TONEROW.LY AND WRITE

tonerow_printfile = open("../lilypond/tonerow.ly", "w")

lyprint_tone_row = ["   " + pit_bank[item] + "\n" for item in tonerow]

tonerow_printfile.write(version)

tonerow_printfile.write(score)

tonerow_printfile.write(layout)

tonerow_printfile.write(staffgroup)

# - STAVES + VOICES

tonerow_printfile.write(staff)
tonerow_printfile.writelines(lyprint_tone_row)
tonerow_printfile.write("}\n}\n>>\n")

# - CLOSES STAFFGROUP

tonerow_printfile.write(">>")

tonerow_printfile.write(midi)

tonerow_printfile.write("}")

# - CLOSES FILE

tonerow_printfile.close()


# - OPEN MARKOV-CHAIN.LY AND WRITE

markov_chain_printfile = open("../lilypond/markov-chain.ly", "w")

markov_chain_printfile.write(version)

markov_chain_printfile.write(score)

markov_chain_printfile.write(layout)

lyprint_voice_markov = [
    pit_bank[voice_markov[i][0][0]] + ["4", "2", "2."][voice_markov[i][0][1] - 1]
    for i in range(len(voice_markov))
]

for i in range(len(voice_markov)):
    if voice_markov[i][1] is not None:
        lyprint_voice_markov[i] += (
            '-"'
            + str(
                row_coordinate_to_text(
                    func_lib.row_number_to_coordinate(voice_markov[i][1])
                )
            )
            + '"'
        )


lyprint_voice_markov = ["   " + item + "\n" for item in lyprint_voice_markov]
markov_chain_printfile.writelines(staffgroup)

# - STAVES + VOICES

markov_chain_printfile.write(staff)
markov_chain_printfile.writelines(lyprint_voice_markov)
markov_chain_printfile.write("}\n}\n>>\n")

# - CLOSES STAFFGROUP

markov_chain_printfile.write(">>")


markov_chain_printfile.write(midi)

markov_chain_printfile.write("}")

# - CLOSES FILE

markov_chain_printfile.close()


# ---------------------------------------
# - WRITING MARKOV CHAIN TABLE CSV
# ---------------------------------------

markov_table_printfile = open("markov-table.csv", "w")

matrix_print = []

matrix_print.append(
    "x," + ",".join(([str(i + 1) for i in range(len(voice_markov_matrix))])) + "\n"
)

for i in range(len(voice_markov_matrix)):
    matrix_print.append(
        str(i + 1)
        + ","
        + ",".join(
            [str(voice_markov_matrix[i][j]) for j in range(len(voice_markov_matrix))]
        )
        + "\n"
    )

markov_table_printfile.writelines(matrix_print)

markov_table_printfile.close()


# ---------------------------------------
# - WRITING TONE MATRIX TABLE CSV
# ---------------------------------------

tone_matrix_table_printfile = open("matrix-table.csv", "w")

tone_matrix_print = func_lib.file_print_matrix(tone_matrix)

tone_matrix_print = []

row_names_strings = ["P ", "I ", "R ", "RI "]


tone_matrix_print.append(
    "x,"
    + ",".join(
        ([row_names_strings[1] + str(tone_matrix[0][i]) for i in range(len(tonerow))])
    )
    + "\n"
)

for i in range(len(tonerow)):
    tone_matrix_print.append(
        row_names_strings[0]
        + str(tone_matrix[i][0])
        + ","
        + ",".join([str(tone_matrix[i][j]) for j in range(len(tonerow))])
        + ","
        + row_names_strings[2]
        + str(tone_matrix[i][0])
        + "\n"
    )


tone_matrix_print.append(
    "x,"
    + ",".join(
        ([row_names_strings[3] + str(tone_matrix[0][i]) for i in range(len(tonerow))])
    )
    + "\n"
)

tone_matrix_table_printfile.writelines(tone_matrix_print)

tone_matrix_table_printfile.close()

tone_matrix_reprintfile = open("tonematrix.csv", "w")

tone_matrix_reprintfile.writelines(func_lib.file_print_matrix(tone_matrix))

tone_matrix_reprintfile.close()
