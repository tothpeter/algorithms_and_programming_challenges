var Base = (function() {
  'use strict';

  function extend(params) {
    var baseClass = function() {
      this.constructor.apply(this, arguments);
    };

    baseClass.prototype = {
      constructor: function (state) {
        this.subscribers = [];
        this.state = state || {};

        this.init.apply(this, arguments);
      },

      init: function () {},

      setState: function (state, silently) {
        this.state = state;

        this._update(silently);

        return this;
      },

      getState: function () {
        return this.state;
      },

      set: function(property, value, silently) {
        this.state[property] = value;

        this._update(silently);
      },

      get: function(property) {
        return this.state[property];
      },

      destroy() {
        this.$el.remove();
      },

      _update(silently) {
        if (silently !== true && typeof baseClass.prototype._render === 'function') {
          this.render();
        }
      }
    };

    for (var prop in params) {
      baseClass.prototype[prop] = params[prop];
    }

    // Rendering

    baseClass.prototype._render = params.render;

    baseClass.prototype.render = function() {
      var $newEl = this._render();

      if (this.$el) {
        this.$el.parentNode.replaceChild($newEl, this.$el);
      }

      this.$el = $newEl;

      return this.$el;
    }

    return baseClass;
  }

  return {
    extend: extend
  }
})();
