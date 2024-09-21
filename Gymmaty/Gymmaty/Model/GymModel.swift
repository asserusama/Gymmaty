import Foundation

struct Gym: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var distance: String
    var price: String
    var options: [GymOption]
    var images: [String]
    var location: (latitude: Double, longitude: Double)
}

struct GymOption: Identifiable {
    var id = UUID()
    var option: String
    var price: String
}
