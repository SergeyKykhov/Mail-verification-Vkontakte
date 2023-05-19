//
//  VerificationButton.swift
//  Mail verification
//
//  Created by Sergey Kykhov on 05.11.2022.
//

import Foundation
import UIKit

class VerificationButton: UIButton {

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
        backgroundColor = #colorLiteral(red: 0, green: 0.4666666667, blue: 1, alpha: 1)
        setTitle("Войти", for: .normal)
        let color = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        setTitleColor(color, for: .normal)
        layer.cornerRadius = 10
        titleLabel?.font = UIFont(name: "Helvetica", size: 17)
        isEnabled = false
        alpha = 0
        translatesAutoresizingMaskIntoConstraints = false
    }

    private func setNotValidSettings() {
        isEnabled = false
        alpha = 0
    }

    private func setValidSettings() {
        isEnabled = true
        alpha = 1
    }

    public func setDefaultSetting() {
        configure()
    }
}
