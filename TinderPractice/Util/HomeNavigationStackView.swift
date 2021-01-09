//
//  HomeNavigationStackView.swift
//  TinderPractice
//
//  Created by Stanley Traub on 1/5/21.
//

import UIKit

class HomeNavigationStackView: UIStackView {
    
    // MARK: - Properties
    
    private let settingsButton = UIButton(type: .system)
    private let messageButton = UIButton(type: .system)
    private let tinderIcon = UIImageView(image: #imageLiteral(resourceName: "app_icon"))
    
    
    // MARK: - Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setHeight(80)
        
        tinderIcon.contentMode = .scaleAspectFit
        
        settingsButton.setImage(#imageLiteral(resourceName: "top_left_profile").withRenderingMode(.alwaysOriginal), for: .normal)
        messageButton.setImage(#imageLiteral(resourceName: "top_messages_icon").withRenderingMode(.alwaysOriginal), for: .normal)

        
        [settingsButton, UIView(), tinderIcon, UIView(), messageButton].forEach { view in
            addArrangedSubview(view)
        }
        
        distribution = .equalCentering
        isLayoutMarginsRelativeArrangement = true
        layoutMargins = .init(top: 0, left: 16, bottom: 0, right: 16)
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
