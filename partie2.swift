import Foundation
protocol Shape {
    func area() -> Double
    func perimeter() -> Double
}

class Rectangle: Shape {
    var length: Double
    var width: Double

    init(length: Double, width: Double) {
        self.length = length
        self.width = width
    }

    func perimeter() -> Double {
        return 2 * (length + width)
    }

    func area() -> Double {
        return length * width
    }
}

class Triangle: Shape {
    var side1: Double
    var side2: Double
    var side3: Double

    init(side1: Double, side2: Double, side3: Double) {
        self.side1 = side1
        self.side2 = side2
        self.side3 = side3
    }

    func perimeter() -> Double {
        return side1 + side2 + side3
    }

    func area() -> Double {
        let s = perimeter() / 2
        return sqrt(s * (s - side1) * (s - side2) * (s - side3))
    }
}

class Circle: Shape {
    var radius: Double

    init(radius: Double) {
        self.radius = radius
    }

    func perimeter() -> Double {
        return 2 * Double.pi * radius
    }

    func area() -> Double {
        return Double.pi * radius * radius
    }
}

// Création de la liste de formes
var shapes: [Shape] = [
    Circle(radius: 3),
    Circle(radius: 4),
    Circle(radius: 5),
    Rectangle(length: 2, width: 3),
    Rectangle(length: 4, width: 5),
    Rectangle(length: 6, width: 7)
]

// Parcours de la liste et affichage des informations
for shape in shapes {
    if let circle = shape as? Circle {
        print("Je suis un cercle, mon rayon est \(circle.radius), ma surface est \(circle.area()), et mon périmètre est \(circle.perimeter())")
    } else if let rectangle = shape as? Rectangle {
        print("Je suis un rectangle, ma longueur est \(rectangle.length) et ma largeur est \(rectangle.width), ma surface est \(rectangle.area()), et mon périmètre est \(rectangle.perimeter())")
    }
}
