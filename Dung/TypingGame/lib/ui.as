package lib 
{
	import flash.display.*;
	import flash.text.*;
	import flash.events.*;
	import flash.utils.Timer;
	import flash.media.Sound;
	import flash.net.URLRequest;
	import flash.utils.*;
	
	public class ui
	{
		
		public function ui() 
		{
			
		}
		
		public function createInputField ():TextField
		{
			var inputFormat:TextFormat = new TextFormat();
			inputFormat.font = "Arial";
			inputFormat.size = 16;
			inputFormat.align = "center";
			
			var myInput:TextField = new TextField();
			myInput.type = TextFieldType.DYNAMIC;
			myInput.defaultTextFormat = inputFormat;
			//myInput.x = 10;
			myInput.y = 10;
			myInput.height = 25;
			myInput.width = 25;
			myInput.wordWrap = true;
			//myInput.border = true;
			myInput.backgroundColor = 0xCCCCCC;
			myInput.background = true;
	
			return myInput;
		}
		public function test()
		{
			trace("a");
		}
	}

}