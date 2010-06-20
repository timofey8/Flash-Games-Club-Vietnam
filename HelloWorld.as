package {
	import flash.display.*;
	import flash.text.*;
	
	public class HelloWorld extends MovieClip {
		public function HelloWorld () {
			var mytext:TextField = new TextField();
				mytext.text = " Hello World " ;
				mytext.x = 150;
				mytext.y = 150;
				addChild(mytext);
		}
	}
}
