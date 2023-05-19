//
//  MailTextField.swift
//  Mail verification
//
//  Created by Sergey Kykhov on 05.11.2022.
//

import Foundation
import UIKit

protocol ActionsMailTextFieldProtocol: AnyObject {
    func typingText(text: String)
    func cleanOutTextField()
}

class MailTextField: UITextField {

    weak var textFieldDelegate: ActionsMailTextFieldProtocol?

    override init(frame: CGRect) {
        super.init(frame: frame)

        configure()
        delegate = self
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    private func configure() {
        backgroundColor = #colorLiteral(red: 0.9481341243, green: 0.9531059861, blue: 0.9616261125, alpha: 1)
        borderStyle = .none
        layer.cornerRadius = 10
        textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: self.frame.height))
        leftViewMode = .always
        clearButtonMode = .always
        returnKeyType = .done
        placeholder = "Введите почту"
        font = UIFont(name: "Helvetica", size: 17)
        tintColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        translatesAutoresizingMaskIntoConstraints = false
    }
}

extension MailTextField: UITextFieldDelegate {

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.resignFirstResponder()
    }

    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if let text = textField.text, let rangeText = Range(range, in: text) {
            let updateText = text.replacingCharacters(in: rangeText, with: string)
            textFieldDelegate?.typingText(text: updateText)
        }
        return true
    }

    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        textFieldDelegate?.cleanOutTextField()
        return true
    }
}
