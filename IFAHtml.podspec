Pod::Spec.new do |s|
    s.name              = 'IFAHtml'
    s.version           = '1.0.0'
    s.summary           = 'A Cocoa Touch framework to help you develop high quality iOS apps faster.'
    s.homepage          = 'https://github.com/marcelo-schroeder/IFAHtml'
    s.license           = 'Apache-2.0'
    s.author            = { 'Marcelo Schroeder' => 'marcelo.schroeder@infoaccent.com' }
    s.platform          = :ios, '8.0'
    s.requires_arc      = true
    s.source            = { :git => 'https://github.com/marcelo-schroeder/IFAHtml.git', :tag => 'v1.0.0' }
    s.source_files      = 'IFAHtml/IFAHtml/classes/**/*.{h,m}'
    s.resource          = 'IFAHtml/IFAHtml/resources/**/*.*'
    s.dependency 'IFAAppUI'
end
