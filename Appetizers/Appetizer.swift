import Foundation

struct Appetizer: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse {
    let request: [Appetizer]
}

struct MockData {
    static let sampleAppetizer = Appetizer(id: 0001, name: "Asian Flank Steak",
                                           description: "This is a Steak",
                                           price: 9.99,
                                           imageURL: "asian-flank-steak",
                                           calories: 99,
                                           protein: 99,
                                           carbs: 99)

    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer]
}

extension Appetizer {
    var formattedPrice: String {
        String(format: "$%.2f", price)
    }
}
