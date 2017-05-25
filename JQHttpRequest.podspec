Pod::Spec.new do |s|
s.name         = "JQHttpRequest"
s.version      = "0.0.3"
s.summary      = "This library is based on AFNetworking3.1's Get, Post, Put, Delete, and two encapsulated Network Libraries"
s.homepage     = "https://github.com/xiaohange/JQHttpRequest"
s.license      = { :type => "MIT", :file => "LICENSE" }
s.author             = { "韩俊强" => "532167805@qq.com" }
s.platform     = :ios, "7.0"
s.ios.deployment_target = "7.0"
s.source       = { :git => "https://github.com/xiaohange/JQHttpRequest.git", :tag => s.version.to_s }
s.source_files  = "JQHttpRequest/**/*.{h,m}"
s.public_header_files = "JQHttpRequest/**/*.h"
s.dependency   "AFNetworking"
s.dependency   "EGOCache"
s.requires_arc = true
end
