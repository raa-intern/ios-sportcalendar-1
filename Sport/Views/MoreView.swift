//
//  MoreView.swift
//  Sport
//
//  Created by Ivan on 13.01.2022.
//

import UIKit
// Delete 
class MoreView: UIView {
 
    lazy var signImageView: UIImageView = {
       let view = UIImageView()
        view.contentMode = .scaleAspectFit
        view.translatesAutoresizingMaskIntoConstraints = false
        view.tintColor = .red
        view.image = UIImage(systemName: "info.circle")
        return view
    }()
    
    lazy var infoLabel: UILabel = {
       let view = UILabel()
//        view.textAlignment = .center
//        view.backgroundColor = .clear
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "info"
        return view
    }()
    
    lazy var arrowImageView: UIImageView = {
       let view = UIImageView()
        view.contentMode = .scaleAspectFit
        view.translatesAutoresizingMaskIntoConstraints = false
        view.tintColor = .lightGray
        view.image = UIImage(systemName: "chevron.right")
        
        return view
    }()
    
    lazy var stackView: UIStackView = {
        let view = UIStackView(arrangedSubviews: [signImageView, infoLabel, arrowImageView])
        view.alignment = .fill
        view.distribution = .fillEqually
        view.translatesAutoresizingMaskIntoConstraints = false
//        view.distribution = .fillProportionally
        view.axis = .horizontal
//        view.setCustomSpacing(3, after: view.subviews[0])
        view.setCustomSpacing(-50, after: signImageView)
//        view.setCustomSpacing(, after: infoLabel)
        
        return view
    }()

  
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        //MARK: Change color get/post view
//        backgroundColor = UIColor(hue: 0.3333, saturation: 1, brightness: 0.39, alpha: 1.0)
        backgroundColor = .white
//        layer.cornerRadius = 8
        clipsToBounds = true
        addSubViews()
        activateConstrains()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        super.init(coder: coder)
        addSubViews()
        activateConstrains()
    }
    
    func addSubViews() {
        addSubview(stackView)
    }
    
//    override func layoutSubviews() {
//        super.layoutSubviews()
//
//        stackView.frame = CGRect(x: left - 55,
//                                 y: 0,
//                                 width: width,
//                                 height: 30)
//
//    }
    
    func activateConstrains() {
//        let imageViewWidthConstraint = NSLayoutConstraint(item: arrowImageView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 100)
//        let imageViewHeightConstraint = NSLayoutConstraint(item: arrowImageView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 100)
//        signImageView.heightAnchor.constraint(equalToConstant: 40).isActive = true
        arrowImageView.heightAnchor.constraint(equalToConstant: 1).isActive = true
//
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
            stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0),
            stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0),
            stackView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0),
        ])
    }
}
