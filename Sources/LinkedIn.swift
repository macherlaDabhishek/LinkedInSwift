//
//  LinkedIn.swift
//  LinkedInSwift
//
//  Created by Abhishek Macherla on 13/9/18.
//  Copyright © 2018 Photon. All rights reserved.
//

import LinkedInSDK

public typealias LinkedInCallbackClosure = (LinkedInUser?, Error?) -> Void
public typealias LinkedInAPIResponseCallbackClosure = (LISDKAPIResponse?) -> Void
public typealias LinkedInAPIErrorCallbackClosure = (LISDKAPIError?) -> Void
open class LinkedIn {
    
    open static func shouldHandleLISDKCallbackHandler(url: URL){
        LISDKCallbackHandler.shouldHandle(url)
    }
    
    open static func application(_ application: UIApplication, open url: URL, sourceApplication: String?, annotation: Any) -> Bool{
        return LISDKCallbackHandler.application(application, open: url, sourceApplication: sourceApplication, annotation: annotation)
    }
    
    open static func clearSession(){
        LISDKSessionManager.clearSession()
    }
    
    open static func hasValidSession() -> Bool{
        return LISDKSessionManager.hasValidSession()
    }
    
    open static func createSession(withAuth: [String], state: String, showGoToAppStoreDialog: Bool, success: @escaping AuthSuccessBlock, error: @escaping AuthErrorBlock) {
        
        LISDKSessionManager.createSession(withAuth: withAuth, state: state, showGoToAppStoreDialog: showGoToAppStoreDialog, successBlock: success, errorBlock: error)
    }
    
    open static func postRequest(url: String, stringBody: String, success: @escaping LinkedInAPIResponseCallbackClosure, error: @escaping LinkedInAPIErrorCallbackClosure) {
        
        LISDKAPIHelper.sharedInstance().postRequest(url, stringBody: stringBody, success: success, error: error)
    }
    
    open static func getRequest(url: String, success: @escaping LinkedInAPIResponseCallbackClosure, error: @escaping LinkedInAPIErrorCallbackClosure) {
        
        LISDKAPIHelper.sharedInstance().getRequest(url, success: success, error: error)
    }
}
