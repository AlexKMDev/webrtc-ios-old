Pod::Spec.new do |s|
  revision = '13236'

  s.name = 'libjingle_peerconnection'
  s.platform = :ios
  s.ios.deployment_target = '8.0'
  s.version = "#{revision}.0.0"
  s.summary = 'WebRTC Video Streaming Peer Connection API\'s'
  s.homepage = 'https://github.com/Anakros/webrtc-ios'
  s.authors = 'https://github.com/Anakros'
  s.source = {
    :http => 'https://github.com/Anakros/webrtc-ios/releases/download/13236/libWebRTC-13236-arm-intel-Release.tar.xz',
    :sha256 => 'cf2f510d30d2525ae88fa2dd327ca757a1721f886ed01e64c7d0bbfaf09e8497'
  }
  s.source_files = 'Headers/*.h'
  s.public_header_files = 'Headers/*.h'
  s.preserve_paths = "libWebRTC-#{revision}-arm-intel-Release.a"
  s.vendored_libraries = "libWebRTC-#{revision}-arm-intel-Release.a"
  s.source_files = 'Headers/*.h'
  s.libraries = 'c', 'sqlite3', 'stdc++'
  s.frameworks = 
    'AVFoundation', 'AudioToolbox', 'CoreGraphics', 'CoreMedia',
    'GLKit', 'UIKit', 'VideoToolbox'
  s.requires_arc = true
  s.xcconfig = {
    'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/libjingle_peerconnection"',
    'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Headers/libjingle_peerconnection"'
  }
  s.license = 'http://www.webrtc.org/license-rights/license'
end

