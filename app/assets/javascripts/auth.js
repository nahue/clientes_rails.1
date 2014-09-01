//= require jquery
//= require jquery_ujs
//= require_self

$(document).ready(function(){
    $('input[name="user[login]"]').blur(function(){
        email = $(this).val();
        var query = $.getJSON( "/api/v1/users/" + email, function(data) {
            $('a.nav-brand').html(data.preferencia.titulo);
        });
    });
});