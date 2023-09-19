//
//  ProfileDesignView.swift
//  assignment01
//
//  Created by Sanghun K. on 9/18/23.
//

import UIKit
import SnapKit

class ProfileDesignView: UIView {
    
    private let navBar: UINavigationBar = {
        let navBar = UINavigationBar()
        let navBarItems = UINavigationItem(title: "team18_ksh")
        
        navBar.barTintColor = .white
        navBar.shadowImage = UIImage()
        navBarItems.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "chevron.backward"), style: .plain, target: ProfileDesignView.self, action: .none)
        navBarItems.leftBarButtonItem?.tintColor = .systemGray2
        navBarItems.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "Menu"), style: .plain, target: ProfileDesignView.self, action: .none)
        navBarItems.rightBarButtonItem?.tintColor = .black
        
        navBar.setItems([navBarItems], animated: false)
        
        return navBar
    }()
    
    let backButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "chevron.backward"), for: .normal)
        button.tintColor = .systemGray2
        return button
    }()
    
    private let profileImage: UIImageView = {
        let profileImage = UIImageView()
        profileImage.backgroundColor = .lightGray
        
        if let imageData = UIImage(named: "me") {
            profileImage.image = imageData
        }
        
        profileImage.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        profileImage.layer.masksToBounds = true
        profileImage.layer.cornerRadius = profileImage.frame.width / 2
        
        
        return profileImage
        
    }()
    
    private let postCountLbl: UILabel = {
        let label = UILabel()
        label.text = "7"
        label.font = .systemFont(ofSize: 18, weight: .bold)
        return label
    }()
    private let followerCountLbl: UILabel = {
        let label = UILabel()
        label.text = "0"
        label.font = .systemFont(ofSize: 18, weight: .bold)
        return label
    }()
    private let followingCountLbl: UILabel = {
        let label = UILabel()
        label.text = "0"
        label.font = .systemFont(ofSize: 18, weight: .bold)
        return label
    }()
    private let postLbl: UILabel = {
        let label = UILabel()
        label.text = "post"
        return label
    }()
    private let followerLbl: UILabel = {
        let label = UILabel()
        label.text = "follower"
        return label
    }()
    private let followingLbl: UILabel = {
        let label = UILabel()
        label.text = "following"
        return label
    }()
    
    private lazy var postStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [postCountLbl, postLbl])
        stackView.axis = .vertical
        stackView.spacing = 4
        stackView.alignment = .center
        return stackView
    }()
    
    private lazy var followerStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [followerCountLbl, followerLbl])
        stackView.axis = .vertical
        stackView.spacing = 4
        stackView.alignment = .center
        return stackView
    }()
    
    private lazy var followingStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [followingCountLbl, followingLbl])
        stackView.axis = .vertical
        stackView.spacing = 4
        stackView.alignment = .center
        return stackView
    }()
    
    private lazy var userInfoStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [postStackView, followerStackView, followingStackView])
        stackView.axis = .horizontal
        stackView.spacing = 25
        stackView.alignment = .center
        return stackView
    }()
    
    private let tabBar: UITabBar = {
        let tabBar = UITabBar()
        tabBar.barTintColor = .white
        let tabBarItem = UITabBarItem(title: nil, image: UIImage(systemName: "person.fill"), tag: 0)
        tabBar.setItems([tabBarItem], animated: false)
        return tabBar
    }()
    
    private let nameLbl: UILabel = {
        let label = UILabel()
        label.text = "김상훈"
        label.font = .systemFont(ofSize: 16, weight: .bold)
        return label
    }()
    private let bioLbl: UILabel = {
        let label = UILabel()
        label.text = "내배캠 7기 iOS트랙"
        label.font = .systemFont(ofSize: 16)
        return label
    }()
    private let linkLbl: UILabel = {
        let label = UILabel()
        label.text = "sanc93.github.io"
        label.font = .systemFont(ofSize: 16)
        label.textColor = .systemBlue
        return label
    }()
    
    private lazy var bioStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [nameLbl, bioLbl, linkLbl])
        stackView.axis = .vertical
        stackView.spacing = 4
        stackView.alignment = .leading
        return stackView
    }()
    
    let followBtn: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "Follow"), for: .normal)
        return button
    }()

    let messageBtn: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "Message"), for: .normal)
        return button
    }()

    let moreBtn: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "More"), for: .normal)
        return button
    }()
    
    let divider: UIView = {
        let divider = UIView()
        divider.backgroundColor = UIColor(red: 0.86, green: 0.86, blue: 0.86, alpha: 1)
        return divider
    }()
        
    private lazy var middleBarStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [followBtn, messageBtn, moreBtn])
        stackView.axis = .horizontal
        stackView.spacing = 8
        stackView.alignment = .center
        return stackView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        
        addSubview(navBar)
        navBar.snp.makeConstraints {
            $0.top.equalTo(safeAreaLayoutGuide.snp.top)
            $0.width.equalToSuperview()
        }
        
        addSubview(profileImage)
        profileImage.snp.makeConstraints {
            $0.top.equalTo(navBar.snp.bottom).offset(14)
            $0.leading.equalToSuperview().offset(14)
            $0.width.equalTo(100)
            $0.height.equalTo(100)
        }
        addSubview(tabBar)
        tabBar.snp.makeConstraints {
            $0.bottom.equalTo(safeAreaLayoutGuide.snp.bottom)
            $0.width.equalToSuperview()
        }
        
        addSubview(userInfoStackView)
        userInfoStackView.snp.makeConstraints {
            $0.top.equalTo(navBar.snp.bottom).offset(20)
            $0.leading.equalTo(profileImage.snp.trailing).offset(28)
            $0.centerY.equalTo(profileImage.snp.centerY)
            $0.trailing.equalToSuperview().offset(-28)
        }
        
        addSubview(bioStackView)
        bioStackView.snp.makeConstraints{
            $0.top.equalTo(profileImage.snp.bottom).offset(20)
            $0.leading.equalToSuperview().offset(20)
        }
        
        addSubview(middleBarStackView)
        middleBarStackView.snp.makeConstraints{
            $0.top.equalTo(bioStackView.snp.bottom).offset(10)
            $0.leading.equalToSuperview().offset(20)
            $0.trailing.equalToSuperview().offset(-20)
//            $0.width.equalToSuperview()
            $0.height.equalTo(50)
        }
        addSubview(divider)
        divider.snp.makeConstraints {
            $0.top.equalTo(middleBarStackView.snp.bottom).offset(10)
            $0.height.equalTo(1)
            $0.width.equalToSuperview()
        }
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
