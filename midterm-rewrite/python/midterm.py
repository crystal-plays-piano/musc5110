# ------------------------------
# - ARGUMENTS FROM COMMAND LINE
# ------------------------------

import func_lib
import random
import argparse

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Script that adds 3 numbers from CMD")
    parser.add_argument("--flatsize", type=int, default=40)
    parser.add_argument("--numvoices", type=int, default=3)
    parser.add_argument("--mkvsize", type=int, default=12)
    parser.add_argument("--chainlen", type=int, default=20)
    args = parser.parse_args()

flat_size = args.flatsize
num_voices = args.numvoices
mkv_size = args.mkvsize
chain_len = args.chainlen

# ------------------------------
# - GLOBAL VARIABLES
# ------------------------------
"""
flat_size = 40

num_voices = 3

mkv_size = 12

chain_len = 20
"""
# ----------------------------------
# - CUSTOM BANKS AND FUNCTIONS
# ----------------------------------


dur_bank = [2**x for x in range(5)]

pit_bank = [
    "c",
    "cis",
    "d",
    "dis",
    "e",
    "f",
    "fis",
    "g",
    "gis",
    "a",
    "ais",
    "b",
]

dyn_bank = ["pp", "p", "mp", "mf", "f", "ff"]


def makeflatvoicelist():
    tmp_dur_len = [random.choice(dur_bank) for _ in range(flat_size)]

    # while sum([1 / elem for elem in tmp_dur_len]) < 16:
    #     tmp_dur_len += [random.choice(dur_bank) for _ in range(flat_size)]

    tmp_pit_len = [random.choice(pit_bank) for _ in range(len(tmp_dur_len))]

    tmp_dyn_toggle = random.sample(range(len(tmp_dur_len)), 8)

    tmp_dyn_len = [
        "\\" + random.choice(dyn_bank) if i in tmp_dyn_toggle else ""
        for i in range(len(tmp_dur_len))
    ]

    output_len = [
        [
            tmp_pit_len[i] + str(tmp_dur_len[i]) + tmp_dyn_len[i]
            for i in range(len(tmp_dur_len))
        ],
        [tmp_dur_len[i] for i in range(len(tmp_dur_len))],
    ]

    return output_len


def maxdurations(durations_list: list):
    print([sum([1 / elem for elem in voice]) for voice in durations_list])
    print(max([sum([1 / elem for elem in voice]) for voice in durations_list]))
    return max([sum([1 / elem for elem in voice]) for voice in durations_list])


# -----------------------------------
# - FLAT RANDOM CHOICE SECTION
# -----------------------------------

voices_zip = [makeflatvoicelist() for _ in range(num_voices)]

# print(voices_zip[0])

voices = [[elem for elem in voice[0]] for voice in voices_zip]

durations = [[duration for duration in voice[1]] for voice in voices_zip]

# print(durations[0])


# print(voices[0])
# voices = [ superelem[elem[0] for elem in voices_zip[0]]

# print(voices[0])

# voices_printfile = open("voices.txt")
#
# voices_printfile.writelines(voices[0][0])
#
# voices_printfile.close()

# -------------------------------
# - MARKOV SECTION
# -------------------------------

mkv_bank = [voices[i][0:mkv_size] for i in range(num_voices)]

# print(mkv_bank[0])

mkv_matrix = func_lib.mkmatrix(mkv_size)

# - chain

mkv_chain = func_lib.mkvchn(chain_len, mkv_matrix)


durations_chain = [
    [voice[chain_index] for chain_index in mkv_chain] for voice in durations
]


print(mkv_chain)
# print(durations_chain[0])
# print(maxdurations(durations_chain))

# print("\n")

while maxdurations(durations_chain) < 16:
    mkv_chain += func_lib.mkvchn(chain_len, mkv_matrix)
    durations_chain = [
        [voice[chain_index] for chain_index in mkv_chain] for voice in durations
    ]
    # print(mkv_chain)
    # print(durations_chain[0])
    # print("\n")

# print(maxdurations(durations_chain))

mkv_chain_render = [
    [mkv_bank[i][mkv_chain[item]] for item in mkv_chain] for i in range(num_voices)
]

# print(mkv_chain_render[0])

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
  \\clef alto
  \\time 4/4
  {
"""


# - OPEN FLAT-RANDOM.LY AND WRITE

flat_random_printfile = open("../lilypond/flat-random.ly", "w")

# - STAFF GROUP

flat_random_printfile.write(version)

flat_random_printfile.write(staffgroup)

# - STAVES + VOICES


lyprint_voices = [
    [voices[i][j] + '-"' + str(j + 1) + '"' for j in range(len(voices[i]))]
    for i in range(num_voices)
]

for i in range(num_voices):
    flat_random_printfile.write(staff)
    flat_random_printfile.writelines(func_lib.lyprint(lyprint_voices[i]))
    flat_random_printfile.write("}\n}\n>>\n")

# - CLOSES STAFFGROUP

flat_random_printfile.write(">>")

# - CLOSES FILE

flat_random_printfile.close()


# - OPEN MARKOV-BANK.LY AND WRITE

markov_bank_printfile = open("../lilypond/markov-bank.ly", "w")

markov_bank_printfile.write(version)

lyprint_mkv_bank = [
    [mkv_bank[i][j] + '-"' + str(j + 1) + '"' for j in range(mkv_size)]
    for i in range(num_voices)
]

markov_bank_printfile.write(staffgroup)

# - STAVES + VOICES

for i in range(num_voices):
    markov_bank_printfile.write(staff)
    markov_bank_printfile.writelines(func_lib.lyprint(lyprint_mkv_bank[i]))
    markov_bank_printfile.write("}\n}\n>>\n")

# - CLOSES STAFFGROUP

markov_bank_printfile.write(">>")

# - CLOSES FILE

markov_bank_printfile.close()


# - OPEN MARKOV-CHAIN.LY AND WRITE

markov_chain_printfile = open("../lilypond/markov-chain.ly", "w")

markov_chain_printfile.write(version)

lyprint_mkv_chain = [
    [voice[index] + '-"' + str(index + 1) + '"' for index in range(len(mkv_chain))]
    for voice in mkv_chain_render
]

markov_chain_printfile.writelines(staffgroup)

# - STAVES + VOICES

for i in range(num_voices):
    markov_chain_printfile.write(staff)
    markov_chain_printfile.writelines(func_lib.lyprint(lyprint_mkv_chain[i]))
    markov_chain_printfile.write("}\n}\n>>\n")

# - CLOSES STAFFGROUP

markov_chain_printfile.write(">>")


# - CLOSES FILE

markov_bank_printfile.close()


# ---------------------------------------
# - WRITING MARKOV CHAIN TABLE CSV
# ---------------------------------------

markov_table_printfile = open("markov-table.csv", "w")

matrix_print = []

matrix_print.append("x," + ",".join(([str(i + 1) for i in range(mkv_size)])) + "\n")

for i in range(mkv_size):
    matrix_print.append(
        str(i + 1)
        + ","
        + ",".join([str(mkv_matrix[i][j]) for j in range(mkv_size)])
        + "\n"
    )

markov_table_printfile.writelines(matrix_print)

markov_table_printfile.close()
