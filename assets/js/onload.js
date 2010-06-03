/*============================================================

Author: Simon Young
http://simonyoung.net
http://twitter.com/simon180

ONLOAD.JS 
Site specific JavaScript functionality

(c) Simon Young, 2010. All rights reserved.

============================================================*/

$(document).ready(function () {
	
	// make links with rel=external open in new window/tab
	$(function() {
        $('a[rel*=external]').click( function() {
            window.open(this.href);
            return false;
        });
    });
    
    //activate the video
    $(function() {
        $('#play-video').click( function() {
            $('#screencast-speakapedia video').css('right','0');
            $('#play-video').hide();
            video.play();
        });
    });
    
    //$("a#video-link").fancybox();
    Shadowbox.init({
        autoplayMovies: true,
        overlayOpacity: "0.6" 
    });
    
    // initialise Superfish 
    $("ul.nav").superfish();
    
});