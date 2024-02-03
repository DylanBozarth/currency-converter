//maybe a calcuator?

//lists are arrays []
// sets are an unordered list of unquie items {}. Will only add a certain thing once
// maps are an object that assigns a key to each value {}  {'Tom': '150lbs'} key value pairs
// assert = stop the program if ()   ex: assert(user.isAuth);
//const must have a constant value, nothing can change. Final can have parts of it change before runtime.
// dynamic will let you have the variable act like vanilla javascript.
var maps = {'test': 'cheese'};
var example = maps.remove('test');

int doMath(operator) {
  var returnNumber = 0;
  switch (operator) {
    case 'X':
      break;
    case '/':
      break;
    case '+':
      break;
    case '-':
      break;
  }
  return returnNumber;
}

void generateFibonacciSequence(int terms) {
  if (terms <= 0) {
    return;
  }

  List<int> fibonacciSequence = [0, 1];

  for (int i = 2; i < terms; i++) {
    int nextTerm = fibonacciSequence[i - 1] + fibonacciSequence[i - 2];
    fibonacciSequence.add(nextTerm);
  }

  print('Fibonacci Sequence (up to $terms terms):');
  for (int term in fibonacciSequence) {
    print(term);
  }
}

void main() {
  generateFibonacciSequence(10);
}

class BankAccount {
  String accountHolder;
  double balance;

  BankAccount(this.accountHolder, this.balance);

  void deposit(double amount) {
    if (amount > 0) {
      balance += amount;
      print('Deposit of \$$amount successful. New balance: \$$balance');
    } else {
      print('Invalid deposit amount. Please enter a positive amount.');
    }
  }

  void withdraw(double amount) {
    if (amount > 0 && amount <= balance) {
      balance -= amount;
      print('Withdrawal of \$$amount successful. New balance: \$$balance');
    } else {
      print('Invalid withdrawal amount or insufficient funds.');
    }
  }

  void displayBalance() {
    print('Account Holder: $accountHolder');
    print('Current Balance: \$$balance');
  }
}

double performMathOperation(List<double> numbers, String operation) {
  if (numbers.isEmpty) {
    print('Error: Empty list. Please provide a list of numbers.');
    return 0.0;
  }

  double result;

  switch (operation) {
    case 'sum':
      result = numbers.reduce((a, b) => a + b);
      break;
    case 'product':
      result = numbers.reduce((a, b) => a * b);
      break;
    case 'average':
      result = numbers.reduce((a, b) => a + b) / numbers.length;
      break;
    default:
      print(
          'Error: Invalid operation. Supported operations: sum, product, average.');
      return 0.0;
  }

  print('Result of $operation operation: $result');
  return result;
}

class Planet {
  String name;
  double mass; // in kilograms
  double radius; // in meters

  Planet(this.name, this.mass, this.radius);
}

double calculateGravity(Planet planet) {
  const double gravitationalConstant = 6.67430e-11;

  double gravity =
      (planet.mass / (planet.radius * planet.radius)) * gravitationalConstant;

  return gravity;
}

void planet() {
  List<Planet> planets = [
    Planet('Mercury', 3.3011e23, 2.4397e6),
    Planet('Venus', 4.8675e24, 6.0518e6),
    Planet('Earth', 5.972e24, 6.371e6),
    Planet('Mars', 6.4171e23, 3.3895e6),
    Planet('Jupiter', 1.8982e27, 6.9911e7),
    Planet('Saturn', 5.6834e26, 5.8232e7),
    Planet('Uranus', 8.681e25, 2.5362e7),
    Planet('Neptune', 1.024e26, 2.4622e7),
  ];

  for (Planet planet in planets) {
    double gravity = calculateGravity(planet);
    print('Gravity on ${planet.name}: $gravity N/kg');
  }
}
