The cool / useful templates that can be used in iOS development

# Usage

- Run the `Install` script, the templates will be imported into Xcode
- When you try to add `New File`, you will see the templates under the `My Templates` section

# Templates

- [UIKit MVVM Protocol Oriented Controller](#uikit-mvvm-protocol-oriented-controller)

## UIKit MVVM Protocol Oriented Controller
  
#### Controller
```swift
class MyTemplatesController: UIViewController {

    // MARK: Properties
    
    private let viewModel: MyTemplatesViewModel

    init(viewModel: MyTemplatesViewModel = .init()) {
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

// MARK: - MyTemplatesOutput

extension MyTemplatesController: MyTemplatesOutput {

    func refresh() {
        // Refresh data or UI
    }
}
```
  
#### View Model
```swift
class MyTemplatesViewModel {

    weak var input: MyTemplatesInput?
    weak var output: MyTemplatesOutput?

    init() {
        input = self
    }
}

// MARK: - MyTemplatesInput

extension MyTemplatesViewModel: MyTemplatesInput {

    func viewDidLoad() {
        // Run some logic

        output?.refresh()
    }
}
```

#### Protocols
```swift
protocol MyTemplatesInput: AnyObject {
    func viewDidLoad()
}

protocol MyTemplatesOutput: AnyObject {
    func refresh()
}
```
