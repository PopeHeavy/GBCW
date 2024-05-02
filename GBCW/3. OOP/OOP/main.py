import classes

#9. Программа-реестр домашних животных
#    - Написать программу на Java, которая будет имитировать реестр домашних животных.

#Должен быть реализован следующий функционал:

#    9.1. Добавление нового животного
#        - Реализовать функциональность для добавления новых животных в реестр.
#        Животное должно определяться в правильный класс (например, "собака", "кошка", "хомяк" и т.д.)

#    9.2. Список команд животного
#        - Вывести список команд, которые может выполнять добавленное животное (например, "сидеть", "лежать").

#    9.3. Обучение новым командам
#        - Добавить возможность обучать животных новым командам.
    
#    9.4 Вывести список животных по дате рождения

#    9.5. Навигация по меню
#        - Реализовать консольный пользовательский интерфейс с меню для навигации между вышеуказанными функциями.

#10. Счетчик животных
#Создать механизм, который позволяет вывести на экран общее количество созданных животных любого типа (Как домашних,
#так и вьючных), то есть при создании каждого нового животного счетчик увеличивается на “1”.


# Изначально списка животных нет, нужно создать чтобы проверить работоспособность программы

list = []
def main():
    print('\nГлавное меню '
          '\n1. Список всех животных '
          '\n2. Выбрать животное '
          '\n3. Добавить новое животное '
          '\n4. Команды животного '
          '\n5. Вывести даты рождения' 
          '\n6. Обучить команде '
          '\n7. Количество животных'
          '\n8. Выход')

    menu_input = input()

    if menu_input == '1':
        animal_list()
    elif menu_input == '2':
        select_animal()
    elif menu_input == '3':
        add_animal()
    elif menu_input == '4':
        command_list()
    elif menu_input == '5':
        birthday_list()
    elif menu_input == '6':
        add_command()
    elif menu_input == '7':
        animal_count()
    elif menu_input == '8':
        print("До свидания!")
        exit()

def animal_list():
    print(list, sep = "\n")

def select_animal():
    p = int(input("Введите номер животного которое вас интересует: "))-1
    print(list[p])

def add_animal():
    print('\nВыберите вид животного: '
          '\n1. Собака'
          '\n2. Кошка'
          '\n3. Хомяк'
          '\n4. Лошадь'
          '\n5. Верблюд'
          '\n6. Осёл'
          )

    animal_input = input()
    if animal_input == '1':
        name = input("Имя: ")
        commands = input("Комманды: ")
        birthday = input("Дата рождения в формате ДД-ММ-ГГГГ: ")
        animal_type = 'Pet'
        species = 'Dog'
        animal = classes.Dog(name, commands, birthday, animal_type, species)
        list.append(animal)
        print(list, sep="\n")
        return list


    elif animal_input == '2':
        name = input("Имя: ")
        commands = input("Комманды: ")
        birthday = input("Дата рождения в формате ДД-ММ-ГГГГ: ")
        animal_type = 'Pet'
        species = 'Cat'
        animal = classes.Cat(name, commands, birthday, animal_type, species)
        list.append(animal)
        print(list, sep="\n")
        return list

    elif animal_input == '3':
        name = input("Имя: ")
        commands = input("Комманды: ")
        birthday = input("Дата рождения в формате ДД-ММ-ГГГГ: ")
        animal_type = 'Pet'
        species = 'Hamster'
        animal = classes.Hamster(name, commands, birthday, animal_type, species)
        list.append(animal)
        print(list, sep="\n")
        return list

    elif animal_input == '4':
        name = input("Имя: ")
        commands = input("Комманды: ")
        birthday = input("Дата рождения в формате ДД-ММ-ГГГГ: ")
        animal_type = 'Pack Animal'
        species = 'Horse'
        animal = classes.Horse(name, commands, birthday, animal_type, species)
        list.append(animal)
        print(list, sep="\n")
        return list

    elif animal_input == '5':
        name = input("Имя: ")
        commands = input("Комманды: ")
        birthday = input("Дата рождения в формате ДД-ММ-ГГГГ: ")
        animal_type = 'Pack Animal'
        species = 'Camel'
        animal = classes.Camel(name, commands, birthday, animal_type, species)
        list.append(animal)
        print(list, sep="\n")
        return list

    elif animal_input == '6':
        name = input("Имя: ")
        commands = input("Комманды: ")
        birthday = input("Дата рождения в формате ДД-ММ-ГГГГ: ")
        animal_type = 'Pack Animal'
        species = 'Donkey'
        animal = classes.Donkey(name, commands, birthday, animal_type, species)
        list.append(animal)
        print(list, sep="\n")
        return list

def command_list():
    p = int(input("Введите номер животного которое вас интересует: ")) - 1
    print(list[p].commands)

def birthday_list():
    for Animal in list:
        print(Animal.birthday)

def add_command():
    p = int(input("Введите номер животного которое вас интересует: ")) - 1
    print(list[p].commands)
    new_command = input("Введите новый список команд: ")
    setattr(list[p], 'commands', new_command)
    print(list[p].commands)

def animal_count():
    print(classes.total())

while True:
    main()

