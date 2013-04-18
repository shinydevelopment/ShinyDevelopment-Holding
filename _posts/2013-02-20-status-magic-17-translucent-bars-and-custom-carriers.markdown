---
layout: post
title: Status Magic 1.7 - Translucent Bars and Custom Carriers
author: Dave Verwer
excerpt: Today sees the release of v1.7 of Status Magic, our tool for replacing the status bars on your App Store screenshots with perfectly crafted unobtrustive versions just like Apple do in their marketing materials. This version includes for two new features, support for translucent status bars and custom carrier text.
---

Today sees the release of v1.7 of <a href="/status-magic/">Status Magic</a>, our tool for replacing the status bars on your App Store screenshots with perfectly crafted unobtrustive versions just like Apple do in their marketing materials.

This version includes two new features, support for translucent status bars and custom carrier text.

### Translucent Status Bars

![Status Magic Translucent Status Bar Settings](http://shinydev.s3.amazonaws.com/blog-files/status-magic-translucent-status-bar-settings.png)

Support for translucent status bars was omitted from the original version of Status Magic as obviously any screenshots taken from apps which use that status bar style will already have a status bar included and if Status Magic were to overlay another translucent one on top you would still be able to see the original one below. Ugly.

However, a few people pointed out that this would be a useful feature to have and <a href="https://twitter.com/_nb">Nicolas Bouilleaud</a> had a solution.

<blockquote class="twitter-tweet"><p>@<a href="https://twitter.com/shinydev">shinydev</a> I make screenshots in the Simulator using <a href="http://t.co/5yezzcgG" title="http://developer.apple.com/library/ios/#qa/qa1703/_index.html">developer.apple.com/library/ios/#q…</a>, which doesn’t capture the statusbar.</p>&mdash; Nicolas Bouilleaud (@_nb) <a href="https://twitter.com/_nb/status/296667492099715074">January 30, 2013</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

By taking the screenshot through code it is possible to take a screenshot omitting the system status bar, perfect for overlaying a new status bar with Status Magic.

More information on how to save screenshots from your app without the status bar being displayed <a href="/status-magic/translucent-screenshots-help/">can be found on the help page for this feature</a>.

### Custom Carrier Text

<img class="right" src="http://shinydev.s3.amazonaws.com/blog-files/status-magic-carrier-text-options.png" alt="Status Magic Custom Carrier Text Settings">

The second feature we have added to this release is support for custom carrier text. This is something that people have been asking for since the very first release of the app but was something I had always resisted as Apple recommend not including carrier text on App Store screenshots in their <a href="https://developer.apple.com/appstore/AppStoreMarketingGuidelines.pdf">App Store Marketing Guidelines</a>.

But, it turns out that people are using Status Magic for more than just App Store screenshots. Journalists and book authors are using it to prepare screenshots for books/posts they were writing. Others also want to use it to stamp some identity on screenshots that were being linked around the web. People using the app for things like this naturally don't need to pay much attention to Apple's App Store marketing guidelines and wanted this feature.

After <a href="https://gist.github.com/daveverwer/4270117">taking the advice of the internet</a> we decided that it was better to allow the custom carrier text to be added but also to include guidance around when it is appropriate to use custom carrier text.

The guidance on when to include custom carrier text on your screenshots <a href="/status-magic/carrier-text-marketing-guidelines/">can be found on the help page for this feature</a>.

### Available Now

<a href="/status-magic/"><img class="right" src="/assets/images/mac-app-store-266px.png" alt="Status Magic Purchase Link"></a>

Status Magic v1.7 is now available through the Mac App Store and the full release notes are below:

**v1.7**

* Added support for adding custom carrier text to exported screenshots.
* Added support for translucent status bars.
* Slight visual tweaks to exported screenshots to even more closely match iOS.
* Added a Close All button to the status bar.

**v1.6**

* Added support for replacing the status bars for Non-Retina (1x) screenshots for iPhone 3.5 inch (320x480), iPhone 4 inch (320x568) and iPad (1024x768) which should make replacing status bars on marketing images or images intended for a web site much easier!
* Added support for resizing Retina screenshots to Non-Retina (2x to 1x) as part of the export process.
* Added support for importing a directory structure of screenshots. Useful if you already have all of your screenshots stored in an existing directory structure. This probably affects you if you have localized screenshots!
* Added support for exporting files back to their original locations (overwriting the original files). Useful if you are working with lots of screenshots in a directory structure as mentioned above.
* Paths for images displayed in the bar at the bottom of the window now show a tilde for any image under the users home directory.
* Bug Fix: When exporting using generated file names Status Magic now distinguishes between iPhone 3.5 inch and iPhone 4 inch images in the file name.
* Bug Fix: Custom time text no longer attempts to word wrap, oops!
* Bug Fix: Reordering of screenshots in the lower panel now works again!
