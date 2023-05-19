//
//  LogoLabel.swift
//  Mail verification
//
//  Created by Sergey Kykhov on 08.11.2022.
//

import Foundation
import UIKit

class LogoLabel: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func configure() {
        text = "ВКонакте ⓒ 2006-2022"
        textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        font = UIFont(name: "Helvetica", size: 14)
        translatesAutoresizingMaskIntoConstraints = false
    }
}
