import sys

with open("binary-edid.bin", "wb") as f:
    for line in sys.stdin:
        words = line.strip().split()
        words_as_ints = [int(w, 16) for w in words]
        binary_string = "".join(chr(v) for v in words_as_ints)
        f.write(binary_string)
