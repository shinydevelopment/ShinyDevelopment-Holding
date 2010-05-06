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
    
    
    // initialise Superfish 
    $("ul.nav").superfish(); 
    
	
});