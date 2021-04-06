//
//  ViewController.swift
//  WeatherApp
//
//  Created by Shreyas Babu on 4/6/21.
//

import UIKit

class WeatherCollectionViewCell: UICollectionViewCell {

    static let identifier = "WeatherCollectionViewCell"

    static func nib() -> UINib {
        return UINib(nibName: "WeatherCollectionViewCell",
                     bundle: nil)
    }

    @IBOutlet var iconImageView: UIImageView!
    @IBOutlet var tempLabel: UILabel!

    func configure(with model: HourlyWeatherEntry) {
        self.tempLabel.text = "\((Int(model.temperature) - 32) * 5/9)°"
        self.iconImageView.contentMode = .scaleAspectFit

        let icon = model.icon.lowercased()
        if icon.contains("clear") {
            self.iconImageView.image = UIImage(named: "clear")
        }
        else if icon.contains("rain") {
            self.iconImageView.image = UIImage(named: "rain")
        }
        else {
          
            self.iconImageView.image = UIImage(named: "cloud")
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
    }

}
