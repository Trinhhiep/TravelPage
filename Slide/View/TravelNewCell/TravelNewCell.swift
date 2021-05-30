//
//  TravelNewCell.swift
//  Slide
//
//  Created by Admin on 30/05/2021.
//

import UIKit

class TravelNewCell: UIView {
    let urls = ["https://robohash.org/eaquequasincidunt.png?size=50x50&set=set1"
                ,"https://robohash.org/accusantiumminimamagni.png?size=50x50&set=set1"
                ,"https://robohash.org/voluptatemdebitiset.png?size=50x50&set=set1"
                ,"https://robohash.org/rerumoccaecatiprovident.png?size=50x50&set=set1"
                ,"https://robohash.org/voluptatemenimerror.png?size=50x50&set=set1"]
//    @IBOutlet weak var slideView: SlideView!
    fileprivate let slide : SlideView = {
        let sv = SlideView(frame: CGRect(origin: .zero, size: .zero))
        
        return sv
    }()
    
    override  func awakeFromNib() {
        super.awakeFromNib()
        self.addSubview(slide)
        slide.frame = CGRect(x: 0, y: 0, width: 300, height: 200)
        slide.datsSource = self 
    }

}

extension TravelNewCell: SlideViewDatasource{
    func slideView(slideView: SlideView, itemAt indexPath: Int) -> String {
        return urls[indexPath]
    }
    
    func slideView(numberOfItem slideView: SlideView) -> Int {
        return urls.count
    }

}
