//
//  ViewController.swift
//  AbstractionApp
//
//  Created by Hillstead, Matthew on 12/4/18.
//  Copyright © 2018 CTEC. All rights reserved.
//

import UIKit

public class ViewController: UIViewController
{
    public class AbstractionViewController: UIPageViewController, UIPageViewControllerDataSource
    {
    
    private lazy var orderAbstractionViews : [UIViewController] =
    {
        return [
            self.newAbstractionViewController(abstractionLevel: "swift"),
            self.newAbstractionViewController(abstractionLevel: "download-2"),
            self.newAbstractionViewController(abstractionLevel: "byte"),
            self.newAbstractionViewController(abstractionLevel: "binary"),
            self.newAbstractionViewController(abstractionLevel: "logicgate"),
            ]
    }()
    
    private func newAbstractionViewController(abstracionLevel : String) -> UIViewController
    {
        return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "\
        (abstractionLevel)ViewController")
    }
    
    public override func viewDidLoad()
    {
        super.viewDidLoad()
        dataSource = self
        
        if let firstViewController = orderedAbstractionViews.first
        {
            setViewControllers([firstViewController],
                               direction: .forward,
                               animated: true,
                               completion: nil)
        }
    }
    
    public func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController:
        UIViewController) -> UIViewController?
    {
        guard let viewConrtollerIndex = orderedAbstractionViews.index(of: viewController)
            else
        {
            return nil
        }
        
        let previousIndex = viewConrtollerIndex - 1
        
        guard previousIndex >= 0
            else
        {
            return orderedAbstractionViews.count > previousIndex
        }
        
        guard orderedAbstractionViews.count > previousIndex
            else
        {
            return nil
        }
        
        return orderedAbstraction[previousIndex]
        
        
        public func pageViewContoller(_ pageViewController: UIPageViewConrtoller, viewConrtollerAfter viewConrtoller:
            UIViewConrtoller) -> UIViewController?
        {
            guard let viewConrtollerIndex = orederdAbstractionViews.insex(of: viewController)
                else
            {
                return nil
            }
        
            let nextIndex = viewConrtollerIndex + 1
        
            guard nextIndex >=0
                else
            {
                return nil
            }
            
            guard nextIndex < orderAbstractionViews.count
                else
            {
                return orderedAbstractionViews.first
            }
        
            return orderedAbstractionViews[nextIndex]
            
        }
        
    
}

}
}
