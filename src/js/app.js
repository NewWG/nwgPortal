(function() {
	var main = new Main();

	function Main() {
		// global vars

		// init
		this.init = function() {
		   this.binds();

		   //this.hash.call(this);
		}

		// binds
		this.binds = function() {
			$('.menu .menu-item').on('click', this.handlerNavbar.bind(this));
			$(window).on('hashchange', this.hash.bind(this));
			$(window).on('scroll', this.animateByScroll.bind(this));
			$('.team-item').on('mouseenter', this.handlerTeamMember.bind(this));
			$('.team-item').on('mouseleave', this.handlerTeamMember.bind(this));
			$('.form-email .button-white').on('click', this.handlerSendEamil.bind(this));
		}

		// functions
		this.handlerNavbar = function(event) {
			var target = $(event.currentTarget);
			var id = target.attr('id');

			$('html,body').animate({
		        scrollTop: $('.'+id).offset().top},
		        'slow');
		}

		this.hash = function() {
			var hash = window.location.hash.replace('#', '');

			$('html,body').animate({
		        scrollTop: $('.'+hash).offset().top},
		        'slow');
		}

		this.handlerTeamMember = function(event) {
			var target = $(event.currentTarget);

			switch (event.type) {
				case 'mouseenter':
					TweenMax.to(target.find('.description'), .5, {css: {height: '40%'}, ease: Quint.ease});
					break;
				case 'mouseleave':
					TweenMax.to(target.find('.description'), .5, {css: {height: '0%'}, ease: Quint.ease});
					break;
			}
		}

		this.animateByScroll = function(event) {
			var top = $(window).scrollTop();

			var about = $('.about').position().top - 200;
			var services = $('.services').position().top - 200;
			var team = $('.team').position().top - 200;
			var contact = $('.contact').position().top - 200;

			if (top >= about && top < services) {
				//console.log('about');
				$('.about').addClass('normal-animaton');

			} else if (top >= services && top < team) {
				//console.log('services');
				$('.services').addClass('start-animaton');
			} else if(top >= team && top < contact) {
				//console.log('team');
				$('.team').addClass('start-animaton');
			} else if (top >= contact) {
				//console.log('contact');
				$('.contact').addClass('start-animaton');
			}
		}

		this.handlerSendEamil = function() {
			var field = $('.form-email .ipt-text');

			/*for (var i = 0; i < field.length; i++) {
				if ($(field[i]).val() == "") {
					$(field[i]).addClass('error');
				} else {
					$(field[i]).removeClass('error');
				}
			}

			if ($('.ipt-text').hasClass('error')) return false;*/

			var email = {
				name: $('#name').val(),
				email: $('#email').val(),
				message: $('#message').val()
			}

			console.log(email);

			$.ajax({
		     	url: 'api/send-email.php',
		     	type: 'POST',
		     	dataType: 'JSON',
		     	data: email,
		     	success: function(data) {
		     		//var data = JSON.parse(data);
		     		console.log(data);
		     		console.log('teste');
				}
		 	});
		}

		this.init.call(this);
	}
})();