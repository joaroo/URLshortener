/**
 * com.deviouswork.http.url.IsGdService
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
	import com.deviouswork.http.url.AbstractService;

	import flash.net.URLRequest;
	import flash.net.URLRequestMethod;

	public class IsgdService extends AbstractService {
		
		public function IsgdService() {
			api = 'http://is.gd/api.php?longurl=';
		}

		override public function shorten(url:String):void {
			var request:URLRequest = new URLRequest();			
			request.method = URLRequestMethod.GET;
			request.url = api + escape(url);
			super.load(request);
		}
		
	}
}
