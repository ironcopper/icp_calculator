// a simple calculator
// let: immutable, var: mutable

actor calculator {
  var cell : Int = 0;

  // addition
  public func add(n : Int) : async Int {
    cell += n;
    return cell;
    // (Debug.print(debug_show(cell));)
  };

  // subtraction
  public func sub(n : Int) : async Int {
    cell -= n;
    return cell;
  };

  // multiplication
  public func mul(n : Int) : async Int {
    cell *= n;
    return cell;
  };

  // division
  public func div(n : Int) : async ?Int {
    if (n == 0) {
      // encodes the division by zero error.
      return null;
    } else {
      cell /= n;
      return ?cell;
    };
  };

  // clearing the calculator
  public func clearall() : async () {
    cell := 0;
  };
};
calculator
