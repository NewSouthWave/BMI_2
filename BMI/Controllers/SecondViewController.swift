//
//  SecondViewController.swift
//  BMI
//
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var bmiNumberLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var backButton: UIButton!
    
    // 전화면에서 전달받은 데이터들
//    var bmiNumber: Double?
//    var adviceString: String?
//    var bmiColor: UIColor?
    
    var bmi: BMI?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 전화면에서 전달받은 데이터들을 통해 셋팅
        
        configureUI()

        guard let bmi = bmi else { return } //  bmi 변수 옵셔널 바인딩
        
        bmiNumberLabel.text = "\(bmi.value)"
        bmiNumberLabel.backgroundColor = bmi.matchColor
        adviceLabel.text = bmi.advice
        
    }
    
    // UI셋팅
    func configureUI() {
        bmiNumberLabel.clipsToBounds = true     //  모서리 라운드 여부
        bmiNumberLabel.layer.cornerRadius = 8   //  모서리 라운드 정도
        //bmiNumberLabel.backgroundColor = UIColor.brown

        backButton.layer.cornerRadius = 5       //  모서리 라운드 정도
    }
    
    // 다시 계산하기 버튼 눌렀을때
    @IBAction func backButtonTapped(_ sender: UIButton) {
        // 전화면으로 돌아가는 메서드
        self.dismiss(animated: true, completion: nil)
    }
    


}
