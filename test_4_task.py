import random


def generate_number():
    number = random.randint(1, 100)
    return number


# 4ое задание
def test_number_is_even():
    number = generate_number()
    assert number % 2 == 0, f"Число {number} нечетное"