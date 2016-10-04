(function() {

    var main = new Main();

    function Main() {
        // global vars
        this.var = '';

        // init
        this.init = function() {
           
        }

        // binds
        this.binds = function() {
            /* bind example
            $('.element').on('click', this.handlerElement.bind(this));*/
        }

        // functions
        /*this.handlerElement = function(e) {
            console.log(e);
        }*/

        this.init.call(this);
    }
})();