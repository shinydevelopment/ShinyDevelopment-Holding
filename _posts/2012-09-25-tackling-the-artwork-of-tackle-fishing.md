---
layout: post
title: Tackling the Artwork of Tackle Fishing
author: Andy Cook
excerpt: Perhaps the greatest benefit of working on a new platform is the opportunity to innovate. Sometimes on a grand scale and other times more modestly. So, how do you take a basic idea and give it something extra, putting a twist on it so the result is just a little bit unexpected and original? That was my task with the Artwork for our latest iOS project, Tackle Fishing.
---

![Tackle Fishing River Cross Section](http://shinydev.s3.amazonaws.com/blog-files/tackle-fishing-1-thin-cross-section.png)

Perhaps the greatest benefit of working on a new platform is the opportunity to innovate. Sometimes on a grand scale and other times more modestly. So, how do you take a basic idea and give it something extra, putting a twist on it so the result is just a little bit unexpected and original? That was my task with the Artwork for our latest iOS project, [Tackle Fishing](http://itunes.apple.com/gb/app/tackle-fishing-catch-more/id533818581?mt=8).

None of us here at Shiny are fishing experts so we teamed up with local expert Chris Mayer who provided us with an amazing amount of fishing knowledge for us to put into the app. It turns out you need different setups to fish in different parts of the water and the app would show what equipment and setup was needed for different fishing situations. Three fishing locations would be featured along with their associated 'rigs'. These are the various bits needed at the business end of a fishing rod - the hook, line, bait, weights and float.

So, how to present this information? Pages of dry text clearly wouldn't be making best use of the iOS platform. No, our app would use illustrations to show rather than tell. There would be a horizontal scrolling cross section of each of the three locations; River, Lake and Canal and vertical screens showing the rigs.

The bare bones of the app had been finished before I started on the project so the only illustrations present were simple, placeholder graphics lovingly referred to as 'programmer art'.

![Original Programmer Art](http://shinydev.s3.amazonaws.com/blog-files/tackle-fishing-2-original-cross-section.png)

The moment I saw the cross section scrolling horizontally back and forth, it occurred to me that if we could have multiple layers in the illustration moving at different speeds, we'd get what's called a parallax 3D effect. If you're not sure what that is, just think of the scenery as you drive along - the close objects whizz by faster than the distant ones. That's parallax movement.

<iframe width="500" height="719" src="http://www.youtube.com/embed/IsPfdl-hf74?rel=0&amp;vq=hd720" frameborder="0" allowfullscreen></iframe>

A 2D picture would show the information almost as well. If we could get that depth effect though, it would instantly add visual interest, transforming a flat, lifeless picture into something unique to an electronic platform.

### Style
I had a largely free hand to come up with a style for the graphics, which is great but I've learned through the years that the parameters and aims of a task can be very helpful. Far from stifling creativity, I've come to welcome them, to the point that, when there are no parameters to work within, I often come up with my own as I find it gives me a direction to head in.

As it happened, the reference I was given pointed the way. As well as sketches and written content provided by Chris Mayer, he'd also provided a few reference pictures from some recent fishing magazines. Looking at them, I was immediately transported to the Dentist. The pictures seemed to be taken from dusty old seventies magazines - very old fashioned - but these were the style contemporary books and magazines were using. This instantly pointed me in the opposite direction. I wanted our app to look fresh and modern, not something Time Team had unearthed while waiting for a filling (or should that be a crown?).

Any number of styles would fulfil that requirement but one I immediately ruled out was 'realistic'. It's a very narrow artistic target to aim for and also time consuming to create so I preferred a more stylised approach, something almost cartoony. With that as the aim, I was reminded of the Disney film Sleeping Beauty. It has this distinct mix of realistic and almost abstract, especially in the backgrounds, which I thought would be interesting.

### Reference
Reference is often underestimated. In my experience, the better the reference, the better the final artwork. It's never a case of copying something directly, you're soaking yourself in a certain aspect (a particular style, how an object looks and so on), letting it all melt together in your head, eventually coming out as a unique but detailed and accurate representation of that thing.

Googling frame grabs from Sleeping Beauty confirmed it was roughly the style I wanted to aim for. The next step was to mockup a rough version. For this, I used Photoshop. Although I was leaning toward Illustrator to produce the final work, Photoshop allows me to be more spontaneous and experimental. Doing anything in Illustrator requires a plan.

![Artwork Style Test](http://shinydev.s3.amazonaws.com/blog-files/tackle-fishing-3-style-test.png)

I took the reference material, cut bits out, pulled and pushed them as necessary before sticking them together. This gives a suggestion of the style I had in mind. Note the simplified green banking, cartoony trees and textured mud. I also added suggestions of plant life and bubbles in the water. I didn't think they looked great in this form but suggested the sort of details I had in mind.

This, along with a bit of explanation and some pointing at the reference, is how I presented the planned style to the team. Although there's little detail in the mockup, it seemed to be enough to put the idea across and I got the go ahead.

### Choose your Weapons
I decided to produce the final graphics using Adobe Illustrator. This was largely because I thought it would lend itself to making the bright, colourful look I was going for. I also wanted to get more familiar with the software as I'd only really used it a small amount in the past.

I'd previously used a much older version of the software, not a lot but just enough to get over that initial hatred most people have when they first try it. There're few experiences in the world as frustrating as getting to grips with making and editing a spline in Illustrator. Just something as fundamental as selecting and moving a point is enough to cause Buddhist monks to seethe with rage and boot their computer down the mountain. However, I had a brand new copy of the latest version of Illustrator (CS 5.1 - CS6 was released around the time the project was wrapping up) and I wanted to see what improvements had been made.

### Creating the River Cross Section
The starting point for this was the sketch our fishing expert, Chris Mayer, produced showing the details needed in the illustration.

![Chris Meyer Sketch](http://shinydev.s3.amazonaws.com/blog-files/tackle-fishing-4-chris-meyer-sketch.png)

I took this sketch into Illustrator and started by tracing the cross section of the river bed. I extended the muddy area to roughly match the shape in the sketch, added a couple of boxes, filled them with colour gradients and had the start of the sky and water.

#### River Cross Section - Stage 1

![Work in Progress 1](http://shinydev.s3.amazonaws.com/blog-files/tackle-fishing-5-wip-v1.png)

I was concerned about the water as this was the main focus and wanted it to look interesting and have depth (I mean in the 'Z' direction i.e. into the screen as opposed to the up/down 'Y' direction). At this stage I didn't really know how I'd do that but had a vague notion of the multiple layers being semi transparent with various types of flotsam and jetsam to add detail. I hoped that by fading the detail from the more distant layers, a sense of depth would be created. The two odd curvy shapes seen in the water here are the first steps in that direction.

Before showing the team my progress, I wanted to add some detail to give a hint of how the finished version would look so I concentrated on the left bank, adding stones to the mud (another large area that was in need of detail), tufts and rocks to the grass plus some highly stylised trees.

![Detail of Left Bank](http://shinydev.s3.amazonaws.com/blog-files/tackle-fishing-6-detail-of-left-bank.png)

The trees are a good example of the benefit of choosing a stylised approach as opposed to a realistic one. I created the tree in a matter of minutes, maybe half an hour. First I drew (if that's the right term for making a spline) the trunk and branches then added a circle filled with flat green to represent a large clump of leaves. Then I added a leaf shape and it was simply a matter of copying the leaves, adding them to the clump, grouping that, then duplicating the clumps all around the tree. I dread to think how long it would have taken to make a realistic tree in Illustrator - I might still be working on it.

I couldn't resist trying a quick and dirty effect to hint at the more distant layers. I copied the tree a couple of times, shrunk them to appear further away and reduced their opacity. Making them less opaque was very quick to do but not usable in the long term as you'll see later. I also added various other bits of detail such as bubbles, stones and plants on the river bed. This was to suggest detail to come.

It seems funny now but when I originally showed this first 'work in progress' image to the team, I felt the need to point out it wasn't finished yet.

#### River Cross Section - Stage 2

![Work in Progress 2](http://shinydev.s3.amazonaws.com/blog-files/tackle-fishing-7-wip-v2.png)

All this time, I was aware I needed to make the three fishing locations visually different and one of the ideas I had to differentiate them was to have the fisherman in this location on a wooden jetty. So, I added the Jetty complete with barnacles on the underwater parts of the posts. I always meant to check whether barnacles actually live in rivers but never got around to it.

![Close up of Jetty](http://shinydev.s3.amazonaws.com/blog-files/tackle-fishing-8-close-up-of-jetty.png)

I worked on the water mainly to satisfy myself that I would be able to make it visually interesting enough. I started to throw in everything I could think of that you might see in water; flotsam, vague distant shapes, bubbles, gradients… only a supreme effort of will stopped me adding a supermarket trolley, old bicycle or the vague silhouette of a Great White Shark in the distance.

I was most pleased with the shafts of light. Not only were they reasonably realistic but it gave me something else I could plaster all through the water (albeit quite subtly) to break up the flat colour and help the depth effect. The shafts were made from a rectangle slanted over to the appropriate angle and filled with a gradient that was transparent on either side with opaque white in the middle. The whole object's opacity was dialled down until it looked correct, then copied across the water and on multiple layers. Although there was more work to do, by this stage I was confident that the water should end up looking pretty good.

You'll notice the surface of the water now has waves on it. I stumbled on an effect in Illustrator called 'Zig Zag' to do it automatically. At this stage the waves are very uniform and somewhat mechanical but I still thought that, if I couldn't do anything better, these waves wouldn't look too out of place given the stylised nature of the illustration.

I copied the banks and added them as distant layers but you can start to see the problem with simply reducing their opacity to get a faded, distant effect. Look closely at the trees and you can see one showing through the other - not great. I'd have to find a better way of getting the same effect.

![Transparent Tree](http://shinydev.s3.amazonaws.com/blog-files/tackle-fishing-9-transparent-tree.png)

#### River Cross Section - Stage 3

![Work in Progress 3](http://shinydev.s3.amazonaws.com/blog-files/tackle-fishing-10-wip-v3.png)

I wasn't sure what I'd do with the sky. After all the trouble I was taking with the water and mud, I certainly didn't want the sky to be a boring blue gradient. I had to add some detail. To make the clouds, I added an oval, filled it with a gradient from white to transparent and used an effect called 'Roughen'. This allowed me to randomise the edges of the shape giving the effect you see above. Copy the cloud, alter the settings of the effect slightly and you get a second, different cloud very quickly.

I also added some circles with the same gradient fill as the clouds but with it set to radial rather than linear. After reducing their opacity right down it added a slight haze on the horizon (I saw the effect when out and about one lunchtime - more great reference). To top it off I added a tiny aeroplane with vapour trails. I also considered adding a hot air balloon but thought that would probably be one detail too many.

![Close up of a Plane](http://shinydev.s3.amazonaws.com/blog-files/tackle-fishing-11-close-up-of-plane.png)

The mud was a big opaque area that needed enough detail to avoid looking flat and lifeless. As with the water, I tried to think of what I could throw in. There wasn't much as it turned out; stones, colour variation and bands suggesting strata. But, luckily, it turned out to be enough. Being dark also helps a lot.

I also used the Roughen effect from the clouds and added it to the water to give more naturalistic waves.

### Adding the figures
Chris Mayer's original sketch showed a fisherman and, wanting to encourage people of all ages to use the app, we had him accompanied by a child. After collecting some suitable reference and sketching a few poses, I settled on showing the man sitting cross legged with the boy standing next to him. I toyed with various other combinations but figured the scenario was a Dad showing his son how to fish. I find it useful to have some sort of scenario to base a decision on, as trivial as it is, if for no other reason than to be able to justify it if needed.

The trickiest thing about designing the figures was deciding what expression to give them. They shouldn't look miserable but they also couldn't have big, daft grins on their faces as they'd look very odd, frozen in that state. Eventually, I settled on a bit of a subtle smirk. No doubt Leonardo da Vinci must have gone through a similar process when he was painting the Mona Lisa, “Lose the stupid grin love. You look like a nutter.”

Incidentally, I sketched the figures directly into Photoshop using my Wacom tablet. I tend to produce quick thumbnail sketches with a fine technical style pen on paper. Once the ideas are pinned down though, it's more efficient to draw digitally with all the benefits that undo, cut, paste and scale brings. Again, just like Leonardo… more or less.

![Fisherman Sketch](http://shinydev.s3.amazonaws.com/blog-files/tackle-fishing-12-fisherman-sketch.png)

I knocked up the above illustration to show the team. Any changes would be best done at this sketching stage rather than after having spent days in Illustrator. As it turned out, everyone seemed to like the figures and I was able to crack on.

![Finished Figures](http://shinydev.s3.amazonaws.com/blog-files/tackle-fishing-13-finished-figures.png)

Making the figures didn't cause many problems but, some time later, when working on the other cross sections, I noticed that if I tried to move the fisherman, Illustrator would instantly crash. I assume this was somehow related to how complex the file ended up (the .ai file was 16.4 Mb for the river). In the end, I moved everything else but the fisherman when I needed him in a different location - crude but effective.

I split the two figures over separate layers to get some parallax movement between them. I also split the fishing equipment to accentuate the effect.

![Fishing Stuff](http://shinydev.s3.amazonaws.com/blog-files/tackle-fishing-14-fishing-stuff.png)

### Fishy goings on
Fish were the last main element added. The problem was that I needed several different fish for each species, all in different poses. Making them in Illustrator would take forever so I had to come up with a better way. I decided to make them as 3D textured models. They were simple(ish) shapes that would be seen at a distance so the model needn't be very detailed. It would then be easy to render them at various angles giving me dozens of different fish for a minimal amount of work.

This turned out to be one of my better decisions and I was able to produce all the fish in just a few days. It was simply a matter of loading the resulting files into Illustrator and adding them in a pleasing arrangement. I was also keen to sprinkle a few on the distant layers to give each shoal some depth.

![Fish Wireframe](http://shinydev.s3.amazonaws.com/blog-files/tackle-fishing-15-fish-wireframe.png)

![Fish Shaded](http://shinydev.s3.amazonaws.com/blog-files/tackle-fishing-16-fish-shaded.png)

![Fish Textured](http://shinydev.s3.amazonaws.com/blog-files/tackle-fishing-17-fish-textured.png)

The texture was slapped on very quickly so is pretty bad but good enough for the size they'll be seen at.

### Polishing it off
![Work in Progress 4](http://shinydev.s3.amazonaws.com/blog-files/tackle-fishing-18-wip-v4.png)

With the figures and fish added, I was nearly done.

One of the last things I did was fix the transparency in the distant trees and bushes. I needed a way to fade the colour out to simulate the real world atmospheric effect that reduces the contrast in distant objects. What I ended up doing was to add a white square and 'mask' it using the tree group (so that it gets cut into the identical shape). The result was a white copy of the tree on top of the colour version. Then it was simply a matter of turning the opacity of the white object down until the colours of the underlying tree looked suitably muted. Do that to the bush (which was just some green clumps from the tree grouped together), copy and adjust them a dozen or so times and that was the distant objects done.

I also had to weed out many of the river plants based on advice from Chris as they conflicted with reality. Visually, this was a shame as the plants added interest but it was important to make it accurate.

So, that was it. One of the team later suggested a surprising detail for the mud (see if you can spot it in the finished app) but, visually, the River was done.

Well, except for one minor thing. Taking the illustration and splitting it into layers for the parallax effect was a task in itself. Due to the way the parallax movement works, I had to amend the picture so each layer was a different width. The front layer stayed the same but those 'behind' had to be progressively less wide. The narrower they were, the slower they'd seem to move when scrolled in the app. It was important to get that width right as it also affected how far away they'd appear to be.

I initially made some rough test layers so it could be coded. The programmers are the best people to describe that process but apparently it involved the use of a calculator. Yes, it was that tricky.

Once I had a version of the app with the parallax functionality, I was able to see the layers in action, make changes, try them again, tweak it further and so on until, finally, it was moving as I originally imagined it. Once I had the widths and placement of the objects figured out in the rough versions, I made those changes in Illustrator, exported the layers, shrunk them to the final size in Photoshop and added them to the app.

![Layers](http://shinydev.s3.amazonaws.com/blog-files/tackle-fishing-19-layers.png)

The parallax movement makes a big impact for comparatively little extra work and I have to say, I was very happy with it. The water especially has a life and depth that it wouldn't otherwise have had.

### Are we nearly there yet?
So that was the River cross section finished. Just the Canal and Lake cross sections to do now. And all the rigs. And the menus. And the App Icon. I wasn't there yet.

Tackle Fishing was released in June. It's [available now on the App Store](http://itunes.apple.com/gb/app/tackle-fishing-catch-more/id533818581?mt=8). To find out more, [visit the app's website](http://tacklefishingapp.com/).
