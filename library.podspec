Pod::Spec.new do |spec|
    spec.name                     = 'library'
    spec.version                  = '1.0.0'
    spec.homepage                 = 'https://github.com/kotlin/multiplatform-library-template/'
    spec.source                   = { :path => '.' }
    spec.authors                  = ''
    spec.license                  = ''
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
