//
//  Vitale.swift
//  Vitale
//
//  Created by Miguel on 02/07/2020.
//  Copyright © 2020 Vitale. All rights reserved.
//

import Foundation
import UIKit

public class TrainingSDK{
    
    public static let sharedInstance = TrainingSDK()
    private var app_id: String!
    private var password: String!
    
    public func start(with user: String, appID: String, password: String){
        self.app_id = appID
        self.password = password
        TrainingAuth.sharedInstance.start(with: user, appID: appID, password: password)
    }
    
    public func logout(){
        TrainingAuth.sharedInstance.logout()
    }
    
    public func showVirtualPT(){
        VitaleWorkoutController.sharedInstance.getVirtualController { (error, viewController) in
            if error == nil{
                if let topViewController = UIApplication.shared.keyWindow?.rootViewController{
                    viewController?.modalPresentationStyle = .fullScreen
                    topViewController.present(viewController!, animated: true, completion: nil)
                }
            }else{
                
            }
        }
    }
    
    public func getWorkoutPlan(_ completion: @escaping((UIViewController)->())){
        DataserviceWorkout.sharedInstance.getWeekWorkouts { workouts in
            let vc = WorkoutHomeViewController()
            let nav = UINavigationController(rootViewController: vc)
            nav.modalPresentationStyle = .fullScreen
            completion(nav)
        }

    }
    
    public func showProfile(){
        DataserviceWorkout.sharedInstance.getWeekWorkouts { workouts in
            if let topViewController = TrainingSDKUtils.getTopMostViewController(){
                let vc = WorkoutHomeViewController()
                let nav = UINavigationController(rootViewController: vc)
                nav.modalPresentationStyle = .fullScreen
                topViewController.present(nav, animated: true, completion: nil)
            }
        }
    }
    
    
    public func showTodaytraining(){
        VitaleWorkoutController.sharedInstance.showTodayTraining { (alert, viewController) in
            if let topViewController = UIApplication.shared.keyWindow?.rootViewController{
                if alert != nil{
                    TrainingAlerts.showAlert(alertMessage: alert?.localizedDescription ?? "", alertTitle: "", viewController: topViewController)
                }else{
                    viewController?.modalPresentationStyle = .fullScreen
                    topViewController.present(viewController!, animated: true, completion: nil)
                }
            }
        }
    }
    
    
}
