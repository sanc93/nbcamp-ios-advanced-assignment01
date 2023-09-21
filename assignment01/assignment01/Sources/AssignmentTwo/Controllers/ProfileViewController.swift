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
        private let profileView: ProfileView
        private var profileViewModel: ProfileViewModel
        
    // MARK: - Initialization
    init(user: User) {
        self.profileViewModel = ProfileViewModel(user: user)
        self.profileView = ProfileView(viewModel: profileViewModel)
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        /// ProfileView
        view.addSubview(profileView)
        profileView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
    
    // MARK: - Methods & Selectors
    
}
