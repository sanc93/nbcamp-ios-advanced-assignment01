//
//  EntryView.swift
//  assignment01
//
//  Created by Sanghun K. on 9/14/23.
//

import UIKit
import SnapKit

class EntryView: UIView {
    
    let titleLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.text = "iOS 앱개발 심화 개인 과제"
        titleLabel.font = UIFont.systemFont(ofSize: 20)
        titleLabel.textColor = .white
        return titleLabel
    }()
    
    let entryBtnOne: UIButton = {
        let entryBtnOne = UIButton()
        entryBtnOne.titleLabel?.numberOfLines = 0
        entryBtnOne.setTitle("과제1\n(ProfileDesignView)", for: .normal)
        entryBtnOne.titleLabel?.textAlignment = .center
        entryBtnOne.setTitleColor(.lightGray, for: .normal)
        entryBtnOne.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        entryBtnOne.backgroundColor = UIColor.white.withAlphaComponent(0.2)
        entryBtnOne.layer.cornerRadius = 2
        return entryBtnOne
    }()
    
    let entryBtnTwo: UIButton = {
        let entryBtnTwo = UIButton()
        entryBtnTwo.titleLabel?.numberOfLines = 0
        entryBtnTwo.setTitle("과제2\n(ProfileView)", for: .normal)
        entryBtnTwo.titleLabel?.textAlignment = .center
        entryBtnTwo.setTitleColor(.lightGray, for: .normal)
        entryBtnTwo.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        entryBtnTwo.backgroundColor = UIColor.white.withAlphaComponent(0.1)
        entryBtnTwo.layer.cornerRadius = 2
        return entryBtnTwo
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .black
        
        addSubview(entryBtnOne)
        entryBtnOne.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
//            make.top.equalTo(titleLabel.snp.bottom).offset(35)
            make.width.equalTo(200)
            make.height.equalTo(90)
        }
        
        addSubview(titleLabel)
        titleLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.bottom.equalTo(entryBtnOne.snp.top).offset(-45)
        }
        
        addSubview(entryBtnTwo)
        entryBtnTwo.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(entryBtnOne.snp.bottom).offset(15)
            make.width.equalTo(200)
            make.height.equalTo(90)
        }
        
       
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
