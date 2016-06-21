//
//  UIAnimationGroup+Block.swift
//  Example (Explodable)
//
//  Created by tang dixi on 18/6/2016.
//  Copyright © 2016 Tangdixi. All rights reserved.
//

import UIKit

typealias CAAnimationGroupCompletion = (()->Void)

class CAAnimationGroupCompletionWrapper {
  var closure:(CAAnimationGroupCompletion)?
  init(closure:CAAnimationGroupCompletion?) {
    self.closure = closure
  }
}

extension CAAnimationGroup {
  
  private struct AssociatedKeys {
    static var descriptiveName = "CAAnimationGroupClosure"
  }
  var completion:(()->Void)? {
    set {
      if let newValue = newValue {
        self.delegate = self
        objc_setAssociatedObject(
          self,
          &AssociatedKeys.descriptiveName,
          CAAnimationGroupCompletionWrapper(closure: newValue),
          .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
      }
    }
    get {
      guard let closureWrapper = objc_getAssociatedObject(self, &AssociatedKeys.descriptiveName) as? CAAnimationGroupCompletionWrapper else { return nil }
      return closureWrapper.closure
    }
  }
  public override func animationDidStop(anim: CAAnimation, finished flag: Bool) {
    if flag == true {

      guard let closureWrapper = objc_getAssociatedObject(self, &AssociatedKeys.descriptiveName) as? CAAnimationGroupCompletionWrapper else { return }
      guard let closure = closureWrapper.closure else { return }
      
      closure()
    }
  }
  
}