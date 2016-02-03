//
//  PageViewController.swift
//  ToFind
//
//  Created by Jonathan Bennett on 2016-02-03.
//  Copyright © 2016 Jonathan Bennett. All rights reserved.
//

import UIKit

class LocationsViewController: UIPageViewController, UIPageViewControllerDataSource {
 
  let locations = Client().getLocations()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.dataSource = self
    
    let viewController = LocationViewController()
    viewController.location = locations[0]
    setViewControllers([viewController], direction: .Forward, animated: false, completion: nil)
  }
  
  func pageViewController(pageViewController: UIPageViewController, viewControllerBeforeViewController viewController: UIViewController) -> UIViewController? {
    guard let viewController = viewController as? LocationViewController,
      let currentLocation = viewController.location,
      let currentIndex = locations.indexOf(currentLocation) else {
      return nil
    }

    let newIndex = abs(currentIndex - 1) % locations.count
    let newViewController = LocationViewController()
    newViewController.location = locations[newIndex]
    self.title = locations[newIndex].name
    
    return newViewController
  }
  
  func pageViewController(pageViewController: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController? {
    guard let viewController = viewController as? LocationViewController,
      let currentLocation = viewController.location,
      let currentIndex = locations.indexOf(currentLocation) else {
        return nil
    }
    
    let newIndex = abs(currentIndex + 1) % locations.count
    let newViewController = LocationViewController()
    newViewController.location = locations[newIndex]
    self.title = locations[newIndex].name
    
    return newViewController
  }
  
  // Mark: dots
  func presentationCountForPageViewController(pageViewController: UIPageViewController) -> Int {
    return locations.count
  }
  
  func presentationIndexForPageViewController(pageViewController: UIPageViewController) -> Int {
    guard let viewController = viewControllers?.first as? LocationViewController,
      let currentLocation = viewController.location,
      let currentIndex = locations.indexOf(currentLocation) else {
        fatalError("wtf")
    }
    
    return currentIndex
  }
  
}
