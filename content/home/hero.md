+++
# Hero widget.
widget = "hero"
active = true
date = 2017-10-15

title = "Plants, water and data. "

# Order that this section will appear in.
weight = 1

# Overlay a color or image (optional).
#   Deactivate an option by commenting out the line, prefixing it with `#`.
[header]
  overlay_color = "#4dd2ff"  # An HTML color value.
  overlay_img = "headers/lake.jpg"  # Image path relative to your `static/img/` folder.
  overlay_filter = 0.1  # Darken the image. Value in range 0-1.

# Call to action button (optional).
#   Activate the button by specifying a URL and button label below.
#   Deactivate by commenting out parameters, prefixing lines with `#`.
[cta]
  url = "./#contact"
  label = '<i class="fa fa-message"></i> Contact me! '
+++

<br><br><br><br>
<font color="white">
<large>Personal website with updates and infos. <br> Also a place for thoughts and ideas. 
</large>
<br><br>
<small>
</font>
<i>
Please get in touch to share any of yours or comment on mine.
</i>
</small>




# <script type="text/javascript">
#   (function defer() {
#     if (window.jQuery) {
#       jQuery(document).ready(function(){
#         GetLatestReleaseInfo();
#       });
#     } else {
#       setTimeout(function() { defer() }, 50);
#     }
#   })();  
#   function GetLatestReleaseInfo() {
#     $.getJSON('https://api.github.com/repos/gcushen/hugo-academic/tags').done(function (json) {
#       let release = json[0];
#       // let downloadURL = release.zipball_url;
#       $('#academic-release').text('Latest release ' + release.name);  
#     });    
# }  
# </script>
