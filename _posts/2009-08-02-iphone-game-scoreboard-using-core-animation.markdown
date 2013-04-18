--- 
layout: post
title: iPhone Game Scoreboard using Core Animation
author: Dave Verwer
excerpt: I have been helping out recently with a project running between <a href="http://www.uclan.ac.uk/">UCLAN</a> and <a href="http://www.lancs.ac.uk/">Lancaster University</a> which involves two teams of students working together to create a couple of iPhone games.
---
I have been helping out recently with a project running between <a href="http://www.uclan.ac.uk/">UCLAN</a> and <a href="http://www.lancs.ac.uk/">Lancaster University</a> which involves two teams of students working together to create a couple of iPhone games.

Last week one of the teams raised a question about how to create a rolling score board and we worked through a couple of ideas with some sample code but did not implement it fully. The idea stuck in my mind all week though and so in a little free time this morning I felt inspired to knock something together around it and this is what dropped out of Xcode at the end of it.

<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" width="480" height="385" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0"><param name="allowFullScreen" value="true" /><param name="allowscriptaccess" value="always" /><param name="src" value="http://www.youtube.com/v/1Xfapl0pa94&amp;hl=en&amp;fs=1&amp;rel=0" /><param name="allowfullscreen" value="true" /><embed type="application/x-shockwave-flash" width="480" height="385" src="http://www.youtube.com/v/1Xfapl0pa94&amp;hl=en&amp;fs=1&amp;rel=0" allowscriptaccess="always" allowfullscreen="true"></embed></object>

It has been implemented as a simple CALayer subclass that takes care of all of the management of the internal layers and animations and exposes a very simple interface to set the score value.

The images must be named 0.png through 9.png and included in the resources bundle but as long as you do that it should cope with any sized images as long as they are all the same size. The code can be found <a href="http://github.com/daveverwer/SDScoreBoard">on github</a>.

<strong>UPDATE:</strong> Thanks to <a href="http://johnmckerrell.com/">John McKerrell</a> for the suggestion that to give a little more realism, digits should transition in from the bottom coming from a lower number and in from the top from a higher number. This needed a bit of a hack around the 0/9 boundary but I think the outcome is pretty good. This is how it looks.

<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" width="480" height="385" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0"><param name="allowFullScreen" value="true" /><param name="allowscriptaccess" value="always" /><param name="src" value="http://www.youtube.com/v/kXvYgoL1Gbo&amp;hl=en&amp;fs=1&amp;rel=0" /><param name="allowfullscreen" value="true" /><embed type="application/x-shockwave-flash" width="480" height="385" src="http://www.youtube.com/v/kXvYgoL1Gbo&amp;hl=en&amp;fs=1&amp;rel=0" allowscriptaccess="always" allowfullscreen="true"></embed></object>

This was also a nice break from writing code on large projects, I have been really slacking on writing any code that isn't going into a shipping codebase recently and so this was a very refreshing little break from the grind.
