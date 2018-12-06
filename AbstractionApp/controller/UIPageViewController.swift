//
//  File.swift
//  AbstractionApp
//
//  Created by Hillstead, Matthew on 12/6/18.
//  Copyright © 2018 CTEC. All rights reserved.
//

import Foundation

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
    }






}
