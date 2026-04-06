import random


class pitch_set:
    def __init__(self, input_pitches: list):
        self.raw_input = input_pitches
        self.sort_pitches = sorted(input_pitches)
        self.classes = list(set(sorted([elem % 12 for elem in self.sort_pitches])))

    def normal(self):
        return_max_index = 0

        def interval_check(index):
            return self.classes[0] - self.classes[index]

        for i in range(len(self.classes)):
            if interval_check(return_max_index) < interval_check(i):
                return_max_index = i

        return self.classes[:return_max_index] + self.classes[return_max_index:]


def rowgen():
    return random.shuffle(list(range(12)))
