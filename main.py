s = """
quote = chr(34)

if __name__ == "__main__":
    print("s = ", end="")
    print(quote, quote, quote, end="", sep="")
    print(s, end="")
    print(quote, quote, quote, sep="")
    print(s, end="")
"""

quote = chr(34)

if __name__ == "__main__":
    print("s = ", end="")
    print(quote, quote, quote, end="", sep="")
    print(s, end="")
    print(quote, quote, quote, sep="")
    print(s, end="")
