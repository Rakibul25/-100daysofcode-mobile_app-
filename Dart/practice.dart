/* void main() {
  dynamic x = "tom";
  print(x);
}
 */
/* class Employee {
  int id = 0;
  String name = '';
  Employee(int id, String name) {
    this.id = id; // this keyword used
    this.name = name; // this keyword used
  }
}

void main() {
  Employee e1 = new Employee(1, "john");
  print(e1.id); // 1
  print(e1.name); // john
}
 */

void main() {
  int number = 50;

  switch (number) {
    case 50:
      {
        print("50");
      }
      break;
    case 60:
      {
        print("60");
      }
      break;

    default:
      {
        print("default");
      }
      break;
  }
}
