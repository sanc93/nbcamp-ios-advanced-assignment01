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
    private let profileDesignView = ProfileDesignView()
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        /// ProfileDesignView
        view.addSubview(profileDesignView)
        profileDesignView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
    // MARK: - Methods & Selectors

}
