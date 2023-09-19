//
//  ViewController.swift
//  assignment01
//
//  Created by Sanghun K. on 9/13/23.
//

import UIKit
import SnapKit

class EntryViewController: UIViewController {

    // MARK: - Properties
    private let entryView = EntryView()
    private let profileVC = ProfileViewController()
    private let profileDesignVC = ProfileDesignViewController()
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        /// EntryViewOne
        entryView.entryBtnOne.addTarget(self, action: #selector(moveToProfileDesignVC), for: .touchUpInside)
        view.addSubview(entryView)
        
        
        /// EntryViewTwo
        entryView.entryBtnTwo.addTarget(self, action: #selector(moveToProfileVC), for: .touchUpInside)
        view.addSubview(entryView)
        
        entryView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }

    // MARK: - Methods & Selectors
    @objc private func moveToProfileDesignVC() {
        profileDesignVC.modalPresentationStyle = .fullScreen
        self.present(profileDesignVC, animated: true, completion: nil)
    }
    
    @objc private func moveToProfileVC() {
        self.navigationController?.pushViewController(profileVC, animated: true)
    }
    
    
}

