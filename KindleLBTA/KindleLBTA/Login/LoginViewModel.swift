//
//  LoginViewModel.swift
//  KindleLBTA
//
//  Created by Eugene Berezin on 8/23/19.
//  Copyright © 2019 Eugene Berezin. All rights reserved.
//

import Foundation
import UIKit


class LoginViewModel {
    
    var isLoggingIn = Bindable<Bool>()
    var isFormValid = Bindable<Bool>()
    
    var email: String? { didSet { checkFormValidity() } }
    var password: String? { didSet { checkFormValidity() } }
    
    fileprivate func checkFormValidity() {
        let isValid = email?.isEmpty == false && password?.isEmpty == false
        isFormValid.value = isValid
    }
    
//    func performLogin(completion: @escaping (Error?) -> ()) {
//        guard let email = email, let password = password else { return }
//        isLoggingIn.value = true
//        
//    }
}

