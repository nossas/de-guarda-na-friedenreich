// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require ./lib/jquery.inputmask
//= require_tree ./lib
//= require_tree .

$(function(){
  $("form.new_user").validate({
    rules: {
    "user[name]": "required",
    "user[email]": {
      required: true,
      email: true
    },
    "user[mobile_phone]": "required",
    "user[file]": "required"
  },
  messages: {
     "user[name]": "Todo herói merece um nome, qual o seu?",
     "user[email]": {
       required: "E se precisarmos entrar em contato? Precisamos do seu email.",
       email: "E se precisarmos entrar em contato? Precisamos de um email válido."
     },
     "user[mobile_phone]": "Caso comecem a demolição da escola vamos precisar entrar em contato com você bem rápido! Seu celular é indispensável.",
     "user[file]": "Temos certeza que você ficará bem em nosso mural, por favor escolha uma foto."
   }
  });
});
