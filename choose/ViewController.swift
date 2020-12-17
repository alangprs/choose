import UIKit

class ViewController: UIViewController {

    //功能區
    @IBOutlet weak var segmentedControl: UISegmentedControl! //職業選單
    @IBOutlet weak var level: UISlider! //努力程度slider
    @IBOutlet weak var deposit: UISlider! //年儲蓄slider
    @IBOutlet weak var shitch: UISwitch! //開關
    @IBOutlet weak var confirmButton: UIButton! //開命盤按鈕
    
    //lable區
    @IBOutlet weak var levelLable: UILabel! //程度lable
    @IBOutlet weak var depositLable: UILabel! //年儲蓄lable
    @IBOutlet weak var showLable: UILabel! //顯示結果lable
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    var job = String()
    @IBAction func showSegmentedControl(_ sender: Any) {
        if segmentedControl.selectedSegmentIndex == 0{
            job = "導遊"
        }
        else if segmentedControl.selectedSegmentIndex == 1{
            job = "工程師"
        }
        else if segmentedControl.selectedSegmentIndex == 2{
            job = "太空人"
        }
    }
    
    //顯示slider數值
    @IBAction func showLable(_ sender: UISlider) {
        //slifer顯示整數
        sender.value.round() //四捨五入
        levelLable.text = Int(level.value).description
        depositLable.text = Int(deposit.value).description
    }
    //按下開命盤之後動作
    @IBAction func showViewButton(_ sender: Any) {
        //如果我爸是比爾蓋茲
        if shitch.isOn{
            showLable.text = String("比爾蓋茲才沒有做 \(job) 的孩子")
        }
        //努力
        else if level.value < 5{
            showLable.text = String("建議你再努力點,才存了\(deposit.value)萬,又不夠努力 \n 這樣的\(job)不成功喔")
        }else {
            showLable.text = String("再忙，也記得照顧一下身體")
        }
        
        
        }
        
    }
    


