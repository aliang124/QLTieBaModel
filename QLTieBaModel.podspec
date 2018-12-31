Pod::Spec.new do |s|
  s.name         = "QLTieBaModel"
  s.version      = "0.0.1"
  s.summary      = "QLTieBaModel趣浪浪吧"

  s.homepage     = "https://github.com/aliang124/QLTieBaModel"

  s.license      = "MIT"
  s.author             = { "jienliang000" => "jienliang000@163.com" }

  s.platform     = :ios
  s.platform     = :ios, "8.0"
  s.requires_arc = true

  s.source       = { :git => "https://github.com/aliang124/QLTieBaModel.git", :tag => "#{s.version}" }
  s.source_files  = "QLTieBaModel/*.{h,m}"

  s.subspec 'Cell' do |ss|
  ss.source_files = 'QLTieBaModel/Cell/**/*.{h,m,c,mm}'
  end

  s.subspec 'Detail' do |ss|
  ss.source_files = 'QLTieBaModel/Detail/**/*.{h,m,c,mm}'
  end

  s.subspec 'Merchant' do |ss|
  ss.source_files = 'QLTieBaModel/Merchant/**/*.{h,m,c,mm}'
  end

end
