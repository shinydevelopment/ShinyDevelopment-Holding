--- 
layout: post
title: Launching Explore Flickr v2.0
author: Dave Verwer
excerpt: Back in 2007 when we were first dipping our toes into the world of Mac development I took a few days and created a small dashboard widget based on the &ldquo;Explore&rdquo; photos on flickr.com. I loved browsing these amazing photos every day and it seemed an obvious subject for our first experiments with Mac development and we are very happy to have just a major upgrade to the iPad, iPhone and iPod Touch version of this app, Explore Flickr. 

---
**Note:** This is a long post so if you just want the news then here it is! We just released an update to our Flickr browser iOS app, we think it is pretty neat and we hope you like it too. You can find out all of the <a href="http://exploreflickr.com">details of what we added and download it right now over on the site we made for it</a>.

<p><img src="http://shinydev.s3.amazonaws.com/blog-files/explore-flickr-header.png" /></p>
Back in 2007 when we were first dipping our toes into the world of Mac development I took a few days and created a <a href="http://shinydev.s3.amazonaws.com/updates/products/interestingness/interestingness_latest.zip">small dashboard widget</a> (see screenshot below) based on the &ldquo;<a href="http://flickr.com/explore">Explore</a>&rdquo; photos on <a href="http://flickr.com">flickr.com</a>. I loved browsing these amazing photos every day and it seemed an obvious subject for our first experiments with Mac development.

<img src="http://shinydev.s3.amazonaws.com/blog-files/explore-flickr-dashboard.png" class="right" />

Skip forward almost 4 years and in May of this year we had recently seen the introduction of the iPad as another brand new iOS platform to play with and I naturally wanted to create something which would get me up to speed with iPad development. So, in a spare weekend I decided to sit down and recreate our flickr dashboard widget for the iPad.

Version 1.0 of Explore Flickr was created over a very short period of time, I started work on Friday morning and went through til Monday evening creating the basics and we submitted it to the app store just a couple of days later. It was a very basic app, just like the dashboard widget and so we released it for free and did almost no marketing at all around it as I honestly did not expect it to get many downloads and it had mainly been created to scratch an itch of mine rather than to be a major product for us!

So a few days after it went live I was extremely surprised to see the stats reporting thousands and thousands of downloads. Just a few days after that the feedback started coming in and we realised that people really quite liked it! I am very pleased to report that over the last few months we have seen more than 75,000 downloads of v1.x of the app and it has been featured in the "What's Hot" section of the store in 45 countries, 57 times! Unbelievable!

<img src="http://shinydev.s3.amazonaws.com/blog-files/explore-flickr-first-week-sales.png" />

However, it was still a very basic app and it really needed work to be properly useful. Luckily we had plenty of feedback from people both through reviews of the app and through email and so when we decided to put some more time into it, we looked at the feedback we had received. The top three feature requests were:

<ul>
  <li><strong>Allow swiping between pictures.</strong> This is so much of an expected behaviour for iOS photo apps that it was quite a jarring experience for people when the full size photo view did not swipe.</li>
  <li><strong>Adding a search feature.</strong> As wonderful as the top explore photos are every day, there is only a limited number of them and this was really limiting how much use people got out of the app.</li>
  <li><strong>Slideshows.</strong> Digital photo frame displaying the best of flickr? Wouldn't that be awesome?</li>
</ul>

At the core of version 2.0 is the original design decision taken for v1.0 that Explore Flickr should still be about finding the absolute best of flickr. All searches are performed using flickr's "interestingness" search ordering which will bring you back the most beautiful photos on whatever tag or search term you choose.

So, not compromising on that at all we ended up adding swiping between images along with a much more capable photo view which allows viewing of the photo title and tags overlaid directly on the photo. We added a slideshow mode along with a few options for it and finally we added text and tag search along with the ability to drill down into any tag on a displayed image.

Tag drill down was really the turning point in development of v2.0 as that "browse, browse, browse, drill down, browse" behaviour we created by adding the tag search turns using the app (for me at least) into something which is totally addictive. This actually became a big problem both for us attempting to test the app while developing it, but also for getting feedback from people using the app. The number of times I showed it to someone and asked for their feedback, only to see them lost in the wonderful photography almost immediately! However this was a very encouraging sign that we had the UI right as it was getting out of the way immediately to let people concentrate on the photography.

The scope version 2.0 is still very limited, no user photo streams, no integrated comments, no group support and no end of other things that are missing. However we really sweated the details of what we we did add and I am glad we did, I would much rather have an app that I am proud of that has limited functionality than try and squeeze every last feature in.

That does not mean that some of those features are not coming though and we do have plans for the future! I would love to rethink the grid view in version 3.0 as I feel that is the weakest part of the app at the moment as well as adding a few more features, group support and adding flickr favourites being top of my list (Note that this isn't a promise though as future plans will be driven by user feedback as much as anything else!).

<a href="http://exploreflickr.com"><img src="http://shinydev.s3.amazonaws.com/blog-files/explore-flickr-2-icon.png" class="right" /></a>Explore Flickr v2.0 is a <a href="http://itunes.apple.com/us/app/explore-flickr/id372457895?mt=8">free download</a> with an in-app purchase to unlock some of the features. You can find out all about it on <a href="http://exploreflickr.com">http://exploreflickr.com</a>.

I also want to say thank you to <a href="http://planetperki.co.uk/">David Perkins</a> for the beautiful background artwork used in the grid view of the app, <a href="http://toxicsoftware.com/">Jonathan Wight</a> for the superb <a href="https://github.com/schwa/TouchJSON">TouchJSON</a> library and <a href="http://simonyoung.net/">Simon Young</a> for his work on the brand new <a href="http://exploreflickr.com">website we created for the app</a>. The biggest thank you of all however must go to all of the talented photographers that share their work on flickr.com, the internet is a far better place for it!

If you would like to comment on this post, please <a href="http://twitter.com/home?status=%40daveverwer">reply to @daveverwer</a> on Twitter.