package{
	import flash.display.*;
	import flash.text.*;
	import flash.events.MouseEvent;
	import fl.controls.Label;
	import fl.controls.TextInput;
	import fl.controls.Button;
	public class HelloWorld2 extends MovieClip{
		
		private var labelEnterName:Label;
		private var myName:TextInput;
		private var btnSubmit:Button;
		private var outText:TextField;
			
		public function HelloWorld2(){
			setupComponents();
		}
		//Setup components 
		private function setupComponents():void { 
			//Setup label EnterName
			labelEnterName = new Label();
			labelEnterName.move(20,20);
			labelEnterName.text = "Enter Your Name : ";
			//Setup myName TextInput
			myName = new TextInput();
			myName.move(150,20);
			//Setup btnSubmit
			btnSubmit = new Button();
			btnSubmit.label = "Submit";
			btnSubmit.move(300,20);
			btnSubmit.addEventListener(MouseEvent.CLICK,btnSubmit_Click);
			//Setup myText TextField
			outText = new TextField();
			outText.textColor = 0xFF0000;
			outText.x = 200;
			outText.y = 200;
			outText.width = 200;
			//Append Childs
			addChild(labelEnterName);
			addChild(myName);
			addChild(btnSubmit);
			addChild(outText);
		}
		//Click button Submit Event
		public function btnSubmit_Click(e : MouseEvent):void {
			outText.text = "Hello " + myName.text + "! Welcome to AS3 ^^.";
		}
	
	}
}