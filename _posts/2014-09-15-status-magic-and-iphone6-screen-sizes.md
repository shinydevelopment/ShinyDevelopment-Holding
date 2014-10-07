---
layout: post
title: Status Magic and iPhone 6/6 Plus screen sizes
author: Dave Verwer
excerpt: Last week Apple unveiled some beautiful new devices in the form of the new iPhone 6 and iPhone 6 Plus. As you surely know by now the new devices have new screen resolutions as well, 1334x750 pixels for the iPhone 6 and a whopping 1920x1080 pixels for the 6 Plus. Unfortunately, this means that we had a difficult decision to make about the future of Status Magic.
---

![Sherlocked](http://shinydev.s3.amazonaws.com/blog-files/status-magic-sherlocked.png)

**UPDATE: We have released a small open source tool to help capture perfect screen shots if you use the iOS Simulator to capture your screenshots. [Read all about it](http://shinydevelopment.com/blog/status-magic-for-the-ios-simulator/).**

—

Last week Apple unveiled some beautiful new devices in the form of the new iPhone 6 and iPhone 6 Plus. As you surely know by now the new devices have new screen resolutions as well, 1334x750 pixels for the iPhone 6 and a whopping 1920x1080 pixels for the 6 Plus.

More fundamental than the resolution change is the fact that the iPhone Plus renders at a new scale factor. Native rendering, including screenshots needed for App Store listings is now 3x resolution instead of 2x, the device then [scales down the output](http://www.paintcodeapp.com/news/iphone-6-screens-demystified) to the 1920x1080px hardware.

Almost immediately, people started asking if we were going to be supporting the new screen sizes and I can only apologise for the last few days of uncertainty, I did not want to make a snap judgement on the decision that needed to be made. Unfortunately, after careful consideration we have taken the decision to remove Status Magic from the Mac App Store and will not be updating it to support the latest screen sizes.

However, before you bring out the pitchforks! Please read on, the reason we are retiring it is because there is a **better way** to achieve the same results on Yosemite and iOS 8, **for free**.

### Perfect Status Bars in iOS 8 and Mac OS X Yosemite

Back at WWDC, when Apple announced App Preview videos were going to be added to App Store listings they also mentioned that videos could now be recorded with a lightning cable and QuickTime. What they didn't mention however was that as these video recordings are being created, Mac OS X Yosemite [automatically puts a perfect status bar on your device](http://www.idownloadblog.com/2014/08/07/yosemites-quicktime-cleans-up-ios-status-bar-when-screencasting-so-you-dont-have-to/)!

Over the last couple of days we have been testing this out and we can confidently say that this is absolutely the best way to take still screenshots as well as videos of your app. How? It's easy:

1. Make sure you're running the latest versions of Mac OS X Yosemite and iOS 8.
2. Connect an iPhone or iPad with a lightning cable.
3. Open QuickTime on the Mac.
4. Select "New Movie Recording" from the File menu.
5. Click the drop down arrow next to the record button and select your device from the list of cameras.
6. Voila! your real, actual, iPhone or iPad will now be showing 9:41 AM and have a full battery, full bars of signal and the Wi Fi icon. **You do not need to actually record a movie, just have it connected as a camera with QuickTime**.

![Selecting the iPhone as a camera in QuickTime](http://shinydev.s3.amazonaws.com/blog-files/status-magic-quicktime-camera-selection.png)

Once your device is showing this, you can feel free to take perfect screenshots on your iPhone or iPad in the normal way. No longer will you have to use [SDScreenshotCapture](http://github.com/shinydevelopment/SDScreenshotCapture) to make sure you get that perfect transparency under your status bar, it's just perfect every time with no additional work.

There is no doubt in my mind that this is the best way to take your App Store screenshots and this is the main reason that we're discontinuing Status Magic. It's very sad, but I'm not going to fight against something that provides better results and is integrated into the operating systems.

### New Guidelines from Apple

There is a secondary reason that we took this decision though, along with the new iTunes Connect last week came a whole load of updates to the guidelines for submitting to the App Store. Recommendations about app screenshots were included in these changes and the advice from Apple has changed. Under the title [Screenshots: Pictures Tell the App's Story](https://developer.apple.com/library/ios/documentation/LanguagesUtilities/Conceptual/iTunesConnect_Guide/Chapters/FirstSteps.html#//apple_ref/doc/uid/TP40011225-CH19-SW10) there is a bullet point which states:

* Always remove the status bar from screenshots to present a cleaner look. iTunes Connect expects screenshots of dimensions that exclude that area.

Now, this is only a guideline and I still prefer a screenshot with a perfect status bar than one where it has been cropped. However the writing is on the wall for Status Magic.

### Why not just update it anyway? It's only a couple of new resolutions to support!

If it had been a matter of updating Status Magic to simply accept and render out the new screenshot sizes we almost certainly would have done it and I would not be making this announcement.

However, the 3x rendering issue is a much bigger problem. The code involved in getting everything in a perfect position between 1x and 2x was bad enough (oh how I wish it was a simple as just multiplying by 2 😝) and doing all those tweaks again for 3x is simply not worth the effort given that the operating system has a better way to achieve the same result, combined with the fact that Apple are now recommending that status bars be snipped.

I loved this app, it wasn't useful every day but it really made a difference to App Store screenshots and every time I saw a 9:41 on an App Store screenshot I wondered if we had helped create it. Farewell, Status Magic!

—

**UPDATE: We have released a small open source tool to help capture perfect screen shots if you use the iOS Simulator to capture your screenshots. [Read all about it](http://shinydevelopment.com/blog/status-magic-for-the-ios-simulator/).**
