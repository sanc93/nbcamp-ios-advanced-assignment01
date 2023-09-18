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
        titleLabel.text = "심화과제"
        titleLabel.font = UIFont.systemFont(ofSize: 25)
        
        return titleLabel
    }()
    
    let entryButton: UIButton = {
    
        let entryButton = UIButton()
        entryButton.setTitle("들어가기", for: .normal)
        entryButton.setTitleColor(.darkGray, for: .normal)
        entryButton.titleLabel?.font = UIFont.systemFont(ofSize: 40, weight: .medium)
        entryButton.backgroundColor = .systemGray5
        entryButton.layer.cornerRadius = 2
        
        
        return entryButton
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
    
        addSubview(titleLabel)
        titleLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().offset(-20)
        }
        
        addSubview(entryButton)
        entryButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(titleLabel.snp.bottom).offset(35)
            make.width.equalTo(200)
            make.height.equalTo(90)
            
        }
        
       
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
