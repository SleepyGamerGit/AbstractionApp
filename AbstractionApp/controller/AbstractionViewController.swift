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
        dataSouce = self
        
        if let firstViewController = orderedAbstractionViews.first
        {
            setViewControllers([firstViewController],
                               direction: .forward,
                               animated: true,
                               completion: nil)
        }
    }
    
    public func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController:
        UIViewController) -> UIViewConroller?
    {
        guard let viewConrtollerIndex = orderedAbstractionViews.index(of: viewController)
            else
        {
            return nil
        }
        
        let previousIndex = viewConrtollerIndex - 1
        
        guard previosIndex >= 0
            else
        {
            return orderdAbstracionViews.count > previousIndex
        }
        
        guard orderedAbstraction.count > previousIndex
            else
        {
            return nil
        }
        
        return orderedAbstraction[previosIndex]
        
        
        public func pageViewContoller(_ pageVIewController: UIPageViewConrtoller, viewConrtollerAfter viewConrtoller:
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
            
            guard nextIndex < orderedAbstrationViews.count
                else
            {
                return orderedAbstractionViews.first
            }
        
            return orderedAbstractionViews[nextIndex]
            
        }
        
    
}

