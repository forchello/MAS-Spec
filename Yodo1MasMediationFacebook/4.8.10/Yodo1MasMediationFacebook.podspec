#
# Be sure to run `pod lib lint Yodo1MasMediationFacebook.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
s.name = 'Yodo1MasMediationFacebook'
s.version = '4.8.10'
s.summary = 'Facebook adapter used for mediation with the Yodo1 MAS SDK'
s.swift_version = '5.0'

# This description is used to generate tags and improve search results.
# Yodo1MasCore Yodo1MasFull Yodo1MasLite Yodo1MasMediationAdMob Yodo1MasMediationApplovin Yodo1MasMediationFacebook Yodo1MasMediationFyber Yodo1MasMediationInMobi Yodo1MasMediationIronSource Yodo1MasMediationKidoz Yodo1MasMediationMintegral Yodo1MasMediationMyTarget Yodo1MasMediationPangle Yodo1MasMediationTencent Yodo1MasMediationUnityAds Yodo1MasMediationVungle Yodo1MasMediationYandex Yodo1MasMediationYodo1 Yodo1MasUnityBridge adapter-all.sh adapter-download.sh adapter-one.sh build config.json dependencies.sh framework-all.sh framework-one.sh framework.sh ossutilmac64 podspec.sh release-all.sh release-one.sh Think: What does it do? Why did you write it? What is the focus?
# Yodo1MasCore Yodo1MasFull Yodo1MasLite Yodo1MasMediationAdMob Yodo1MasMediationApplovin Yodo1MasMediationFacebook Yodo1MasMediationFyber Yodo1MasMediationInMobi Yodo1MasMediationIronSource Yodo1MasMediationKidoz Yodo1MasMediationMintegral Yodo1MasMediationMyTarget Yodo1MasMediationPangle Yodo1MasMediationTencent Yodo1MasMediationUnityAds Yodo1MasMediationVungle Yodo1MasMediationYandex Yodo1MasMediationYodo1 Yodo1MasUnityBridge adapter-all.sh adapter-download.sh adapter-one.sh build config.json dependencies.sh framework-all.sh framework-one.sh framework.sh ossutilmac64 podspec.sh release-all.sh release-one.sh Try to keep it short, snappy and to the point.
# Yodo1MasCore Yodo1MasFull Yodo1MasLite Yodo1MasMediationAdMob Yodo1MasMediationApplovin Yodo1MasMediationFacebook Yodo1MasMediationFyber Yodo1MasMediationInMobi Yodo1MasMediationIronSource Yodo1MasMediationKidoz Yodo1MasMediationMintegral Yodo1MasMediationMyTarget Yodo1MasMediationPangle Yodo1MasMediationTencent Yodo1MasMediationUnityAds Yodo1MasMediationVungle Yodo1MasMediationYandex Yodo1MasMediationYodo1 Yodo1MasUnityBridge adapter-all.sh adapter-download.sh adapter-one.sh build config.json dependencies.sh framework-all.sh framework-one.sh framework.sh ossutilmac64 podspec.sh release-all.sh release-one.sh Write the description between the DESC delimiters below.
# Yodo1MasCore Yodo1MasFull Yodo1MasLite Yodo1MasMediationAdMob Yodo1MasMediationApplovin Yodo1MasMediationFacebook Yodo1MasMediationFyber Yodo1MasMediationInMobi Yodo1MasMediationIronSource Yodo1MasMediationKidoz Yodo1MasMediationMintegral Yodo1MasMediationMyTarget Yodo1MasMediationPangle Yodo1MasMediationTencent Yodo1MasMediationUnityAds Yodo1MasMediationVungle Yodo1MasMediationYandex Yodo1MasMediationYodo1 Yodo1MasUnityBridge adapter-all.sh adapter-download.sh adapter-one.sh build config.json dependencies.sh framework-all.sh framework-one.sh framework.sh ossutilmac64 podspec.sh release-all.sh release-one.sh Finally, don't worry about the indent, CocoaPods strips it!

s.description = <<-DESC
TODO: Add long description of the pod here.
DESC

s.homepage = 'https://www.yodo1.com/'
s.license = { :type => 'MIT', :file => 'LICENSE' }
s.author = { 'Yodo1Games' => 'devadmin@yodo1.com' }
s.source = { :http => 'https://mas-artifacts.yodo1.com/4.8.10/iOS/Release/Yodo1MasMediationFacebook-4.8.10.zip' }
s.ios.deployment_target = '12.0'
s.static_framework = true
s.xcconfig = {
"OTHER_LDFLAGS" => "-ObjC",
"GENERATE_INFOPLIST_FILE" => "YES"
}
s.pod_target_xcconfig = {
"DEFINES_MODULE" => "YES",
"VALID_ARCHS" => "arm64 arm64e armv7 armv7s x86_64",
"VALID_ARCHS[sdk=iphoneos*]" => "arm64 arm64e armv7 armv7s",
"VALID_ARCHS[sdk=iphonesimulator*]" => "x86_64 arm64"
}
s.subspec 'Core' do |sub|
sub.resource = s.name + '/Assets/**/*'
sub.source_files = s.name + '/Classes/**/*'
sub.public_header_files = s.name + '/Classes/**/*.h'
sub.dependency 'Yodo1MasCore', '4.8.10'
sub.dependency 'FBAudienceNetwork', '6.12.0'
end
s.subspec 'AdMob' do |sub|
sub.dependency 'Yodo1MasMediationFacebook/Core', '4.8.10'
sub.dependency 'Google-Mobile-Ads-SDK', '10.2.0'
sub.vendored_frameworks = s.name + '/Lib/MetaAdapter.xcframework'
end
s.subspec 'AppLovin' do |sub|
sub.dependency 'Yodo1MasMediationFacebook/Core', '4.8.10'
sub.dependency 'AppLovinSDK', '11.8.1'
sub.vendored_frameworks = s.name + '/Lib/AppLovinMediationFacebookAdapter.xcframework'
end
s.subspec 'IronSource' do |sub|
sub.dependency 'Yodo1MasMediationFacebook/Core', '4.8.10'
sub.dependency 'IronSourceSDK', '7.2.7.0'
sub.vendored_frameworks = s.name + '/Lib/ISFacebookAdapter.xcframework'
end
end
