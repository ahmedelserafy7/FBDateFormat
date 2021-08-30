
Pod::Spec.new do |spec|

  spec.name         = "FBDateFormat"
  spec.version      = "1.0.0"
  spec.summary      = "This my framework called FBDateFormat."
  spec.description  = "This is a framework that made by Ahmed Elserafy"

  spec.homepage     = "https://github.com/ahmedelserafy7/FBDateFormat"
  spec.license      = "MIT"
  spec.author             = { "Ahmed Elserafy" => "ahmed.samer43@yahoo.com" }
  spec.platform     = :ios, "13.0"
  spec.source       = { :git => "https://github.com/ahmedelserafy7/FBDateFormat.git", :tag => "1.0.0" }
  spec.source_files  = "FBDateFormat", "**/Source/*.swift"
  spec.swift_version = '5.0'
  
end
