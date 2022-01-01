//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import UIKit

class ___VARIABLE_productName___Controller: UIViewController {

    // MARK: Properties
    
    private let viewModel: ___VARIABLE_productName___ViewModel

    init(viewModel: ___VARIABLE_productName___ViewModel = .init()) {
        self.viewModel = viewModel

        super.init(nibName: nil, bundle: nil)

        viewModel.output = self
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        viewModel.input?.viewDidLoad()
    }
}

// MARK: - ___VARIABLE_productName___Output

extension ___VARIABLE_productName___Controller: ___VARIABLE_productName___Output {

    func refresh() {
        // Refresh data or UI
    }
}
