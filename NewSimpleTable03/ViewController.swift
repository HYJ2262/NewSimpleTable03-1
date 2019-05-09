//
//  ViewController.swift
//  NewSimpleTable03
//
//  Created by D7703_24 on 2019. 5. 7..
//  Copyright © 2019년 D7703_24. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var myTableView: UITableView!
    
    var animal = ["cat", "penguin", "bird", "cow", "monkey", "dog"]
    var detailAnimal = ["고양이", "펭귄", "새", "소", "원숭이", "강아지"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.dataSource = self
        //코드로 타이틀 추가하는 방법
        title.self = "동물농장"
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
       let myCell = myTableView.dequeueReusableCell(withIdentifier: "RE", for: indexPath)
       let myRow = indexPath.row
        
       myCell.textLabel?.text = animal[myRow]
       myCell.detailTextLabel?.text = detailAnimal[myRow]
        
       myCell.imageView?.image = UIImage(named: animal[myRow])
        return myCell
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
         return animal.count
    }

    //AddViewController 로 데이터 옮기기
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "GoAdd"{
          let addVC = segue.destination as!AddViewController
            //형변환 시켜준거임 -> as!AddViewController
         //addVC.NameTest = self.title
            addVC.NameTest = animal[0]
            addVC.ImgData = "cat"
            addVC.NameData = detailAnimal[0]
            
        
        }else if segue.identifier == "GoDetail"{
            
        }else{
            print("seque Error")
        }
    }

}

