# coding: utf-8
Pod::Spec.new do |s|
  s.name         = "TornErosPluginQrcode"
  s.version      = "1.0.0"
  s.summary      = "TornErosPluginQrcode Source ."
  s.homepage     = 'https://github.com/torns/torn-eros-plugin-ios-qrcode'
  s.license      = "MIT"
  s.authors      = { "torn" => "torns@qq.com" }
  s.platform     = :ios
  s.ios.deployment_target = "8.0"
  s.source = { :git => 'https://github.com/torns/torn-eros-plugin-ios-qrcode.git', :tag => s.version.to_s }

  s.source_files = "Source/*.{h,m,mm}"
  s.requires_arc = true
  s.dependency 'HMQRCodeScanner', '1.0.6'
  
end
