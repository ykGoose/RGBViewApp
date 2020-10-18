
import UIKit

class ViewController: UIViewController {

    //MARK: - IBOutlets
    @IBOutlet var colorView: UIView!
    @IBOutlet var colorRedValue: UILabel!
    @IBOutlet var colorGreenValue: UILabel!
    @IBOutlet var colorBlueValue: UILabel!
    
    @IBOutlet var colorRedSlider: UISlider!
    @IBOutlet var colorGreenSlider: UISlider!
    @IBOutlet var colorBlueSlider: UISlider!
    
    
    //MARK: - LifeCycleMethod
    override func viewDidLoad() {
        super.viewDidLoad()
        colorRedValue.text = String(format: "%.2f", colorRedSlider.value)
        colorGreenValue.text = String(format: "%.2f", colorGreenSlider.value)
        colorBlueValue.text = String(format: "%.2f", colorBlueSlider.value)
        colorView.layer.cornerRadius = 10
        
        colorView.backgroundColor = .init(red: CGFloat(colorRedSlider.value),
                                          green: CGFloat(colorGreenSlider.value),
                                          blue: CGFloat(colorBlueSlider.value),
                                          alpha: 1)
    }
    
    
    //MARK: - IBActions
    @IBAction func movingRedSlider() {
        movingSlider(sliderColor: colorRedSlider, colorLaber: colorRedValue)
    }
    
    @IBAction func movingGreenSlider() {
        movingSlider(sliderColor: colorGreenSlider, colorLaber: colorGreenValue)
    }
    
    @IBAction func movingBlueSlider() {
        movingSlider(sliderColor: colorBlueSlider, colorLaber: colorBlueValue)
    }

    //MARK: - Private Method
    private func movingSlider(sliderColor: UISlider, colorLaber: UILabel) {
        let movingResult = CGFloat(sliderColor.value)
        colorLaber.text = String(format: "%.2f", movingResult)
        colorView.backgroundColor = .init(red: CGFloat(colorRedSlider.value),
                                          green: CGFloat(colorGreenSlider.value),
                                          blue: CGFloat(colorBlueSlider.value),
                                          alpha: 1)
    }
}
