Pod::Spec.new do |s|
    s.name             = 'EFFlukyProgressHUD'
    s.version          = '5.0.0'
    s.summary          = 'An ordinary custom loading view.'
    
    s.description      = <<-DESC
    EFNavigationBar - An ordinary custom loading view.
    DESC
    
    s.homepage         = 'https://github.com/EFPrefix/EFFlukyProgressHUD'
    # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'EyreFree' => 'eyrefree@eyrefree.org' }
    s.source           = { :git => 'https://github.com/EFPrefix/EFFlukyProgressHUD.git', :tag => s.version.to_s }
    s.social_media_url = 'https://twitter.com/EyreFree777'
    
    s.swift_version = "5.0"
    s.ios.deployment_target = '9.0'
    
    s.source_files = 'EFFlukyProgressHUD/Classes/**/*'
    s.resources = 'EFFlukyProgressHUD/Assets/*.xcassets'
    
    s.dependency 'MBProgressHUD', '~> 1.1.0'
    s.dependency 'Fluky', '~> 1.0.0'
end
