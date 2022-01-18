//
//  LoginHeaderView.swift
//  Sport
//
//  Created by Ivan on 14.01.2022.
//

import Foundation
import UIKit

class LoginHeaderView: UIView {
    private let imageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "logo"))
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private let label: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 20, weight: .medium)
        label.text = "Join sport events!"
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        clipsToBounds = true
        addSubview(label)
        addSubview(imageView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let size: CGFloat = width/4
        imageView.frame = CGRect(x: left + 122, y: 0, width: size + 50, height: size + 50)
        label.frame = CGRect(x: 20, y: imageView.bottom - 50 , width: width - 40, height: height - size - 30)
    }
    
}
