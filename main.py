from application.salary import calculate_salary
from application.db.people import get_employees
from datetime import date


# 3ье задание
def date_now():
    current_date = date.today()
    formatted_date = current_date.strftime("%d.%m.%Y")
    print("Сегодняшняя дата:", formatted_date)


if __name__ == '__main__':
    calculate_salary()
    get_employees()
    date_now()
