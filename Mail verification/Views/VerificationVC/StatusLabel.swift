//
//  StatusLabel.swift
//  Mail verification
//
//  Created by Sergey Kykhov on 05.11.2022.
//

import Foundation
import UIKit

class StatusLabel: UILabel {

    public var isValid = false {
        didSet {
            if self.isValid {
                setValidSettings()
            } else {
                setNotValidSettings()
            }
        }
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func configure() {
        text = "Пример: SergeyKykhov@gmail.com"
        textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        font = UIFont(name: "Helvetica", size: 14)
        adjustsFontSizeToFitWidth = true
        translatesAutoresizingMaskIntoConstraints = false
    }

    private func setNotValidSettings() {
        text = "Неверный формат"
        textColor = #colorLiteral(red: 0.5215686275, green: 0.1098039216, blue: 0.05098039216, alpha: 1)
    }

    private func setValidSettings() {
        text = "Почта принята"
        textColor = #colorLiteral(red: 0.1960784314, green: 0.3411764706, blue: 0.1019607843, alpha: 1)
    }

    public func setDefaultSetting() {
        configure()
    }
    
}
