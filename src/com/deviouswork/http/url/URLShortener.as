/**
 * com.deviouswork.http.url.URLShortener
 * @version 1.0.0
 * @author Joakim Roos  - http://www.deviouswork.com
 * Copyright � 2009 Deviouswork. All Rights Reserved.
 * 
 * Permission is hereby granted, free of charge, to any person
 * obtaining a copy of this software and associated documentation
 * files (the "Software"), to deal in the Software without
 * restriction, including without limitation the rights to use,
 * copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following
 * conditions:
 * 
 * The above copyright notice and this permission notice shall be
 * included in all copies or substantial portions of the Software.
 * 
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
 * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
 * OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
 * NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
 * HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
 * WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
 * OTHER DEALINGS IN THE SOFTWARE.
 */
package com.deviouswork.http.url {
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	import flash.net.URLLoader;

	[Event(name="complete", type="flash.events.Event")]
	public class URLShortener extends EventDispatcher {
		
		public function get shortURL():String { return service.shortURL; }
		
		public function get service():AbstractService { return _short_service; }
		private var _short_service : AbstractService;
		
		public function URLShortener(serviceClass:Class) {
			_short_service = new serviceClass() as AbstractService;
		}

		public function shorten(url:String):void {
			_addListeners(service);
			service.shorten(url);
		}

		private function _addListeners(dispatcher : IEventDispatcher) : void {
            dispatcher.addEventListener(Event.COMPLETE, _onComplete, false, 0, true);
        }
		
		private function _removeListeners(dispatcher : IEventDispatcher) : void {
            dispatcher.removeEventListener(Event.COMPLETE, _onComplete);
		} 
			
		private function _onComplete(event:Event):void {
			service.shortURL = (event.target as URLLoader).data as String;
			_removeListeners(service);
			dispatchEvent(new Event(Event.COMPLETE));
		}		  
	}
}
