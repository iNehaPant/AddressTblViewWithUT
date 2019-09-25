///To make lable height dynamic make numberOfLines = 0 , and add bottom constarints


import UIKit

class AddressTableViewCell: UITableViewCell {
    @IBOutlet weak var label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    var titleText : String = "" {
        didSet {
            label.text = titleText
        }
    }
}
