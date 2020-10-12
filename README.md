# WildAid O-FISH Documentation
  
The [WildAid Marine Program](https://marine.wildaid.org/) works to protect vulnerable marine environments.

O-FISH (Officer Fishery Information Sharing Hub) is a multi-platform application that enables officers to browse and record boarding report data from their mobile devices.

Developers are expected to follow the <A HREF="https://www.mongodb.com/community-code-of-conduct">MongoDB Community Code of Conduct</A> guidelines.

This repo contains the documentation for end users and developers of all the O-FISH applications and codebases: [iOS](https://github.com/WildAid/o-fish-ios), [Android](https://github.com/WildAid/o-fish-android), [Web](https://github.com/WildAid/o-fish-web) and [Realm](https://github.com/WildAid/o-fish-realm). The documentation itself lives at [https://wildaid.github.io](https://wildaid.github.io).

## Prerequisites

This is a Github Pages site that uses Jekyll. You will need to [install Jekyll](https://jekyllrb.com/docs/installation/).

## Building and testing the documentation

To build the documentation locally, navigate to the publishing source (where this README is) and run:
`bundle exec jekyll serve`<BR>

You can see the local site at:<BR>
http://localhost:4000<BR>

To test that all links work, and all images have alt-tags, and similar issues - run this from the top-level directory (where this README file is):<BR>
`./script/test_images_links.sh` <BR><BR>
## Style guide

The style guide includes notes on accessibility, and can be seen in the [style](https://wildaid.github.io/style) directory.
