/**
 * com.deviouswork.http.url.AbstractService
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
	import com.deviouswork.http.url.IService;

	import flash.net.URLLoader;

	/*
	 * 
	 */
	
	/**
	 * Abstract class used as startingpoint for all other services.
	 */
	public class AbstractService extends URLLoader implements IService {
		
		public function get shortURL():String {  return shortURL_str; }
		public function set shortURL(url:String):void { shortURL_str = url; }
		protected var shortURL_str : String;		
		
		public function get api() : String { return api_str; }
		public function set api(url:String):void { api_str = url; }
		protected var api_str : String;
		
		public function get version() : String {	return version_str; }
		public function set version(version : String):void {	version_str = version; }
		protected var version_str : String;
		
		public function get login() : String {	return login_str; }
		public function set login(login : String):void {	login_str = login; }
		protected var login_str : String;
		
		public function get key() : String {	return key_str; }
		public function set key(key : String):void {	key_str = key; }
		protected var key_str : String;
		
		public function shorten(url : String) : void { return; }
		
	}
}
