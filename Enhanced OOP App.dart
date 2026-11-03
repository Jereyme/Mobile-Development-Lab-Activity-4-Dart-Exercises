abstract class Bird {
  void makeSound();
}
// This is a class that represents a parrot and implements the Bird interface.
class Parrot implements Bird {
  String name;
  int age;
  String species;
  String skill;
  String _parrotID;

  Parrot(
    this.name,
    this.age,
    this.species,
    this.skill,
    this._parrotID,
  );

  void displayInfo() {
    print("Name: $name");
    print("Age: $age months");
    print("Species: $species");
    print("Skill: $skill");
    print("Parrot ID: $_parrotID");
  }

  @override
  void makeSound() {
    print("$name makes a parrot sound.");
  }
}
// This is a class that represents a cockatiel, which is a type of parrot.
class Cockatiel extends Parrot {
  Cockatiel(
    String name,
    int age,
    String skill,
    String parrotID,
  ) : super(name, age, "Cockatiel", skill, parrotID);

  @override
  void makeSound() {
    print("$name whistles beautifully.");
  }
}
// This is a class that represents an African Grey parrot, which is a type of parrot.
class AfricanGrey extends Parrot {
  AfricanGrey(
    String name,
    int age,
    String skill,
    String parrotID,
  ) : super(name, age, "African Grey", skill, parrotID);

  @override
  void makeSound() {
    print("$name talks like a human.");
  }
}

mixin PetCare {
  void feed() {
    print("The parrot has been fed.");
  }
}
// This is a class that represents a pet cockatiel, which is a type of cockatiel that can be cared for.
class PetCockatiel extends Cockatiel with PetCare {
  PetCockatiel(
    String name,
    int age,
    String skill,
    String parrotID,
  ) : super(name, age, skill, parrotID);
}
// This is that displays the information of the parrots and their sounds, as well as feeding a pet cockatiel.
void main() {
  Cockatiel parrot1 = Cockatiel(
    "Pikachu",
    3,
    "Whistling",
    "P001",
  );

  AfricanGrey parrot2 = AfricanGrey(
    "Lisa",
    5,
    "Talking",
    "P002",
  );

  List<Parrot> parrots = [
    parrot1,
    parrot2,
  ];

  print("PARROT INFORMATION");
  print("===================");

  for (var parrot in parrots) {
    parrot.displayInfo();
    parrot.makeSound();
    print("-------------------");
  }

  PetCockatiel pet = PetCockatiel(
    "Mona",
    4,
    "Dancing, Whistling",
    "P003",
  );

  print("Special Parrot:");
  pet.displayInfo();
  pet.makeSound();
  pet.feed();
}
