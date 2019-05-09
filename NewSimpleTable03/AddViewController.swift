//
//  AddViewController.swift
//  NewSimpleTable03
//
//  Created by D7703_24 on 2019. 5. 9..
//  Copyright © 2019년 D7703_24. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {
    var NameTest: String?
    var ImgData: String?
    var NameData: String?
    
    @IBOutlet weak var ImageData: UIImageView!
    @IBOutlet weak var detailData: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print(NameTest!)
        self.title = NameTest
        
        ImageData.image = UIImage(named: ImgData!)
        detailData.text = NameData
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
