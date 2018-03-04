//
//  PageVC.swift
//  ObjectLibrary
//
//  Created by Umut on 17.02.2018.
//  Copyright © 2018 Umut. All rights reserved.
//

import UIKit

class PageVC: UIPageViewController {

//    private lazy var orderedViewControllers: [UIViewController] = {
//        return [self.newColoredViewController(color: "Green"),
//                self.newColoredViewController(color: "Red"),
//                self.newColoredViewController(color: "Blue")]
//    }()
    
    private lazy var orderedViewControllers: [UIViewController] = {
        return [GreenViewController(), BlueViewController(), RedViewController()]
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        dataSource = self
        
        if let firstViewControlller = orderedViewControllers.first {
            setViewControllers([firstViewControlller], direction: .forward, animated: false, completion: nil)
        }
    }
    
    override init(transitionStyle style: UIPageViewControllerTransitionStyle, navigationOrientation: UIPageViewControllerNavigationOrientation, options: [String : Any]? = nil) {
        super.init(transitionStyle: .scroll, navigationOrientation: .horizontal, options: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
//    private func newColoredViewController(color:String) -> UIViewController {
//        return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier:"\(color)ViewController")
//    }
}

extension PageVC: UIPageViewControllerDataSource {
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        guard let viewControllerIndex = orderedViewControllers.index(of: viewController) else {
            return nil
        }
        
        let previousIndex = viewControllerIndex - 1
        
        guard previousIndex >= 0 else {
            return nil
        }
        
        guard orderedViewControllers.count > previousIndex else {
            return nil
        }
        
        return orderedViewControllers[previousIndex]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        guard let viewControllerIndex = orderedViewControllers.index(of: viewController) else {
            return nil
        }
        
        let nextIndex = viewControllerIndex + 1
        let orderedViewControllerCount = orderedViewControllers.count
        
        guard orderedViewControllerCount != nextIndex else {
            return nil
        }
        
        guard orderedViewControllers.count > nextIndex else {
            return nil
        }
        
        return orderedViewControllers[nextIndex]
    }
}
