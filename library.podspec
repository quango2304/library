Pod::Spec.new do |spec|
    spec.name                     = 'library'
    spec.version                  = '1.0.0'
    spec.homepage                 = 'https://github.com/quango2304/library'
    spec.source                   = { :git => 'https://github.com/quango2304/library.git'}
    spec.authors                  = { 'Leo Ngo' => '39608754+quango2304@users.noreply.github.com' }
    spec.license                  = { :type => 'MIT', :file => 'LICENSE' }
    spec.summary                  = 'TS Voice Agent SDK - Kotlin Multiplatform library for voice agent functionality with LiveKit integration'

    # Use the local xcframework in the same directory
    spec.vendored_frameworks      = 'library.xcframework'

    spec.libraries                = 'c++'
    spec.ios.deployment_target    = '13.0'
    spec.dependency 'LiveKitClient', '~> 2.6.0'

    spec.xcconfig = {
        'ENABLE_USER_SCRIPT_SANDBOXING' => 'NO',
    }
end
