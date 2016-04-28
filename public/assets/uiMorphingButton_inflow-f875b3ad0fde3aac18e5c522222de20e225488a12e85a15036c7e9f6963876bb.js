/**
 * uiMorphingButton_inflow.js v1.0.0
 * http://www.codrops.com
 *
 * Licensed under the MIT license.
 * http://www.opensource.org/licenses/mit-license.php
 * 
 * Copyright 2014, Codrops
 * http://www.codrops.com
 */
!function(t){"use strict";function n(t,n){for(var i in n)n.hasOwnProperty(i)&&(t[i]=n[i]);return t}function i(t,i){this.el=t,this.options=n({},this.options),n(this.options,i),this._init()}var e={WebkitTransition:"webkitTransitionEnd",MozTransition:"transitionend",OTransition:"oTransitionEnd",msTransition:"MSTransitionEnd",transition:"transitionend"},o=e[Modernizr.prefixed("transition")],s={transitions:Modernizr.csstransitions};i.prototype.options={closeEl:"",onBeforeOpen:function(){return!1},onAfterOpen:function(){return!1},onBeforeClose:function(){return!1},onAfterClose:function(){return!1}},i.prototype._init=function(){this.elH=this.el.offsetHeight,this.button=this.el.querySelector("button"),this.expanded=!1,this.contentEl=this.el.querySelector(".morph-content"),this._initEvents()},i.prototype._initEvents=function(){var t=this;if(this.button.addEventListener("click",function(){t.toggle()}),""!==this.options.closeEl){var n=this.el.querySelector(this.options.closeEl);n&&n.addEventListener("click",function(){t.toggle()})}},i.prototype.toggle=function(){if(this.isAnimating)return!1;this.expanded?this.options.onBeforeClose():(classie.addClass(this.el,"active"),this.options.onBeforeOpen()),this.isAnimating=!0;var t=this,n=function(i){return i.target!==this?!1:(s.transitions&&this.removeEventListener(o,n),t.isAnimating=!1,t.expanded?(classie.removeClass(t.el,"active"),t.options.onAfterClose()):t.options.onAfterOpen(),void(t.expanded=!t.expanded))};s.transitions?this.el.addEventListener(o,n):n(),this.el.style.height=this.expanded?this.elH+"px":this.contentEl.offsetHeight+"px",this.expanded?classie.removeClass(this.el,"open"):classie.addClass(this.el,"open")},t.UIMorphingButton=i}(window);