(function() {

    var main = new Main();

    function Main() {
        // global vars
        this.var = '';

        // init
        this.init = function() {
           this.binds();
        }

        // binds
        this.binds = function() {
            $('.team-item').on('mouseenter', this.handlerTeamMember.bind(this));
            $('.team-item').on('mouseleave', this.handlerTeamMember.bind(this));
        }

        // functions
        this.handlerTeamMember = function(event) {
            var target = $(event.currentTarget);

            switch (event.type) {
                case 'mouseenter':
                    target.find('.description').addClass('memberAnimate');
                    break;
                case 'mouseleave':
                    target.find('.description').removeClass('memberAnimate');
                    break;
            }
        }

        this.init.call(this);
    }
})();