---
layout: post
title: Status Magic for the iOS Simulator
author: Dave Verwer
excerpt: After we removed Status Magic from the App Store quite a few people contacted us and explained that they either did not have access to the new devices or that the main way that they took screenshots was on the iOS Simulator. So, we had a think about what we could do to help and came up with a solution which solves both of those issues.
---

A couple of weeks ago we made the sad decision to [stop development of Status Magic and remove it from the Mac App Store](http://shinydevelopment.com/blog/status-magic-and-iphone6-screen-sizes/).

Quite a few people contacted us and explained that they either did not have access to the new devices or that the primary way that they took screenshots was on the iOS Simulator. So, we had a think about what we could do to help and came up with a solution which we think solves both of those issues.

Back when iOS 7 was first released we discovered some new (private) APIs which allowed permanent modification of the status bar. These APIs allow permanent overrides for things like the current time, signal strength, WiFi bars and battery state. We experimented a bit with these APIs when iOS 7 was released but it wasn’t practical to use on real devices and so we abandoned the experiments. However, now that [taking perfect screenshots on a real device is easy](http://shinydevelopment.com/blog/status-magic-and-iphone6-screen-sizes/), it seemed a good chance to put that experimentation into something that could be used to make it just as easy on the iOS Simulator.

![Simulator Status Magic](http://shinydev.s3.amazonaws.com/blog-files/simulator-status-magic.png)

We’ve put together and released a small open source app which overrides the iOS Simulator status bar to match the settings of the status bars used in the [Apple marketing materials](http://www.apple.com/ios/).

Using it is as easy as [downloading the app](https://github.com/shinydevelopment/SimulatorStatusMagic), installing it on your iOS Simulator and pressing a single button.  Could it be any easier? :)

You can find [Simulator Status Magic on GitHub](https://github.com/shinydevelopment/SimulatorStatusMagic). Please give it a try and let us know if it’s useful.
