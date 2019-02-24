import Fluky
import MBProgressHUD

private extension UIImage {

    static func loadImage(named: String) -> UIImage? {
        let bundle: Bundle = Bundle(for: EFFlukyProgressHUD.self)
        return UIImage(named: named, in: bundle, compatibleWith: nil)
    }
}

public class EFFlukyProgressHUD: MBProgressHUD {

    // MARK: Public
    public init(flukyType: FlukyType, flukyImages: [UIImage]? = nil) {
        self.flukyType = flukyType
        if let flukyImages = flukyImages {
            self.flukyImages = flukyImages
        }
        super.init(frame: CGRect.zero)
        setup()
    }

    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }

    public override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }

    public override init(view: UIView) {
        super.init(view: view)
    }

    public override func show(animated: Bool) {
        super.show(animated: animated)
        self.flukyView?.start()
    }

    public override func hide(animated: Bool) {
        super.hide(animated: animated)
        self.flukyView?.stop()
    }

    public func setFlukyType(_ type: FlukyType, andSize: CGSize) {
        self.flukyType = type
        refreshFluky()
    }

    public func setFlukyImages(images: [UIImage]) {
        self.flukyImages = images
        refreshFluky()
    }

    // MARK: Private
    private(set) var flukyType: FlukyType = FlukyType.box
    private(set) var flukyImages: [UIImage] = [
        UIImage.loadImage(named: "iconCircular")!,
        UIImage.loadImage(named: "iconCross")!,
        UIImage.loadImage(named: "iconSquare")!,
        UIImage.loadImage(named: "iconTriangle")!
    ]

    private lazy var containerView: UIView = {
        return UIView()
    }()
    private var flukyView: FlukyView?

    private func setup() {
        setupMBProgressHUD()
        setupFluky()
    }

    private func setupMBProgressHUD() {
        self.mode = MBProgressHUDMode.customView
        self.removeFromSuperViewOnHide = true
        self.label.text = ""
        self.detailsLabel.text = ""
        self.customView = containerView
    }

    private func setupFluky() {
        let flukyView: FlukyView = Fluky.view(as: flukyType, with: flukyImages)
        containerView.addSubview(flukyView)
        flukyView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate(
            [
                flukyView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
                flukyView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
                flukyView.topAnchor.constraint(equalTo: containerView.topAnchor),
                flukyView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor)
            ]
        )
        self.flukyView = flukyView
    }

    private func refreshFluky() {
        self.flukyView?.removeFromSuperview()
        setupFluky()
    }

    deinit {
        self.flukyView?.stop()
        self.flukyView = nil
        self.customView = nil
    }
}
