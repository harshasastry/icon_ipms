jQuery(function()
{
    return $('#organisation').change(function()
    {
        var cities;
        var org, options;
        cities = $('#city').html();
        console.log("cities = " +cities);
        //$('#city').empty();
        options = '<option value="">Select City</option>';
        org = $('#organisation :selected').text();
        escaped_org= org.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1');
        options = options + $(cities).filter("optgroup[label=" + escaped_org + "]").html();
        console.log("options = " +options);
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
    return $('#city').change(function()
    {
        var locations;
        locations = $('#location').html();
        //$('#location').empty();
        var cty, options;
        options = '<option value="">Select Location</option>';
        cty = $('#city :selected').text();
        escaped_cty= cty.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1');
        options = options + $(locations).filter("optgroup[label=" + escaped_cty + "]").html();
        console.log("Options: "+options);
        if (options)
        {
            return $('#location').html(options);
        }
        else
        {
            return $('#location').empty();
        }
    });
});

//1
jQuery(function()
{

   	return $('#location').change(function()
    {
        var units;
        units = $('#unit').html();
   	    //$('#unit').empty();
        var loc, options;
        options = '<option value="">Select Unit</option>';
        loc = $('#location :selected').text();
        escaped_loc= loc.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1');
        options = options + $(units).filter("optgroup[label=" + escaped_loc + "]").html();
        console.log("Options: "+options);
        if (options)
        {
            return $('#unit').html(options);
        }
        else
        {
            return $('#unit').empty();
        }
    });
});

//2
jQuery(function()
{
   	return $('#unit').change(function()
    {
        var towers;
        towers = $('#tower').html();
     	  //$('#tower').empty();
        var unt, options;
        options = '<option value="">Select Tower</option>';
        unt = $('#unit :selected').text();
        escaped_unt= unt.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1');
        options = options + $(towers).filter("optgroup[label=" + escaped_unt + "]").html();
        console.log("Options: "+options);
        if (options)
        {
            return $('#tower').html(options);
        }
        else
        {
            return $('#tower').empty();
        }
    });
});

//3
jQuery(function()
{
   	return $('#tower').change(function()
    {
        var floors;
        floors = $('#floor').html();
   	    //$('#floor').empty();
        var twr, options;
        options = '<option value="">Select Floor</option>';
        twr = $('#tower :selected').text();
        escaped_twr= twr.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1');
        options = options + $(floors).filter("optgroup[label=" + escaped_twr + "]").html();
        console.log("Options: "+options);
        if (options)
        {
            return $('#floor').html(options);
        }
        else
        {
            return $('#floor').empty();
        }
    });
});
