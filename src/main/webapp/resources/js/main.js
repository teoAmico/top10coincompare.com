$( document ).ready(function() {
	$.typeahead({
	    input: '.js-typeahead-coin',
	    display: ['label','symbol'],
	    minLength: 1,
	    maxItem: 10,
	    order: 'asc',
	    offset:true,
	    templateValue: "{{label}}",
	    template: '<span data-coin="{{label|raw}}">{{label}}</span>',
	    emptyTemplate: function (query) {
	        if (query.length > 0) {
	            return 'No results found';
	        }
	    },
	    source: {
	    	coin: {	
	    		ajax: {
	                url: "resources/data/coin-listing.json",
	            }
	    	}
	    },
	    callback: {
	        onInit: function (node) {
	            console.log('Typeahead Initiated on ' + node.selector);
	        },
	        onClickAfter: function (node, a, item, event){
	        	 //console.log(node, a, item, event);
	        	 console.log(item)
	        	 $('#coin-ref[name="ref"]').val(item.value);
	        },
	        onSubmit: function(){
	        	//check if ref has been set
	        },
	        onCancel: function (node, event){
	        	 $('#coin-ref[name="ref"]').val("");
	        }
	    }
	    
	});
});