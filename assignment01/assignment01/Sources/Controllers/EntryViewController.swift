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
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /// View
        let entryView = EntryView()
        entryView.entryButton.addTarget(self, action: #selector(moveToProfileVC), for: .touchUpInside)
        view.addSubview(entryView)
        entryView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }

    // MARK: - Methods & Selectors
    @objc func moveToProfileVC() {
 
    }
    
}

