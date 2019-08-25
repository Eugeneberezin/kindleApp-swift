//
//  RegistrationViewModel.swift
//  KindleLBTA
//
//  Created by Eugene Berezin on 8/23/19.
//  Copyright © 2019 Eugene Berezin. All rights reserved.
//

import UIKit


class RegistrationViewModel {
    
    var bindableIsRegistering = Bindable<Bool>()
    var bindableImage = Bindable<UIImage>()
    var bindableIsFormValid = Bindable<Bool>()
    
    var fullName: String? {
        didSet {
            checkFormValidity()
        }
    }
    var email: String? { didSet { checkFormValidity() } }
    var password: String? { didSet { checkFormValidity() } }
    
    func checkFormValidity() {
        let isFormValid = fullName?.isEmpty == false && email?.isEmpty == false && password?.isEmpty == false && email?.contains("@") ?? false
        bindableIsFormValid.value = isFormValid
    
    }
    

}

