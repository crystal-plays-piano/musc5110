import functions
import random

testSet = functions.pitch_set(random.sample(list(range(16)), random.randrange(1, 6)))

print("pitches: " + str(testSet.raw_input))

print("sorted: " + str(testSet.sort_pitches))

print("classes: " + str(testSet.classes))

print("normal: " + str(testSet.normal()))
