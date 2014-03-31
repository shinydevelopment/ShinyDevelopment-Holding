--- 
layout: post
title: How good are your backups?
author: Dave Verwer
excerpt: Just over a week ago, I was woken up by a friend calling me to tell me that our office was on fire! This is not a very pleasant way to wake up and I hope it never happens to any of you, however it did happen and everything inside our office was totally destroyed.
---
Just over a week ago, I was woken up by a friend calling me to tell me that our office was on fire! This is not a very pleasant way to wake up and I hope it never happens to any of you, however it did happen and everything inside our office was totally destroyed.

**Not good.**

<p><object width="600" height="362"><param name="movie" value="http://www.youtube.com/v/U--kJvGINxU?fs=1&amp;hl=en_US&amp;hd=1"></param><param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always"></param><embed src="http://www.youtube.com/v/U--kJvGINxU?fs=1&amp;hl=en_US&amp;hd=1" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" width="600" height="362"></embed></object></p>

After finding out everyone was safe and unharmed, my first thought was to think of our data. We are a computer based knowledge business and our business lives and dies by the data that we create and work with every day. We were very lucky that we had a fairly solid backup strategy and did not lose anything that could not be replaced by insurance in the fire. I am writing this post to hopefully help some of you get into the same situation.

**Friction is the arch enemy of backups** and **people are forgetful**. The key thing about most of my backup strategy is that I can be lazy and still have everything important nice and secure. My core business data is backed up almost instantly using four different services that I absolutely love (even more so now!).

<ul>
  <li style="margin:20px;"><strong><a href="http://db.tt/7Ur2x1Q">Dropbox</a>.</strong> I store my entire Documents directory on Dropbox and work from it every day. The instant that I save a file it is uploaded onto my Dropbox and automatically synced with 2 other machines as soon as they are switched on. This gives me 4 copies of my data at all times, all stored in separate physical locations. This is by far the lowest friction services I use for backups as I do not need to do <strong>anything</strong> to backup my data and I can not recommend it strongly enough, <a href="http://db.tt/7Ur2x1Q">sign up right now</a>.</li>
  <li style="margin:20px;"><strong><a href="http://www.google.com/apps/intl/en/business/index.html">Gmail and Google Calendar</a></strong>. Since starting Shiny Development in 2006, we have used Google Apps (mainly Gmail and Google Calendar) to manage all of our email and calendaring. Every email I have sent or received is available from anywhere I can find a browser and all stored securely by Google. If you are still using non-web mail then you <a href="http://www.google.com/apps/intl/en/business/index.html">really need to change</a>.</li>
  <li style="margin:20px;"><strong><a href="http://fre.ag/3nrhycba">FreeAgent</a>.</strong> We have only recently signed up with FreeAgent but we now store all of our business quotes, invoices, client details, expenses (including receipts) and accounts with this service. I finally signed up after glowing recommendations from several friends, and <a href="http://fre.ag/3nrhycba">I recommend you do too</a>.</li>
  <li style="margin:20px;"><strong><a href="http://github.com/">Github</a>.</strong> Every piece of source code written since we founded our business is now stored in Github. The IP in our source code is our most important asset and I do not consider source code to really exist until it is pushed to Github and then pulled in at least one other location (usually my laptop). The pushing/pulling of source code is the only manual process in my backup strategy but source code is so key to what I do every day it has become pure habit to always push at the end of the day. (I also have a <a href="http://help.github.com/post-receive-hooks/">post-commit hook</a> on Github which clones my important repositories across to <a href="http://codebasehq.com">Codebase HQ</a> whenever I push to them as a final belt and braces backup of really important source code!)</li>
</ul>

Gmail and FreeAgent are slightly vulnerable here as I do not have a local backup of either of these services. FreeAgent has a data export option and I am planning to set up an automated task to download and encrypt our accounts data on a weekly basis. I really don't have a good way to keep an automated local copy of Gmail so our trust is placed firmly in Google's hands for now with that one.

<img src="http://shinydev.s3.amazonaws.com/blog-files/backups-aftermath-of-fire.jpg" />

We did however lose a few bits of non-essential data. All of my user settings in the ~/Library directory were only stored on our time capsule backup, as was an old backup DMG of my old laptop (although after not touching it for over 12 months, it is unlikely to have had anything important on it). These final pieces of data could have been saved by using one of the many online "full system" backup services like <a href="http://www.backblaze.com/">Backblaze</a> or <a href="http://mozy.co.uk/">Mozy</a>.

If I could sum up this post in two bullets, this is what I want you to take away:

<ul>
  <li style="margin:20px;">Local backup (External Disk/Time Machine/Time Capsule) is a backup purely against hard drive failure and nothing else. <strong>If this is your only backup strategy, it is not good enough!</strong>.</li>
  <li style="margin:20px;">If data doesn't exist in at least 3 places, it isn't backed up. <strong>Use internet backup services. If I could recommend only one, it would be <a href="http://db.tt/7Ur2x1Q">Dropbox</a>.</strong></li>
</ul>

<img src="http://shinydev.s3.amazonaws.com/blog-files/backups-aftermath-of-fire-2.jpg" />

When thinking about this backup strategy I kept thinking of the old saying *"Backup always works, it is the restore that fails."* and I tried to make use of services that use "restore" as an integral part of the day to day use of the service. There was at least one company affected by the fire here that thought they had backups but when they came to restore them, it failed and they lost their data. With something like Dropbox, I can quickly and constantly see if the files are not transferring properly as they will not be available on my home machine or my laptop.

The most distressing part of the fire for me was losing the office that we have been a part of for 4 years now. Not so much the bricks and mortar, although it was a lovely building but the people who worked there who are now either scattered across other offices in Chester or sadly out of work because of it. Material possessions mean very little compared to the community that was lost in that fire. We were very lucky that we did not lose anything really important and my sympathy goes out to all the businesses that were not as lucky as us.

If you would like to comment on this post, please <a href="http://twitter.com/home?status=%40daveverwer">reply to @daveverwer</a> on Twitter.