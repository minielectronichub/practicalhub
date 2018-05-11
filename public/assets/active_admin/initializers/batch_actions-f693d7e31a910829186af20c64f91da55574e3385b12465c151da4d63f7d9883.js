(function() {
  var onDOMReady;

  onDOMReady = function() {
    var batch_actions_selector;
    if ((batch_actions_selector = $('.table_tools .batch_actions_selector')).length) {
      return batch_actions_selector.next().css({
        width: "calc(100% - 10px - " + (batch_actions_selector.outerWidth()) + "px)",
        'float': 'right'
      });
    }
  };

  $(document).ready(onDOMReady).on('page:load turbolinks:load', onDOMReady);

}).call(this);
