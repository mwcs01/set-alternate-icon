This shows how to setup the AlternateIcon for iOS 10.3 using Swift 3.0.

The key thing that you need make it happen is the changes info.plist. 


```
#!xml

 <key>CFBundleIcons</key>
    <dict>
        <key>CFBundleAlternateIcons</key>
        <dict>
            <key>Test1</key>
            <dict>
                <key>CFBundleIconFiles</key>
                <array>
                    <string>Test1</string>
                </array>
                <key>UIPrerenderedIcon</key>
                <false/>
            </dict>
            <key>Test2</key>
            <dict>
                <key>CFBundleIconFiles</key>
                <array>
                    <string>Test2</string>
                </array>
            </dict>
        </dict>
        <key>CFBundlePrimaryIcon</key>
        <dict>
            <key>CFBundleIconFiles</key>
            <array>
                <string>AppIcon60x60</string>
            </array>
        </dict>
    </dict>
```