Pod::Spec.new do |s|

  s.name         = "PushwooshInboxUI"
  s.version      = "5.8.7"
  s.summary      = "Pushwoosh Inbox UI library by Pushwoosh."
  s.platform     = :ios
  s.ios.deployment_target  = '8.0'
  s.version      = "6.0.3"
  s.description  = "Pushwoosh Inbox UI library by Pushwoosh. " \
                   "http://www.pushwoosh.com "

  s.homepage     = "http://www.pushwoosh.com"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }

  s.authors       = { "Max Konev" => "max@pushwoosh.com" }

  s.source       = { :git => "https://github.com/Pushwoosh/pushwoosh-inbox-ui-ios-sdk.git", :tag => s.version }

  s.dependency 'Pushwoosh', '~> 5.16'
  s.ios.vendored_frameworks  = 'Framework/PushwooshInboxUI.framework'
  s.resources = 'Framework/PushwooshInboxBundle.bundle'

  s.framework    = 'SystemConfiguration', 'UIKit', 'UserNotifications'
  s.requires_arc = true

end
