class Rectangle {
  var length: Double
  var width: Double
  static var numberOfRectangles = 0

  init(length: Double, width: Double) {
      self.length = length
      self.width = width
      Rectangle.numberOfRectangles += 1
  }

  func perimeter() -> Double {
      return 2 * (length + width)
  }

  func area() -> Double {
      return length * width
  }
}

// Création de trois rectangles
let rectangle1 = Rectangle(length: 3, width: 4)
let rectangle2 = Rectangle(length: 2, width: 5)
let rectangle3 = Rectangle(length: 4, width: 6)

// Liste des rectangles
var rectangles = [rectangle1, rectangle2, rectangle3]

// Tri de la liste en fonction de l'aire
rectangles.sort { $0.area() < $1.area() }

// Affichage du nombre de rectangles créés
print("Nombre de rectangles créés :", Rectangle.numberOfRectangles)
