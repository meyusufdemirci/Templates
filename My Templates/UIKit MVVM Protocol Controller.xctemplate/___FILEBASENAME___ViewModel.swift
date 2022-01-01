//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import Foundation

class ___VARIABLE_productName___ViewModel {

    weak var input: ___VARIABLE_productName___Input?
    weak var output: ___VARIABLE_productName___Output?

    init() {
        input = self
    }
}

// MARK: - ___VARIABLE_productName___Input

extension ___VARIABLE_productName___ViewModel: ___VARIABLE_productName___Input {

    func viewDidLoad() {
        // Run some logic

        output?.refresh()
    }
}
