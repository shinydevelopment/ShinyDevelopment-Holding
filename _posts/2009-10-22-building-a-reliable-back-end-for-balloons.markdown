--- 
layout: post
title: Building a reliable back end for Balloons!
author: Dave Verwer
excerpt: So I have spent the last few months building our new iPhone app, <a href="http://balloonsapp.com">Balloons!</a>. Obviously it needs a back end web service to move all of the balloons around the skies and host all of the attached messages. The back end is (predictably for me) written in Ruby on Rails and we just finished moving the hosting for it to <a href="http://brightbox.co.uk">Brightbox</a>.
---
So I have spent the last few months building our new iPhone app, <a href="http://balloonsapp.com">Balloons!</a>

Obviously it needs a back end web service to move all of the balloons around the skies and host all of the attached messages. The back end is (predictably for me) written in Ruby on Rails and we just finished moving the hosting for it to new <a href="http://brightbox.co.uk">Brightbox</a><sup>[2]</sup> VPS's ready for the launch. When we do go live, server reliability and the ability to scale is pretty important, after all we are hoping it will be successful and for every copy (including the free app) downloaded, our servers get hit a little harder.

Now I don't have a huge amount of experience building high availability sites but a few years ago in a different life (working with .net &amp; Windows<sup>[1]</sup>) I was working on a project which needed to be extremely reliable and also was expecting a large user load on day one. This meant building a reliable database cluster and load balanced web servers. With help we did it, and it worked, but it was <em>incredibly</em> expensive and complicated. It took months of planning and weeks of work to build and deploy and left me with a healthy fear of doing anything like it again.

So it was a very pleasant surprise this week that when I started looking at load balancing for the Balloons! servers and found out that not only was it really cheap (&pound;19/mo) but that it only took about 10 minutes to set up. Combine that with the use of the Brightbox MySQL cluster rather than a locally hosted DB server and with a few simple tweaks to our <a href="http://capify.org">Capistrano</a> deployment scripts I was able to have a good level of reliability for our back end for a trivial amount of extra cost (I halved the size of our VPS, but doubled the number of machines so the cost and capacity was roughly the same) and effort.

So yesterday Brightbox had some <a href="http://status.brightbox.co.uk/2009/10/san3-problem/">pretty major downtime</a> with a SAN failing in what seems to be a fairly epic way. Luckily it didn't affect any of my servers but if it had, Balloons! would not have been unavailable for more than a few seconds because we chose to load balance and Brightbox (very sensibly) offered to put our virtual servers on different host machines and also different SAN's.

A quick look at twitter showed that people are naturally <a href="http://search.twitter.com/search?q=brightbox">pretty upset</a> about such a large amount of downtime and some people were talking about moving hosting providers. That is of course their prerogative but moving to another hosting provider is no protection against disasters like this because stuff like this happens to <em>every hosting provider</em> from time to time and as I understand it, it was not due to anything other than bad luck with several disks failing at the same time.

The point I am trying to make is that if your site is important enough for you to lose money/reputation from it being unavailable for more than a few minutes then building an amount of reliability in is <strong>your responsibility </strong>as no single server is ever going to be 100% reliable on its own, no matter how good the hosting provider. The cost and complexity of doing it these days should make it an easy decision to make.

Now let's just hope we sell enough copies Balloons! to really put it to the test :)
<ol>
	<li>This is not a rant about Windows and I am sure it is much easier to load balance stuff and build a SQL Server cluster than it was then. I would imagine the cost is still a few bands up from how we have done it for Balloons! though.</li>
	<li>In the interest of disclosure, most of the team at Brightbox are friends of mine and so take this with the appropriate amount of bias although it was not written with any intentionally.</li>
</ol>
