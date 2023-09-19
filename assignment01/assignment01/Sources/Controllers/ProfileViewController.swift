//
//  ProfileViewController.swift
//  assignment01
//
//  Created by Sanghun K. on 9/18/23.
//

import UIKit
import SnapKit

class ProfileViewController: UIViewController {
    
    // MARK: - Properties
    private let profileView = ProfileView()
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        /// ProfileView
        view.addSubview(profileView)
        profileView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
    // MARK: - Methods & Selectors
    
}
