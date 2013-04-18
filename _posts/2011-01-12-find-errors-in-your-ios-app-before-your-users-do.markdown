--- 
layout: post
title: Find errors in your iOS app before your users do!
author: Dave Verwer
excerpt: We recently released a new version of Explore Flickr and while we did an extensive beta test with several users both technical and non-technical, a crashing bug slipped through the net and we ended up with a buggy app live on the app store. Luckily, we were able to find and fix the bug before it affected too many users and before even a single person reported it. I wanted to explain how we were able to see this problem before our users by using Flurry Analytics so that you can hopefully be in the same situation with your apps.
---
We recently <a href="/blog/launching-explore-flickr-v20/">released a new version of Explore Flickr</a> and while we did an extensive beta test with several users both technical and non-technical, a crashing bug slipped through the net and we ended up with a buggy app live on the app store.

Luckily, we were able to find and fix the bug before it affected too many users and before even a single person reported it. I wanted to explain how we were able to see this problem before our users by using <a href="http://flurry.com">Flurry Analytics</a> so that you can hopefully be in the same situation with your apps.

<h3>The Apple Way, iTunes Connect</h3>
<img src="http://shinydev.s3.amazonaws.com/blog-files/itunes-connect-links-menu.png" class="right" />
Before we get into how to do this with Flurry, it is worth mentioning the official way to get this kind of data through Apple themselves. After logging in to <a href="http://itunesconnect.apple.com">iTunes Connect</a>, click into the version details of any of your apps and you should see a links menu with "Crash Reports" listed. After refreshing the data this will show you collated crash data collected from iOS users who are running your app! Great, right?

Unfortunately there are two fairly large disadvantages with this data. Firstly it relies on users choosing to upload their crash reports when prompted by iTunes and we all know by now that <a href="http://www.psychotactics.com/blog/pricing-yes-yes/">giving users a choice between "Yes" and "No"</a> will result in a lot of "No"!. The second disadvantage is that crash reports will only be uploaded when a user syncs their device with their Mac or PC so you can not expect quick feedback using this data.

Taking a look at the Explore Flickr crash reports in iTunes Connect reported no issues at all for any iOS version.

<img src="http://shinydev.s3.amazonaws.com/blog-files/itunes-connect-crash-reports.png" />
<p class="note"><strong>Note:</strong> This screenshot is actually for the latest version of Explore Flickr, v2.0.2. I would have taken a screenshot of the actual version but iTunes Connect does not let you access crash reports for old versions. You will just have to trust me that v2.0 of the app had no reports listed!</p>

Before you completely discount these crash reports from Apple it is important to mention that I am not saying that the information provided here is not valuable, because it absolutely is and I am very glad that Apple implemented this feature. The point is that you should not be relying** only** on this data as it can give you a false sense of security about the stability of your app.

<h3>Flurry Analytics</h3>
So I mentioned earlier that we used <a href="http://flurry.com">Flurry Analytics</a> to help us find this bug. Flurry is an analytics tool much like Google Analytics for an iOS app which can be used to provide feedback on how many people are using your app and what features they are using. We have been using Flurry for quite a while in several of our apps and I would thoroughly recommend it.

One feature of Flurry that I have only just started using though is its ability to report on errors in your app. The Flurry API has two very useful methods to report errors:

<pre><code>+ (void)logError:(NSString *)errorID message:(NSString *)message exception:(NSException *)exception;
+ (void)logError:(NSString *)errorID message:(NSString *)message error:(NSError *)error;</code></pre>

Calling either of these methods will log error events with the Flurry server which you will be able to see in (almost) real time and when I checked our error stats a few days after launch I noticed that we were getting quite a few errors logged. While 0.2% of sessions may not seem that much, 160 crashed sessions is not to be ignored.

<img src="http://shinydev.s3.amazonaws.com/blog-files/flurry-analytics-error-percentage.png" />

Luckily there is a way to send up details of the error along with the error report and a quick glance at the detailed error log showed that this was definitely a pattern to the crashes and a bug in our app.

<img src="http://shinydev.s3.amazonaws.com/blog-files/flurry-analytics-error-log.png" />

The details of the bug itself are not that interesting so I won't go into more detail here about that but the technique used to catch the errors is interesting. It all comes down to registering an uncaught exception handler with <a href="http://developer.apple.com/library/mac/#documentation/Cocoa/Reference/Foundation/Miscellaneous/Foundation_Functions/Reference/reference.html%23//apple_ref/c/func/NSSetUncaughtExceptionHandler">NSSetUncaughtExceptionHandler</a> and then using that to send the exception data up to Flurry.

<h3>Implementing Unhandled Exception Logging with Flurry</h3>
In this screencast we take a look at setting up a new project with the Flurry Analytics SDK and implementing an uncaught exception handler to log any errors.

<object width="600" height="362"><param name="movie" value="http://www.youtube.com/v/udoIUlqzZC4?fs=1&amp;hl=en_US&amp;rel=0&amp;hd=1"></param><param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always"></param><embed src="http://www.youtube.com/v/udoIUlqzZC4?fs=1&amp;hl=en_US&amp;rel=0&amp;hd=1" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" width="600" height="362"></embed></object>

The source code for this screencast is <a href="https://github.com/daveverwer/UncaughtExceptionsDemo">available on github</a>.

We are trying something a little new with the screencast but producing short video content like this is something I plan to do much more of this year. I would love to know what you think about it so contact me on twitter or ask me a question on formspring by using the buttons below.