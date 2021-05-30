//
//  ViewController.swift
//  Slide
//
//  Created by Admin on 28/05/2021.
//

import UIKit

class ViewController: UIViewController  {
   
    @IBOutlet weak var slideView: SlideView!
    
    let urls = ["https://i.pinimg.com/474x/f7/ec/e2/f7ece2e3c056194a58c2dfda6f310534.jpg"
            ,"https://i.pinimg.com/474x/11/a0/93/11a093895369705f108896a18fc61b23.jpg"
            ,"https://i.pinimg.com/474x/ec/a9/e1/eca9e11984d50413c9bd5c858698a989.jpg"
            ,"https://i.pinimg.com/474x/6d/39/31/6d393178cb8fc4687297c052e3204491.jpg"
            ,"https://i.pinimg.com/474x/8a/20/c9/8a20c9df6e69c1deb3ca4d2c8dd176c7.jpg"]
    
    
    @IBOutlet weak var btnReserve: UIButton!
    @IBOutlet weak var btnViewDetail: UIButton!
    @IBOutlet weak var lblFrom: UILabel!
    @IBOutlet weak var lblPrice: UILabel!
    @IBOutlet weak var lblNumberOfReview: UILabel!
    @IBOutlet weak var lblRate: UILabel!
    @IBOutlet weak var lblContentOfBenefit: UILabel!
    @IBOutlet weak var lblBenefit: UILabel!
    @IBOutlet weak var lblContentOfWhat: UILabel!
    @IBOutlet weak var lblWhat: UILabel!
    @IBOutlet weak var lblPackage: UILabel!
    @IBOutlet weak var lblTitle: UILabel!
    
    @IBOutlet weak var btnInsiderTips: UIButton!
    @IBOutlet weak var btnLuxury: UIButton!
    @IBOutlet weak var btnExclusive: UIButton!
    @IBOutlet weak var btnBestPrice: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        slideView.datsSource = self
       setUpUI()
       
    }
    func setUpUI()  {
        setUpLabel(lbl: lblTitle, text: "Gold Coast HightLights 5D4N" , size: 20 ,color: .black)
        setUpLabel(lbl: lblPackage, text: "PACKAGES - EXPERIENCES" , size: 11 ,color: #colorLiteral(red: 0.2039215686, green: 0.2156862745, blue: 0.2549019608, alpha: 1))
        
        setUpButton(btn: btnLuxury, text: "Luxury", textColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), bGColor: #colorLiteral(red: 0.7294117647, green: 0.662745098, blue: 0.6784313725, alpha: 1), radius: 20)
        setUpButton(btn: btnBestPrice, text: "Best Price", textColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), bGColor: #colorLiteral(red: 0.7294117647, green: 0.662745098, blue: 0.6784313725, alpha: 1), radius: 20)
        setUpButton(btn: btnExclusive, text: "Exclusive", textColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), bGColor: #colorLiteral(red: 0.7294117647, green: 0.662745098, blue: 0.6784313725, alpha: 1), radius: 20)
        setUpButton(btn: btnInsiderTips, text: "Insider Tips", textColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), bGColor: #colorLiteral(red: 0.7294117647, green: 0.662745098, blue: 0.6784313725, alpha: 1), radius: 20)
        
        setUpLabel(lbl: lblWhat, text: "WHAT'S UNIQUE", size: 10, color: .black, numberOfline: 0,textAlignment: .left)
        setUpLabel(lbl: lblContentOfWhat, text: "Enjoy Australia's most popular hot air balloon ride ", size: 14, color: .black, numberOfline: 0,textAlignment: .left)
        
        setUpLabel(lbl: lblBenefit, text: "BENEFITS & PRIVILEGES", size: 10, color: .black, numberOfline: 0,textAlignment: .left)
        setUpLabel(lbl: lblContentOfBenefit, text: "5-star accommodation at Peppers Soul Surfers Paradise’s 3-Bedroom Penthouse", size: 14, color: .black, numberOfline: 0,textAlignment: .left)
        
        setUpLabel(lbl: lblRate, text: "4.5/5 Exceptional", size: 14, color: #colorLiteral(red: 0.7960784314, green: 0.6588235294, blue: 0.2901960784, alpha: 1))
        setUpLabel(lbl: lblNumberOfReview, text: "| 1,478 reviews", size: 12, color: #colorLiteral(red: 0.5215686275, green: 0.5215686275, blue: 0.5215686275, alpha: 1))
        
        setUpLabel(lbl: lblFrom, text: "From", size: 12, color: .black,numberOfline: 1,textAlignment: .left)
        setUpLabel(lbl: lblPrice, text: "S$5,610", size: 18, color: .black,numberOfline: 1,textAlignment: .left)
        setUpButton(btn: btnViewDetail, text: "VIEW DETAIL", textColor: .white, bGColor: #colorLiteral(red: 0.7960784314, green: 0.6588235294, blue: 0.2901960784, alpha: 1), radius: 0,size: 13)
        setUpButton(btn: btnReserve, text: "RESERVE NOW", textColor: .white, bGColor: #colorLiteral(red: 0.6862745098, green: 0.5647058824, blue: 0.2431372549, alpha: 1), radius: 0,size: 13)
    }
    
    func setUpLabel(lbl : UILabel, text : String, size : CGFloat, color : UIColor, numberOfline : Int = 1, textAlignment : NSTextAlignment = .center){
        lbl.text = text
        lbl.textColor = color
        lbl.textAlignment = NSTextAlignment.center
        lbl.font = UILabel().font.withSize(size)
        lbl.numberOfLines = numberOfline
        lbl.textAlignment = textAlignment
        guard let font =  UIFont(name: "Lato-Regular", size: size) else {
            return
        }
        lbl.font = font
    }
    
    func setUpButton(btn: UIButton,text : String,textColor : UIColor , bGColor : UIColor , radius : CGFloat , size : CGFloat = 12)  {
        btn.backgroundColor = bGColor
        btn.setTitle(text, for: UIControl.State.normal)
        btn.setTitleColor(textColor, for: UIControl.State.normal)
       
        btn.sizeToFit()
        btn.contentEdgeInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        btn.titleLabel?.font = UILabel().font.withSize(size)
        guard let font =  UIFont(name: "Lato-Regular", size: size) else {
            return
        }
        btn.titleLabel?.font = font
        
    }
    
}
extension ViewController: SlideViewDatasource{
    func slideView(slideView: SlideView, itemAt indexPath: Int) -> String {
        return urls[indexPath]
    }
    
    func slideView(numberOfItem slideView: SlideView) -> Int {
        return urls.count
    }

}

