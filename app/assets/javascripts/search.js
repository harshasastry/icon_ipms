jQuery(function()
{
    return $('#organisation').change(function()
   {
      var cities;
      cities = $('#city').html();
   	   $('#city').empty();
       var org, options;
       org = $('#organisation :selected').text();
       options = $(cities).filter("optgroup[label=" + org + "]").html();

		    if (options)
		    {
		      return $('#city').html(options);
		    }
		    else
		    {
		      return $('#city').empty();
		    }
  	});
});

jQuery(function()
{
    return $('#city').change(function() {
     var locations;
     locations = $('#location').html();
       $('#location').empty();
       var cty, options;
       cty = $('#city :selected').text();
       options = $(locations).filter("optgroup[label=" + cty + "]").html();
       console.log("Options: "+options);
        if (options) {
          return $('#location').html(options);
        } else {
          return $('#location').empty();
        }
    });
});

//1
jQuery(function()
{

   	return $('#location').change(function() {
     var units;
     units = $('#unit').html();
   	   $('#unit').empty();
       var loc, options;
       loc = $('#location :selected').text();
       options = $(units).filter("optgroup[label=" + loc + "]").html();
       console.log("Options: "+options);
        if (options) {
          return $('#unit').html(options);
        } else {
          return $('#unit').empty();
        }
    });
});

//2
jQuery(function()
{
   	return $('#unit').change(function() {
     var towers;
     towers = $('#tower').html();

   	   $('#tower').empty();
       var unt, options;
       unt = $('#unit :selected').text();
       escaped_unt= unt.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1');
       options = $(towers).filter("optgroup[label=" + escaped_unt + "]").html();
       console.log("Options: "+options);
        if (options) {
          return $('#tower').html(options);
        } else {
          return $('#tower').empty();
        }
    });
});

//3
jQuery(function()
{
   	return $('#tower').change(function() {
     var floors;
     floors = $('#floor').html();
   	   $('#floor').empty();
       var twr, options;
       twr = $('#tower :selected').text();
       escaped_twr= twr.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1');
       options = $(floors).filter("optgroup[label=" + escaped_twr + "]").html();
       console.log("Options: "+options);
        if (options) {
          return $('#floor').html(options);
        } else {
          return $('#floor').empty();
        }
    });
});
