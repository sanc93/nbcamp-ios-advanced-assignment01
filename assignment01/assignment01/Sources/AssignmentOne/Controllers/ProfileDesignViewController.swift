//
//  ProfileDesignViewController.swift
//  assignment01
//
//  Created by Sanghun K. on 9/18/23.
//

import UIKit
import SnapKit

class ProfileDesignViewController: UIViewController {
    
    // MARK: - Properties
    private let profileDesignView = ProfileDesignView()
    private let dummyImages = ["picture_01","picture_02","picture_03","picture_04","picture_05","picture_06","picture_07"]
    private let collectionViewFeed: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let itemSize = (UIScreen.main.bounds.width - 2) / 3
                layout.itemSize = CGSize(width: itemSize, height: itemSize)
                layout.minimumInteritemSpacing = 1
                layout.minimumLineSpacing = 1
        let collectionViewFeed = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionViewFeed.backgroundColor = .white
        collectionViewFeed.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")

        return collectionViewFeed
    }()
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /// ProfileDesignView
        view.addSubview(profileDesignView)
        profileDesignView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
        
        view.addSubview(collectionViewFeed)
        collectionViewFeed.snp.makeConstraints {
            $0.top.equalTo(profileDesignView.navGalleryStackView.snp.bottom).offset(1)
            $0.leading.trailing.equalToSuperview()
            $0.bottom.equalTo(profileDesignView.tabBar.snp.top)
        }
        
        collectionViewFeed.delegate = self
        collectionViewFeed.dataSource = self
        
    }
    
    // MARK: - Methods & Selectors
    @objc func backToMenu() {
           self.dismiss(animated: true, completion: nil)
    }

}

extension ProfileDesignViewController: UICollectionViewDelegate {
    
}

extension ProfileDesignViewController: UICollectionViewDataSource {
    

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dummyImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: dummyImages[indexPath.item])
        cell.contentView.addSubview(imageView)

        
        imageView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
        
        return cell
    }
    
  
}
