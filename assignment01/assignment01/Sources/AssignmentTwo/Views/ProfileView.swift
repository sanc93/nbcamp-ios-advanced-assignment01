//
//  ProfileView.swift
//  assignment01
//
//  Created by Sanghun K. on 9/18/23.
//

import UIKit
import SnapKit

class ProfileView: UIView {
    
    private var viewModel: ProfileViewModel

    init(viewModel: ProfileViewModel) {
        self.viewModel = viewModel
        super.init(frame: .zero)
        bindViewModel()
        configureUI()
    }
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "이름 : "
        return label
    }()
    
    private let ageLabel: UILabel = {
        let label = UILabel()
        label.text = "나이 : "
        return label
    }()
    
    private let nameTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .systemGray6
        textField.borderStyle = .roundedRect
        return textField
    }()
    
    private let ageTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .systemGray6
        textField.borderStyle = .roundedRect
        return textField
    }()
    
//    private let updateDataBtn: UIButton = {
//        let button = UIButton()
//        button.setTitle("업데이트", for: .normal)
//        button.backgroundColor = .darkGray
//        button.layer.cornerRadius = 10
//        return button
//    }()
    
//    private let showDummyLbl: UILabel = {
//        let label = UILabel()
//        label.font = .systemFont(ofSize: 12)
//        label.textAlignment = .center
//        return label
//    }()
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func bindViewModel() {
        nameTextField.text = viewModel.userName
        ageTextField.text = String(viewModel.userAge)
        
//        showDummyLbl.text = "현재 : User(userName: \(viewModel.userName), userAge: \(String(viewModel.userAge)))"
    }
    
    private func configureUI() {
        
        backgroundColor = .white
        
        addSubview(nameLabel)
        addSubview(ageLabel)
        addSubview(nameTextField)
        addSubview(ageTextField)
//        addSubview(updateDataBtn)
//        addSubview(showDummyLbl)
        
        nameLabel.snp.makeConstraints {
            $0.height.equalTo(30)
            $0.width.equalTo(50)
            $0.centerX.equalToSuperview().offset(-50)
            $0.centerY.equalToSuperview().offset(-15)
        }
        ageLabel.snp.makeConstraints {
            $0.height.equalTo(30)
            $0.width.equalTo(50)
            $0.centerX.equalToSuperview().offset(-50)
            $0.top.equalTo(nameLabel.snp.bottom).offset(15)
        }
        
        nameTextField.snp.makeConstraints {
            $0.height.equalTo(30)
            $0.width.equalTo(100)
            $0.leading.equalTo(nameLabel.snp.trailing).offset(5)
            $0.centerY.equalToSuperview().offset(-15)
        }

        ageTextField.snp.makeConstraints {
            $0.height.equalTo(30)
            $0.width.equalTo(100)
            $0.leading.equalTo(ageLabel.snp.trailing).offset(5)
            $0.top.equalTo(nameTextField.snp.bottom).offset(15)
        }
        
//        updateDataBtn.snp.makeConstraints {
//            $0.height.equalTo(50)
//            $0.width.equalTo(120)
//            $0.centerX.equalToSuperview()
//            $0.top.equalTo(ageTextField.snp.bottom).offset(50)
//        }
        
//        showDummyLbl.snp.makeConstraints {
//            $0.height.equalTo(50)
//            $0.width.equalToSuperview()
//            $0.centerX.equalToSuperview()
//            $0.bottom.equalTo(nameLabel.snp.top).offset(-50)
//        }
    }
}
