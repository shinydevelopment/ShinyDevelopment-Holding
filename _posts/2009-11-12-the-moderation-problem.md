--- 
layout: post
title: The Moderation Problem?
author: Dave Verwer
excerpt: During the development of <a href="http://balloonsapp.com">Balloons!</a> I would tell people about the idea and they would occasionally come back with "But what about abuse? Isn't it going to be filled up with porn/spam/etc... within a few days?".
---
During the development of <a href="http://balloonsapp.com">Balloons!</a> I would tell people about the idea and they would occasionally come back with "But what about abuse? Isn't it going to be filled up with porn/spam/etc... within a few days?". We also got the similar concerns when reviews started appearing, in fact the first comment on the <a href="http://www.tuaw.com/2009/11/08/balloons-sending-out-a-mystery-message-on-your-iphone/">TUAW review</a> was:

<blockquote><p>How long until porn ruins it?</p></blockquote>

With the immediate follow up being:

<blockquote><p>Or spam?</p></blockquote>

So, we are now one week in to being live on the app store and with over 11,000 balloons launched I thought I would give an update on what has happened on this subject. The good news is that so far it has not been the huge problem that people predicted. In total, about 1.2% of all balloons have been reported and we ended up popping about 0.5% of all balloons and virtually all of them have been spam rather than inappropriate content.

<h3>Why isn't it full of porn?</h3>

I believe that it is at least partly because of the design decision to only allow photos taken with the onboard camera to be attached to a balloon rather than images from the library. This has frustrated some users but I believe it was the right decision to make. Mainly because we wanted the photos to be taken in the here and now while you were launching a balloon, but also because of this issue.

So, no problems then?

I wouldn't go that far but it is not an unmanageable problem so far but even so it has certainly been the subject of many conversations here in Shiny HQ this week. Sure enough even before we came out of beta we had our first spam balloon which was kinda depressing with it being from a beta tester. After launch, we continued to get a few spam balloons here and there but nothing really serious.

<h3>The spammers arrive.</h3>

<img class="left" height="500" src="http://shinydev.s3.amazonaws.com/blog-files/reported-balloon-review.png" />

The first problem we had was a couple of users who were just catching every balloon they could find, taking a picture of their spam web site and adding a link. This was our first serious problem and had the potential to easily ruin the service for the other 99.9% of our lovely users. What did we do? We decided that if someone has proven that their only use of the app is going to be for abuse and are repeatedly launching balloons with spam tags then we really have no option but to permanently ban their device from accessing the service. The iPhone is an expensive device and that is the only way to launch balloons at the moment, so banning a device should be very effective. This is absolutely a last resort but we felt it was the right decision to take to make the service sustainable. The bigger problem at the time was that we unfortunately did not have the ability to ban devices at the time so, it was time to get my head down and it was hastily implemented and deployed and the offending users banned.

On the subject of banning, we decided to make the server pretend that a balloon launched or re-launched by a banned user was successfully launched but just to drop the information before it gets written to the database. The alternative was to let the server return an error message to the user which would have only resulted in support queries and we would rather not waste time on people who choose to abuse the service. With all of that said, we have had to ban only three users so far so this kind of abuse is far from widespread.

So, banning was implemented for persistent abusers and moderation is in progress for everyone else. Everything is good, right?

<img class="right" height="500" src="http://shinydev.s3.amazonaws.com/blog-files/balloons-report-question-screen.png" />

<h3>One bad apple spoils the bunch?</h3>

Unfortunately there was another small problem with our moderation system. Because we were doing moderation at the level of an entire balloon rather than an individual tag, people could completely ruin an entire balloon with just one inappropriate tag. This causes the original launcher of the balloon to be confused as to why their completely innocent balloon has been reported for seemingly no reason and it was just plain sad when an amazing balloon was ruined by an idiot attaching a spam link as the last tag.

So over the last couple of days, I have implemented a new moderation system on our back end that allows individual tags to be removed as well as entire balloons and so we have a much more granular choice of whether to pop or re-launch a balloon. So, if all goes well with final testing we will have a new moderation system by the end of the day. At this point, we will re-moderate all of the flagged balloons so that we can re-launch those balloons that were ruined by a single bad tag.

So banning is implemented, moderation is now finely grained. That's it now, right?

<h3>False positives.</h3>

Not quite! We also have some balloons being reported for seemingly no reason with no spam or inappropriate content to be found. Why? Well sometimes users are not personally happy with the content that they submitted (either location, text or photo) at the time when they launched a balloon and so they report their own balloon, simply to take it out of the sky. This is absolutely reasonable but not something we thought would happen. The problem is that it is incredibly hard for us to tell a balloon that has been accidentally reported from one that has been reported for something like this.

The solution to this one is not quite as simple as the others unfortunately and to really solve it in a satisfactory way we need to give people the ability to write us a little comment when they report a balloon. We are going to try and push out a new version of the client ASAP that asks for a reason when reporting a balloon allowing people to explain the problem with a balloon and solve this one too.

<h3>Summary</h3>

This ended up being a long post so here is the TLDR.
<ul>
	<li>The decision to not allow users to attach photos from their library seems to be sound.</li>
	<li>Spam is the biggest moderation problem so far and we have received almost no inappropriate content at all.</li>
	<li>Farming the moderation out to the users by letting them flag balloons for moderation is working well.</li>
	<li>The effort required to moderate the system at the moment is very manageable (a few minutes a day).</li>
	<li>Banning users is a last resort, but we do occasionally have to do it.</li>
	<li>We should have thought more about how our moderation system would work before we launched.</li>
	<li>We are going to be pushing out a maintenance release of the balloons client that asks for a reason for reporting a balloon.</li>
</ul>
