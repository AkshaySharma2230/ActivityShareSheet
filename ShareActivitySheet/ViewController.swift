//
//  ViewController.swift
//  ShareActivitySheet
//
//  Created by apple on 14/07/21.
//

import UIKit

class ViewController: UIViewController {
   
    //MARK:- Outlets
    @IBOutlet weak var shareMeButton: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    
    
    //MARK:- ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        shareMeButton.layer.cornerRadius = 10
        // Do any additional setup after loading the view.
    }

    
    //MARK:- UIButton Action
    /*** share me button action ***/
    @IBAction func shareMeButtonAction(_ sender: Any) {
        presentShareSheet()
    }
    
}

//MARK:- UIActivity Share Action Sheet
extension  ViewController {
    
   private func presentShareSheet(){
        guard let image = UIImage(systemName: "bell"), let url = URL(string: "https://www.apple.com") else {
            return
        }
    
        let shareSheetVC = UIActivityViewController(
            activityItems: [
                image,
                url
            ], applicationActivities: nil
        )
        shareSheetVC.popoverPresentationController?.sourceView = self.view
        present(shareSheetVC, animated: true, completion: nil)
    }
    
}
