import UIKit

class LeftToRightSegue: UIStoryboardSegue {
    
    override func perform() {
        let sourceVC = self.source
        let destinationVC = self.destination
        
        // Set up the transition
        let screenWidth = UIScreen.main.bounds.size.width
        let screenHeight = UIScreen.main.bounds.size.height
        
        destinationVC.view.frame = CGRect(x: screenWidth, y: 0, width: screenWidth, height: screenHeight)
        
        // Add the destination view to the window
        if let window = sourceVC.view.window {
            window.insertSubview(destinationVC.view, aboveSubview: sourceVC.view)
        }
        
        // Animate the transition
        UIView.animate(withDuration: 0.3, animations: {
            sourceVC.view.frame = sourceVC.view.frame.offsetBy(dx: -screenWidth, dy: 0)
            destinationVC.view.frame = destinationVC.view.frame.offsetBy(dx: -screenWidth, dy: 0)
        }, completion: { finished in
            sourceVC.present(destinationVC, animated: false, completion: nil)
        })
    }
}
