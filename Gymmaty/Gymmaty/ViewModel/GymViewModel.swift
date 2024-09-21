import Foundation
import Combine

class GymViewModel: ObservableObject {
    @Published var gyms: [Gym] = GymData.gyms

    enum SortOrder {
        case distance, price, name
    }

    @Published var sortOrder: SortOrder = .distance {
        didSet {
            sortGyms()
        }
    }

    // Change the access level to internal (or public)
    func sortGyms() {
        switch sortOrder {
        case .distance:
            gyms.sort { Double($0.distance.dropLast(3)) ?? 0 < Double($1.distance.dropLast(3)) ?? 0 }
        case .price:
            gyms.sort { Int($0.price.replacingOccurrences(of: " EGP", with: "").replacingOccurrences(of: ",", with: "")) ?? 0 < Int($1.price.replacingOccurrences(of: " EGP", with: "").replacingOccurrences(of: ",", with: "")) ?? 0 }
        case .name:
            gyms.sort { $0.name < $1.name }
        }
    }
}
