--- 
layout: post
title: Over The Air iOS Provisioning and Distribution
author: Dave Verwer
excerpt: I have been asked several times recently about iOS Ad Hoc distribution and specifically about over the air deployment of ad hoc builds without the need for an enterprise deployment certificate, or use of a third party service, or for those of you who just want to know more about the process so I thought I would write up a little step by step of how to do it!
---
**Note:** This article is an explanation of how to do over the air deployment of an ad hoc iOS application build manually using a self-hosted web server. If self-hosting of the ad hoc files is not a requirement then I would recommend using a third party service such as [Test Flight](http://testflightapp.com) or a possibly a self hosted, fully managed solution like [Hockey](http://www.hockeyapp.net/).

I have been asked several times recently about iOS Ad Hoc distribution and specifically about over the air deployment of ad hoc builds without the need for an enterprise deployment certificate, or use of a third party service, or for those of you who just want to know more about the process so I thought I would write up a little step by step of how to do it!

### Creating a Distribution Build
So you are ready to deploy to your beta testers! Congratulations! The first thing to do is create a distribution build configuration in Xcode. In your project settings, duplicate the Release configuration profile and name it Distribution.

![Build Configurations in Xcode 4](http://shinydev.s3.amazonaws.com/blog-files/over-the-air-deployment-build-configurations.png)

If you used Xcode to configure your development machine you should already have both a development and deployment certificate installed in your keychain, looking something like this. If you don't then you will need to make sure you have a matching private key for both the development and distribution certificates.

![Certificates in Keychain Access](http://shinydev.s3.amazonaws.com/blog-files/over-the-air-deployment-certificates.png)

Next switch back to Xcode and navigate to the build settings for the project and find the Code Signing section. Switch the Code Signing Identity for the Distribution build configuration to iPhone Distribution (which should then say (currently matches '...') if you have your keychain in order!

![Code Signing Settings in Xcode 4](http://shinydev.s3.amazonaws.com/blog-files/over-the-air-deployment-code-signing-settings.png)

To actually create the build we are going to use the automatic build and archiving feature built in to Xcode, however the default configuration an archive build is the Release build configuration. To change the default to our new Distribution configuration, select the Edit Scheme... menu option from the Xcode 4 Product menu and change the Build Configuration setting for the Archive task to Distribution.

![Edit Scheme settings for Archive Build](http://shinydev.s3.amazonaws.com/blog-files/over-the-air-deployment-edit-scheme-archive.png)

Finally, select the Archive menu option from the Xcode 4 Product menu and a fresh build of your application will be created and archived. The Xcode organiser should be shown with the archive selected.

Congratulations, you now have a distribution build ready to deploy!

### Preparing for Deployment

Before we get to deployment we need to make sure that the developer portal has all of the unique device identifiers (UDID) registered for the devices we want to test on and also has an ad hoc provisioning profile created containing all of those devices.

Log in to the developer portal and add all of the device identifiers to the Devices section and then move to the Provisioning section, select the Distribution tab and click the New Profile button.

![Creating an Ad-Hoc Provisioning Profile](http://shinydev.s3.amazonaws.com/blog-files/over-the-air-deployment-ad-hoc-provisioning-profile.png)

Select an Ad Hoc build, pick the application identifier (or use a wild card identifier) and select all of the UDIDs that you would like this build to work with.

Download the Ad Hoc provisioning profile and double click it to add it to Xcode.

### Deploying the Build

To actually deploy the application the first thing we need to do is prepare an .ipa file containing both our built application and also an embedded mobile provisioning file.

Select your created build archive from the Xcode Organizer and click the Share... button. Select the iOS App Store Package (.ipa) option, choose the Ad Hoc provisioning profile from the drop down and click Next.

![Xcode 4 Sharing Options for an Ad Hoc Build](http://shinydev.s3.amazonaws.com/blog-files/over-the-air-deployment-sharing-options.png)

On the next screen, choose a filename for your ipa archive, tick  the Save for Enterprise Distribution option and fill in the necessary information.

**Note:** It is important to specify the correct final location of the .ipa file in this sheet so be sure to know the upload location before doing this.

Once you hit the Save button, both the .ipa file and also a .plist manifest will be saved to disk. Upload both files to the same directory on your web server.

![Xcode 4 Enterprise Deployment Options](http://shinydev.s3.amazonaws.com/blog-files/over-the-air-deployment-enterprise-distribution-options.png)

The last step is to link to the plist file that was just created. On the web site you would like to distribute from, link to the plist file with the following format link:

    itms-services://?action=download-manifest&url=http://example.com/Application.plist

That's it! This may seem complicated and long winded at first but hopefully the convenience of wireless distribution will make it worth while.

If you have any questions about this the best way to get hold of me is on Twitter at [@daveverwer](http://twitter.com/daveverwer).