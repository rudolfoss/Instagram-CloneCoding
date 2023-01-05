//
//  FeedController.swift
//  InstagramFirestoreTutorial
//
//  Created by HA on 2023/01/04.
//

import UIKit

private let reuseIdentifier = "Cell" //식별자

class FeedController: UICollectionViewController {

    //MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        // Do any additional setup after loading the view.
    }
    
    
    //MARK: - Helpers
    func configureUI(){
        collectionView.backgroundColor = .white
        
        collectionView.register(FeedCell.self, forCellWithReuseIdentifier: reuseIdentifier)
    }
}

    //MARK: - UICollectionViewDataSource

extension FeedController{
    
    //섹션 항목수
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    //컬렉션셀 보기 셀정의
    //아직 컬렉션 셀에 등록을 안했음. configureUI에서 register해준다.
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! FeedCell
        return cell
    }
}

    //MARK: - UICollectionViewDelegateFlowLayout

extension FeedController:UICollectionViewDelegateFlowLayout{
    //프레임의 너비와 높이 설정
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let width = view.frame.width
        var height = width + 8 + 40 + 8
        height += 50
        height += 60
        
        return CGSize(width: width, height: height)
    }
}
