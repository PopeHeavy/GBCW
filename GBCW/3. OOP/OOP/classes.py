from datetime import date
class Animal:

    animal_total = 0

    def __init__(self,  name, commands, birthday):
        self.name = name
        self.commands = commands
        self.birthday = birthday

        Animal.animal_total += 1


class Pet(Animal):
    def __init__(self, name, commands, birthday, animal_type):
        super().__init__(name, commands, birthday)
        self.animal_type = animal_type


class PackAnimal(Animal):
    def __init__(self, name, commands, birthday, animal_type):
        super().__init__(name, commands, birthday)
        self.animal_type = animal_type


class Dog(Pet):
    def __init__(self, name, commands, birthday, animal_type, species):
        super().__init__(name, commands, birthday, animal_type)
        self.species = species

    def __repr__(self):
        return '{} - {} - {} - {} - {}'.format(self.name, self.commands, self.birthday, self.animal_type,
                                                    self.species)


class Cat(Pet):
    def __init__(self, name, commands, birthday, animal_type, species):
        super().__init__(name, commands, birthday, animal_type)
        self.species = species

    def __repr__(self):
        return '{} - {} - {} - {} - {}'.format(self.name, self.commands, self.birthday, self.animal_type,
                                               self.species)

class Hamster(Pet):
    def __init__(self, name, commands, birthday, animal_type, species):
        super().__init__(name, commands, birthday, animal_type)
        self.species = species

    def __repr__(self):
        return '{} - {} - {} - {} - {}'.format(self.name, self.commands, self.birthday, self.animal_type,
                                               self.species)



class Horse(PackAnimal):
    def __init__(self, name, commands, birthday, animal_type, species):
        super().__init__(name, commands, birthday, animal_type)
        self.species = species

    def __repr__(self):
        return '{} - {} - {} - {} - {}'.format(self.name, self.commands, self.birthday, self.animal_type,
                                               self.species)

class Camel(PackAnimal):
    def __init__(self, name, commands, birthday, animal_type, species):
        super().__init__(name, commands, birthday, animal_type)
        self.species = species

    def __repr__(self):
        return '{} - {} - {} - {} - {}'.format(self.name, self.commands, self.birthday, self.animal_type,
                                               self.species)

class Donkey(PackAnimal):
    def __init__(self, name, commands, birthday, animal_type, species):
        super().__init__(name, commands, birthday, animal_type)
        self.species = species

    def __repr__(self):
        return '{} - {} - {} - {} - {}'.format(self.name, self.commands, self.birthday, self.animal_type,
                                               self.species)


def total():
    print(Animal.animal_total)

