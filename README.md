# AST Research 1998 Website
This repository contains the source code for a major computer manufacturer's website as it existed in 1998.  The code is dated and not well written for the era, but it was a successful website at the time and it is preserved here for historical purposes.

This website was built by a small team and reflects many of the flaws of website development during the Web 1.0 era.  Among its engineering flaws:
* The website relied on firewalls and content blockers for security.
* Connection strings were baked into the code.
* Without a standard version control repository, there were lots of poorly versioned libraries in place.
* Maintenance content was stored in raw HTML files, which often had nonstandard fonts and layouts.
* The website, if it still existed, would have been vulnerable to SQL injection attacks.

# Navigating this repository

This repository contains three projects:
* [cpanel](https://github.com/tspence/ast-research-website-historical/tree/main/cpanel) - This is the Java control panel applet we built that featured dynamic animation, a novel feature for the era.
* [channel](https://github.com/tspence/ast-research-website-historical/tree/main/channel) - Resources from the AST Ovation reseller channel website, a precursor site that used many of the same techniques.
* [www](https://github.com/tspence/ast-research-website-historical/tree/main/WWW) - The main AST website and its content.
