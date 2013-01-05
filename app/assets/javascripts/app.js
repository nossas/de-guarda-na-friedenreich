var initializeSocial = function(){
  // FB share
  (function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.net/en_US/all.js#xfbml=1&appId=301170913317565";
    fjs.parentNode.insertBefore(js, fjs);
  }(document, 'script', 'facebook-jssdk'));

  // Twitter share
  !function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="//platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");

  // Google share
  window.___gcfg = {lang: 'pt-BR'};
  (function() {
    var po = document.createElement('script'); po.type = 'text/javascript'; po.async = true;
    po.src = 'https://apis.google.com/js/plusone.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(po, s);
  })();

}


var initialize = function(){
  $('.phone').inputmask('(99) 9999-9999?9');
  $('*[rel="modal"]').colorbox({inline: true, width: '30%', height: 'auto', arrowKey: false});
  $('*[rel="modal_iframe"]').colorbox({width: '30%', height: '60%', arrowKey: false});

  $('.video img').click(function(){
    location.href = "http://bit.ly/vitoriaemf"
  });

   $("form.new_user").validate({
      rules: {
        "user[name]": "required",
        "user[email]": {
          required: true,
          email: true
        },
        "user[mobile_phone]": "required",
      },
      messages: {
        "user[name]": "Todo herói merece um nome, qual o seu?",
        "user[email]": {
          required: "E se precisarmos entrar em contato? Precisamos do seu email.",
          email: "E se precisarmos entrar em contato? Precisamos de um email válido."
        },
        "user[mobile_phone]": "Caso comecem a demolição da escola vamos precisar entrar em contato com você bem rápido! Seu celular é indispensável."
      }
    });

    $('form.new_fb').validate({
      rules: {
        'user[phone]': 'required'
      },
      messages: {
        "user[phone]": "Caso comecem a demolição da escola vamos precisar entrar em contato com você bem rápido! Seu celular é indispensável.",
      }
    });

}


initialize();
initializeSocial();
