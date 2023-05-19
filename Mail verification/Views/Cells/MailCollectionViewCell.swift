//
//  MailCollectionViewCell.swift
//  Mail verification
//
//  Created by Sergey Kykhov on 05.11.2022.
//
import Foundation
import UIKit

class MailCollectionViewCell: UICollectionViewCell {

    private let domainLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Helvetica", size: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override init (frame: CGRect) {
        super.init(frame: frame)

        setupViews()
        setConstraints()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupViews() {
        contentView.backgroundColor = #colorLiteral(red: 0.9481341243, green: 0.9531059861, blue: 0.9616261125, alpha: 1)
        contentView.alpha = 1
        contentView.layer.cornerRadius = 10
        addSubview(domainLabel)
    }

    private func configure(mailLabelText: String) {
        domainLabel.text = mailLabelText
    }

    public func cellConfigure(mailLabelText: String) {
        configure(mailLabelText: mailLabelText)
    }
}

extension MailCollectionViewCell {

    private func setConstraints() {
        NSLayoutConstraint.activate([
            domainLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            domainLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
        ])
    }
}
