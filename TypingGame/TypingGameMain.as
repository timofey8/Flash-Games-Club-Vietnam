package 
{
	import flash.display.MovieClip;
	import flash.text.TextField;
	import lib.ui;
	import flash.events.*;
	
	public class TypingGameMain extends MovieClip
	{
		private var createTextField:ui;
		private var  count:int = 0; 
		private var arrText:Array = ["f", " ","j", " " ,"f", " ","j", " ", "f", " ","j", " ", "f"]
		private var arrTextField:Array = new Array();
		
		public function TypingGameMain() : void
		{
			createTextField = new ui();
			var i:int;
			for (i = 0; i < arrText.length; i++ )
			{
				var textField:TextField;
				textField = createTextField.createInputField();
				textField.appendText(arrText[i]);
				if (i / 2 == 0)  textField.backgroundColor = 0xFF0000;
				textField.  x = i * 25;
				arrTextField.push(textField);
				addChild(textField);
			}

			stage.addEventListener(KeyboardEvent.KEY_DOWN, keyDownFunction);
		    
		}
		
		function keyDownFunction(event:KeyboardEvent) 
		{
			if (count < arrText.length)
			{
				count ++;
				
				
			}else 
			{
				count = 0;
			}
			var textField:TextField;
			textField = arrTextField[count - 1];
			textField.backgroundColor = 0xCCCCCC;
			var textField:TextField;
			textField = arrTextField[count];
			textField.backgroundColor = 0xFF0000;
		}
	}
	
}