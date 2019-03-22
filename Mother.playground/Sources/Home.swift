import Foundation
import UIKit

public class Home: UIView {
    public init() {
        super.init(frame:  CGRect(x: 0, y: 0, width: 600, height: 600))
        self.backgroundColor = .black
        
        
        let title = UILabel()
        title.frame = CGRect(x: 192, y: 160, width: 230, height: 33)
        title.text = "hello, world!"
        title.textColor = .white
        title.alpha = 0
        title.font = title.font.withSize(50)
        title.font = UIFont.boldSystemFont(ofSize: 40.0)
        
        let earth = UILabel()
        earth.frame = CGRect(x: 255, y: 255, width: 75, height: 75)
        earth.text = "🌎"
        earth.font = earth.font.withSize(CGFloat(70))
        
        let bg = "stars"
        let bgImage = UIImage.gifImageWithName(bg)
        let bgImageView = UIImageView(image: bgImage!)
        bgImageView.frame = CGRect(x: 0, y: 0, width: 600, height: 600)
        
        
        
        //        label
        let go = UIButton()
        let blublu = UIColor(hexString: "#5CABDFFF")
        go.alpha = 0.0
        go.frame = CGRect(x: 200, y: 390, width: 200, height: 20)
        go.setTitle("LET'S EXPLORE >>", for: .normal)
        go.setTitleColor(blublu!, for: .normal)
        go.titleLabel?.font = .systemFont(ofSize: 50)
//        go.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20.0)
        go.titleLabel?.font = UIFont.italicSystemFont(ofSize: 20.0)
        // button.text = "hiii"
        // label.textColor = .black
        
        self.addSubview(bgImageView)
        self.addSubview(earth)
        self.addSubview(title)
        self.addSubview(go)

        UIView.animate(withDuration: 2.0, animations: {
            let transform = CGAffineTransform(scaleX: 5.0, y: 5.0)
            
            earth.transform = transform
            
        }, completion: { finished in
            UIView.animate(withDuration: 3.0, animations: {
                let rotate = CGAffineTransform(rotationAngle: 720)
                earth.transform = rotate
            }, completion: { finished in
                UIView.animate(withDuration: 0.5, animations: {
                    title.alpha = 1.0
                }, completion: { finished in
                    UIView.animate(withDuration: 0.5, animations: {
                        go.alpha = 1.0
                    }) // end of button animation
                }) // end of title animation
            }) // end of rotating animation
        }) // end of growing animation
        
        
    }
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
