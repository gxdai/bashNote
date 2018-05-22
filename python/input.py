while True:
    try:
        x = int(input("Please enter a nubmer: "))
        print("Here are you")
    except ValueError:
        print("Oops! That was no valid number. Try again...")

    print("HERE you are")
