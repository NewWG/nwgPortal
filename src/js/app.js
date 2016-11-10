(function() {

	var main = new Main();

	function Main() {
		// global vars
		this.var = '';

		// init
		this.init = function() {
		   this.binds();

		   this.hash.call(this);
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

			window.location.hash = id;
		}

		this.hash = function() {
			return false;
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
			var field = $('.form-email .ipt-text').length;

			for (var i = 0; i < field.length; i++) {
				(field[i].val() == '') ? field[i].addClass('error').removeClass('success') : field[i].addClass('success').removeClass('error');
			}

			if ($('.form-email .ipt-text').hasClass('error')) return false;

			/*$.ajax({
		     	url: '/api/send-email.php',
		     	success: function(data) {
		     		console.log(data);
		      }
		 	});*/
		}

		this.init.call(this);
	}
})();