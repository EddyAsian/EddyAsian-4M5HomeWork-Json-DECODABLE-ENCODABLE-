
import UIKit

let productJson = """
[
    {
            "productName": "Burger Craze",
            "productImage": "burger3",
            "productType2": "American",
            "promotionLabel": "Spend 25$, save 5$",
            "timeScheduleLabel": "• OPEN",
            "productRate": "⭐️ 4.6 (601)",
            "productType": "•  Burgers",
            "productDelivery": "Delivery: FREE  •",
            "productPrice": "Minimum: 10 $",
            "productTime": "15-20 min",
            "productDistance": "1.5 km away"
    },

    {
            "productName": "Pizza Margarita",
            "productImage": "pizza1",
            "productType2": "Italian",
            "promotionLabel": "Spend 50$, save 14$",
            "timeScheduleLabel": "• OPEN",
            "productRate": "⭐️ 4.9 (601)",
            "productType": "•  Pizza",
            "productDelivery": "Delivery: FREE  •",
            "productPrice": "Minimum: 14 $",
            "productTime": "10-15 min",
            "productDistance": "2.5 km away"
    },

    {
            "productName": "Kebab BBQ",
            "productImage": "Product3",
            "productType2": "Asian",
            "promotionLabel": "Spend 25$, save 5$",
            "timeScheduleLabel": "• OPEN",
            "productRate": "⭐️ 4.9 (701)",
            "productType": "•  BBQ",
            "productDelivery": "Delivery: FREE  •",
            "productPrice": "Minimum: 18 $",
            "productTime": "19-21 min",
            "productDistance": "1.9 km away"
    },

    {
            "productName": "Lagman Berry",
            "productImage": "Product4",
            "productType2": "Asian",
            "promotionLabel": "Spend 50$, save 14$",
            "timeScheduleLabel": "• OPEN",
            "productRate": "⭐️ 4.9 (601)",
            "productType": "• Fastfood",
            "productDelivery": "Delivery: FREE  •",
            "productPrice": "Minimum: 14 $",
            "productTime": "10-15 min",
            "productDistance": "2.5 km away"
    }
]
"""

struct ProductModel: Codable {
    let productName: String
    let productImage: String
    let productType: String
    let promotionLabel: String
    let timeScheduleLabel: String
    let productRate: String
    let productType2: String
    let productDelivery: String
    let productPrice: String
    let productTime: String
   let productDistance: String
}

class GetProductData {
    var productJSData: [ProductModel] = []
    
    func getData() {
        let data = Data(productJson.utf8)
        let decoder = JSONDecoder()
        
        do {
            let convertedData = try decoder.decode([ProductModel].self, from: data)
            productJSData = convertedData
         } catch {
            print("Error is: \(error.localizedDescription)")
        }
    }
}



//struct ProductModel: Equatable {
//    var id = UUID()
//    let openRestraunts: String
//    let productImage: String
//    let promotion: String
//    let productName: String
//    let timeSchedule: String
//    let rating: String
//    let category: String
//    let delivery: String
//    let price: String
//    let deliveryTime: String
//    let distance: String
//
//    static func ==(lhs: ProductModel, rhs: ProductModel) -> Bool {
//        lhs.id == rhs.id
//    }
//}

