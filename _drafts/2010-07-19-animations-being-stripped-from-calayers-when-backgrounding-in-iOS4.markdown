--- 
layout: post
title: Animations being stripped from CALayers when backhrounding in iOS4
author: @daveverwer
excerpt: Blah.
---
So recently while I was upgrading [Balloons!][1] for iOS4 and fast app switching I came across a problem where 

{% highlight objc %}
// Add a rotation animation which will be removed on completion
CABasicAnimation *rotation = [CABasicAnimation animationWithKeyPath:@"transform.rotation"];
rotation.byValue = [NSNumber numberWithDouble:M_PI*2];
rotation.repeatCount = CGFLOAT_MAX;
rotation.autoreverses = YES;
rotation.duration = 2;
[self.layer addAnimation:rotation forKey:@"rotation"];
{% endhighlight %}

This problem also exists when using UIView animations which repeat but I do not know if there is a solution in that situation as there is no equivalent to the removedOnCompletion property for UIView animation blocks. If you find a solution, please do let me know.

[1]: http://balloonsapp.com