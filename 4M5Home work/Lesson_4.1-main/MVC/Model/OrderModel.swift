import UIKit

let orderJson = """
[
    {
            "image": "Image1",
            "label": "Takeaways"
    },

    {
            "image": "Image2",
            "label": "Grocery"
    },

    {
            "image": "Image3",
            "label": "Convenience"
    },

    {
            "image": "Image4",
            "label": "Pharmacy"
    },

    {
            "image": "Image2",
            "label": "Takeaways"
    },

    {
            "image": "Image1",
            "label": "Grocery"
    },

    {
            "image": "Image3",
            "label": "Convenience"
    },

    {
            "image": "Image4",
            "label": "Pharmacy"
    }
]
"""

struct OrderModel:Decodable {
    let image: String
    let label: String
}

class GetOrderData {
    var orderJSData: [OrderModel] = []
    
    func getData() {
        let data = Data(orderJson.utf8)
        let decoder = JSONDecoder()
        
        do {
            let convertedData = try decoder.decode([OrderModel].self, from: data)
            orderJSData = convertedData
        } catch {
            print("Error is: \(error.localizedDescription)")
        }
    }
}

//struct OrderModel {
//    let image: String
//    let name: String
//}


