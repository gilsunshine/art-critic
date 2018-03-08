// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready(function() {
  $('#form_shake')
    .transition('shake');
});

// $(document).on('turbolinks:load', function() {
//     var max_fields = 10;
//     var wrapper = $(".input_fields_wrap"); //Fields wrapper
//     var add_button = $(".add_field_button"); //Add button ID
//
//     var x = 1; //initlal text box count
//     $(add_button).click(function(e){ //on add input button click
//         e.preventDefault();
//         if(x < max_fields){ //max input box allowed
//             x++; //text box increment
//             $(wrapper).append('<div><input type="text" name="mytext[]"/><a href="#" class="remove_field">Remove</a></div>'); //add input box
//         }
//     });
//
//     $(wrapper).on("click",".remove_field", function(e){ //user click on remove text
//         e.preventDefault(); $(this).parent('div').remove(); x--;
//     })
// });
