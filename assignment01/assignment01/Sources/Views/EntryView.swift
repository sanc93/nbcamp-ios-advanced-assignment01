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
        entryBtnOne.backgroundColor = UIColor.white.withAlphaComponent(0.3)
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
        entryBtnTwo.backgroundColor = UIColor.white.withAlphaComponent(0.2)
        entryBtnTwo.layer.cornerRadius = 2
        return entryBtnTwo
    }()
    
    let entryBtnThree: UIButton = {
        let entryBtnThree = UIButton()
        entryBtnThree.titleLabel?.numberOfLines = 0
        entryBtnThree.setTitle("과제3\n(CoreData)", for: .normal)
        entryBtnThree.titleLabel?.textAlignment = .center
        entryBtnThree.setTitleColor(.lightGray, for: .normal)
        entryBtnThree.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        entryBtnThree.backgroundColor = UIColor.white.withAlphaComponent(0.1)
        entryBtnThree.layer.cornerRadius = 2
        return entryBtnThree
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .black
        
        addSubview(entryBtnOne)
        entryBtnOne.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.centerY.equalToSuperview()
//            $0.top.equalTo(titleLabel.snp.bottom).offset(35)
            $0.width.equalTo(200)
            $0.height.equalTo(90)
        }
        
        addSubview(titleLabel)
        titleLabel.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.bottom.equalTo(entryBtnOne.snp.top).offset(-45)
        }
        
        addSubview(entryBtnTwo)
        entryBtnTwo.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalTo(entryBtnOne.snp.bottom).offset(15)
            $0.width.equalTo(200)
            $0.height.equalTo(90)
        }
        
        addSubview(entryBtnThree)
        entryBtnThree.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalTo(entryBtnTwo.snp.bottom).offset(15)
            $0.width.equalTo(200)
            $0.height.equalTo(90)
        }
        
       
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
