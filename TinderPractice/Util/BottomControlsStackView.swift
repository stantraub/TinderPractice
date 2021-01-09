//
//  BottomControlsStackView.swift
//  TinderPractice
//
//  Created by Stanley Traub on 1/5/21.
//

import UIKit

class BottomControlsStackView: UIStackView {
    
    // MARK: - Properties
    
    private let refreshButton = UIButton(type: .system)
    private let dislikeButton = UIButton(type: .system)
    private let superLikeButton = UIButton(type: .system)
    private let likeButton = UIButton(type: .system)
    private let boostButton = UIButton(type: .system)

    // MARK: - Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setHeight(100)
        distribution = .fillEqually
        
        refreshButton.setImage(#imageLiteral(resourceName: "refresh_circle").withRenderingMode(.alwaysOriginal), for: .normal)
        dislikeButton.setImage(#imageLiteral(resourceName: "dismiss_circle").withRenderingMode(.alwaysOriginal), for: .normal)
        superLikeButton.setImage(#imageLiteral(resourceName: "super_like_circle").withRenderingMode(.alwaysOriginal), for: .normal)
        likeButton.setImage(#imageLiteral(resourceName: "like_circle").withRenderingMode(.alwaysOriginal), for: .normal)
        boostButton.setImage(#imageLiteral(resourceName: "boost_circle").withRenderingMode(.alwaysOriginal), for: .normal)
        
        [refreshButton, dislikeButton, superLikeButton, likeButton, boostButton].forEach { view in
            addArrangedSubview(view)
        }
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
