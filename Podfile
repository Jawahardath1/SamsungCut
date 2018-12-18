# Uncomment the next line to define a global platform for your project
platform :ios, '9.0'

target 'SamsungCut' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

  # Pods for SamsungCut

    pod 'Firebase'
    pod 'Firebase/Auth'
    pod 'Firebase/Core'
    pod 'Firebase/Database'
    pod 'SVProgressHUD'
    pod 'ChameleonFramework'

    pod 'ImageSlideshow', '~> 1.7'
    pod 'ImageSlideshow/AFURL'
    pod 'ImageSlideshow/Alamofire'
    pod 'ImageSlideshow/SDWebImage'
    pod 'ImageSlideshow/Kingfisher'
    
    pod 'SideMenu', '~> 5.0'
    
end

post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['CLANG_WARN_DOCUMENTATION_COMMENTS'] = 'NO'
        end
    end
end
