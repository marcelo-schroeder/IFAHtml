platform :ios, '9.0'
workspace 'IFAHtml'
project 'IFAHtml/IFAHtml.xcodeproj'
use_frameworks!

target :IFAHtml do

#pod 'IFAAppUI'
  # pod 'IFAAppUI', :git => 'https://github.com/marcelo-schroeder/IFAAppUI.git', :branch => 'dev_iOS10_Cocoapods1'
  # pod 'IFAAppUI', :git => 'https://github.com/marcelo-schroeder/IFAAppUI.git', :branch => 'development'
  pod 'IFAAppUI', :path => '/Users/mschroeder/myfiles/projects/Xcode/IFAAppUI/IFAAppUI_development'
  # pod 'IFAAppUI', '~> 1'

  # pod 'IFACoreUI', :git => 'https://github.com/marcelo-schroeder/IFACoreUI.git', :branch => 'dev_iOS10_Cocoapods1'
  # pod 'IFACoreUI', :git => 'https://github.com/marcelo-schroeder/IFACoreUI.git', :branch => 'development'
  pod 'IFACoreUI', :path => '/Users/mschroeder/myfiles/projects/Xcode/IFACoreUI/IFACoreUI_development'

  # pod 'IFAFoundation', :git => 'https://github.com/marcelo-schroeder/IFAFoundation.git', :branch => 'dev_iOS10_Cocoapods1'
  # pod 'IFAFoundation', :git => 'https://github.com/marcelo-schroeder/IFAFoundation.git', :branch => 'development'
  pod 'IFAFoundation', :path => '/Users/mschroeder/myfiles/projects/Xcode/IFAFoundation/IFAFoundation_development'

  target :IFAHtmlTests do
      #          pod 'IFATestingSupport'
      #pod 'IFATestingSupport', :git => 'https://github.com/marcelo-schroeder/IFATestingSupport.git', :tag => 'v0.1.1'
      # pod 'IFATestingSupport', :git => 'https://github.com/marcelo-schroeder/IFATestingSuport.git', :branch => 'development'
      pod 'IFATestingSupport', :path => '/Users/mschroeder/myfiles/projects/Xcode/IFATestingSupport/IFATestingSupport_development'
      pod 'OCHamcrest', :inhibit_warnings => true
      pod 'OCMock', :inhibit_warnings => true
  end

end
