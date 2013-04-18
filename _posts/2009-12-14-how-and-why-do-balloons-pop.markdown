--- 
layout: post
title: How and Why do Balloons Pop?
author: Dave Verwer
excerpt: One of the biggest problems we have had to deal with since <a href="http://balloonsapp.com">Balloons!</a> went live on the app store is the issues around how and why Balloons pop so I thought I would write up some of the experiences and explain some of the reasoning behind popping balloons!
---
One of the biggest problems we have had to deal with since <a href="http://balloonsapp.com">Balloons!</a> went live on the app store is the issues around how and why Balloons pop so I thought I would write up some of the experiences and explain some of the reasoning behind popping balloons!
<h3>First Problem: Misunderstanding</h3>
I <a href="http://shinydevelopment.com/blog/the-moderation-problem/">talked about moderation</a> before but there has been another, even more serious problem with the process of moderation. People who have never actually had a balloon reported (and therefore have never seen the "Reported!" badge in their balloon tracker) sometimes think that when balloons show a "Popped!" badge, that they have been popped as a result of someone else reporting them.

Before I go any further I would like to say that <strong>this is absolutely</strong><strong> our fault</strong> and we should have made it clearer why balloons pop. <a href="http://twitter.com/balloonsapp/status/6659108221">We recently did this with the v1.1.1 update</a> of Balloons! However this has been a real problem for our users and has resulted in a significant amount of bad reviews from people assuming we are censoring their balloons no matter how benign the content.

<img src="http://shinydev.s3.amazonaws.com/blog-files/bad-feedback-review-balloons.png" width="600"/>

It is crippling to iPhone developers that <a href="http://www.openradar.appspot.com/6069285">we can not reply to these reviews</a> and have no way to contact the disappointed customer (are you listening, Apple?) but I am really hoping the reviews on this subject will calm down now that we have made it clearer in the app UI.
<h3>Second Problem: Why Pop at All?</h3>
People don't particularly like that their balloons pop for any reason and want them to fly around for years gathering hundreds of responses, this would be wonderful but unfortunately the reality of it is that with more and more balloons being launched every day, unless we also pop some every day, the probability of balloons being caught and replied to at all sharply decreases.

To explain that, let's say that balloons are being launched at a constant rate of 1,000 balloons per day and let's ignore the geographical constraints of where balloons travel for now and say that all balloons are available for catching anywhere on the earth. At the end of day one, you would have a 1 in 1,000 chance of having your balloon caught and replied to by someone else. Day two comes and another 1,000 balloons go up, by the end of day two your chances of having your balloon caught are now 1 in 2,000. As you can see, this would very quickly lead to a disaster where it could take weeks before your balloon is caught. Combine this with the fact that on average a balloon is caught between 5 and 10 times before someone decides to reply and the odds sink even lower.

So, we have to pop balloons if we want the service to survive.
<h3>Third Problem: Which Balloons Should be Popped?</h3>
So once we agreed that it was going to be necessary to pop balloons to keep the game fun, the question came of which balloons to pop. The popping algorithm has changed many times over the last month and has become significantly more sophisticated as we have learned more about how people are using the app.

As a starting point, when the service first launched we only popped balloons that had 7 replies on them but predictably this became unmanageable very quickly as some less interesting balloons never got replied to and so never actually popped and would hang around forever being caught and abandoned by everyone they met. The population of flying balloons got significantly bigger every day and it was clear that a fixed number of tags was a fatally flawed way to pop balloons.

Over the last month we have tried various methods of choosing which balloons to pop but the method that we implemented last week seems to be working very well and so here is a rough guide on how it works. I guess this is as close to a spoiler as you are ever likely to get with Balloons! so if you would rather believe it is all magic then look away now!
<h3>Solution: Work Out how Interesting a Balloon is!</h3>
So the algorithm of which balloons to pop now works based on an automatically calculated "interestingness" rating (thanks, flickr!) of each balloon. Interestingness is in no way a science and so don't think we are doing anything clever, how interesting your balloon is is based on the following factors:
<ul>
	<li><strong>Distance</strong> - Balloons that cross more continents are more likely to have met a diverse, interesting set of people. If your balloon has travelled further, it is seen to be more interesting.</li>
	<li><strong>Photos</strong> - Everyone loves to look at pictures on balloons. The percentage of tags which include pictures makes a balloon more interesting.</li>
	<li><strong>Words</strong> - Balloons that have one word messages or even one character messages (yes, it happens) are probably less interesting than those that have a fully formed sentence. More words is more interesting (note, not more characters, more words).</li>
	<li><strong>Views</strong> - We count how many times people catch every balloon and then how many times people actually reply. If the ratio of catches to replies is high, people are abandoning your balloon without replying to it more often and so it is probably less interesting.</li>
	<li><strong>Time Since Last Reply</strong> - If your balloon has been in the air for a long time since someone replied to it then the last tag may be something people are finding difficult to reply to and so it loses a few points.</li>
</ul>
Each factor is weighted slightly but I am not going to the specific weightings but we have tweaked them a few times now and they are giving good results right now.

One thing to mention is that this interestingness rating is much less reliable before we have a couple of days worth of data to work with and we also never want to pop a balloon before it has been flying at least a couple of days so any balloon which is less than 2 days old is excluded from ever being popped.

So, how do we actually decide how many balloons to pop every night? We pop a known number of balloons based roughly on the number of balloons launched on the previous day with a modification factor based on whether we want the balloon population to increase or decrease on a day to day basis.

We do not just indiscriminately pop the least interesting balloons though, there is a level of randomness to it so your balloon can still be lucky and get another 24 hours to become more interesting. Generally though, this system means that less interesting balloons get popped first to give the more interesting balloons a chance to fly further.

Another long post! Comments and discussion are very welcome.
