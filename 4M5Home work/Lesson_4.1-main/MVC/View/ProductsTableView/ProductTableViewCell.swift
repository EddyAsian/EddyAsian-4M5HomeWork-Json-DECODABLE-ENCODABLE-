import UIKit

protocol ProductCellImageDelegate: AnyObject {
    func openNewImageViewController(_ item: ProductModel)
}

class ProductTableViewCell: UITableViewCell {
    public static let reusedID = String(describing: ProductTableViewCell.self)

    
    @IBOutlet private weak var productName: UILabel!
    @IBOutlet private weak var productImage: UIImageView!
    @IBOutlet private weak var productType: UILabel!
    @IBOutlet private weak var promotionLabel: UILabel!
    @IBOutlet private weak var timeScheduleLabel: UILabel!
    @IBOutlet private weak var productRate: UILabel!
    @IBOutlet private weak var productType2: UILabel!
    @IBOutlet private weak var productDelivery: UILabel!
    @IBOutlet private weak var productPrice: UILabel!
    @IBOutlet private weak var productTime: UILabel!
    @IBOutlet private weak var productDistance: UILabel!
    @IBOutlet private weak var thirdCustomView: UIView!
    
    weak var delegate: ProductCellImageDelegate?
    private var product: ProductModel?
    override func awakeFromNib() {
        super.awakeFromNib()
        foodImgGestureRecognizer()
    }
    
    func display(item: ProductModel) {
        product = item
        productName.text = item.productName
        productImage.image = UIImage(named: item.productImage)
        promotionLabel.text = item.promotionLabel
        productType.text = item.productType
        timeScheduleLabel.text = item.timeScheduleLabel
        productRate.text = item.productRate
        productType2.text = item.productType2
        productDelivery.text = item.productDelivery
        productPrice.text = item.productPrice
        productTime.text = item.productTime
        productDistance.text = item.productDistance
    }
    
    func foodImgGestureRecognizer() {
        let productImageTap = UITapGestureRecognizer(
            target: self, action: #selector(tapOnProductImage)
        )
        productImage.isUserInteractionEnabled = true
        productImage.addGestureRecognizer(productImageTap)
    }
    
    @objc
    private func tapOnProductImage() {
        guard let product = product else {
            return
        }
        delegate?.openNewImageViewController(product)
    }
}


