Pod::Spec.new do |s|
    s.name              = 'IFAHtml'
    s.version           = '1.0.2'
    s.summary           = 'A Cocoa Touch framework for HTML parsing and manipulation.'
    s.homepage          = 'https://github.com/marcelo-schroeder/IFAHtml'
    s.license           = 'Apache-2.0'
    s.author            = { 'Marcelo Schroeder' => 'marcelo.schroeder@infoaccent.com' }
    s.platform          = :ios, '8.0'
    s.requires_arc      = true
    s.source            = { :git => 'https://github.com/marcelo-schroeder/IFAHtml.git', :tag => 'v' +  s.version.to_s }
    s.source_files      = 'IFAHtml/IFAHtml/classes/**/*.{h,m}'
    s.library           = 'xml2'
    s.xcconfig          = { 'HEADER_SEARCH_PATHS' => '"$(SDKROOT)/usr/include/libxml2"' }
    s.dependency 'IFAAppUI', '~> 1'
end
