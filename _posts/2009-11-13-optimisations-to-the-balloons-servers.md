--- 
layout: post
title: Optimisations to the Balloons! servers
author: Dave Verwer
excerpt: We had some issues this week with the <a href="http://balloonsapp.com">Balloons!</a> servers and while they didn't get bad enough to cause a noticeable slowdown to users but as usage of Balloons! has ramped up this week the servers were gradually slowing down.
---
We had some issues this week with the <a href="http://balloonsapp.com">Balloons!</a> servers and while they didn't get bad enough to cause a noticeable slowdown to users but as usage of Balloons! has ramped up this week the servers were gradually slowing down:

<img src="http://shinydev.s3.amazonaws.com/blog-files/balloon-server-load-last-7-days.png" />

The advantage of being at the end of a cellular data connection is that even with response times occasionally going over 1000ms! it never got bad enough to notice while using the application.

Anyway, I deployed some optimisations to the server today and am very happy with the results.

<img src="http://shinydev.s3.amazonaws.com/blog-files/balloon-server-load-last-6-hours.png" />

That should keep us going for a while!
