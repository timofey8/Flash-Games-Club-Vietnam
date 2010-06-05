package  com

{
  import flash.display.*;
  import flash.events.*;
  import flash.filters.BevelFilter;
  import flash.filters.DropShadowFilter;
  import flash.text.TextField;
  import flash.text.TextFormat;

  public class ButtonSimple3 extends Sprite 
  {
	private var _width:uint;
    private var _height:uint;
	private var _ellipseWidth:int;
	private var _ellipseHeight:int;
	private var _colorUP;
	private var _text:String;
	private var _textSize = uint;	
	private var _textToDisplay:String;
	private var _zTextField:TextField;
	
	  
    public function ButtonSimple3(text:String, textSize:uint, color,  width:uint, height:uint, ellipseWidth:int, ellippseHeight:int   ) 
	{
	    _text = new String (text);
		_textSize = new uint (textSize);
		_colorUP = color;
		_width = new uint (width);
        _height = new uint (height);
	  	_ellipseWidth = new int (ellipseWidth);
	    _ellipseHeight = new int (ellippseHeight);


	  
 
      var button:SimpleButton = new SimpleButton();
	  //button.mouseChildren = false;
 
      // Create the different states of the button, using the  helper method to create different colors circles
			  button.upState = createRectangleUP( _colorUP );
			  button.overState = createRectangleOVER( _colorUP );
			  button.downState = createRectangleDOWN( _colorUP);
			  button.hitTestState = button.upState;
     //button.hitTestState = createRectangleUP ( 0x000000, 50 );
	 
      // Add an event listener for the click event to be notified when the user clicks the mouse on the button
      //button.addEventListener( MouseEvent.CLICK, handleClick );
      
      // Finally, add the button to the display list
      addChild( button );  
	  
	  ViewTextFieldinButton (_text);
	 
    }
    
    // Helper function to create a circle shape with a given color and radius
	  private function createRectangleUP( color:uint ):Sprite 
	  {
      var rect:Sprite = new Sprite(  );
		  rect.graphics.lineStyle( 1, 0x000000, 0 );
		  rect.graphics.beginFill( color );
		  rect.graphics.drawRoundRect( 0, 0, _width, _height, 10, 10);
		  rect.graphics.endFill(  );
	  
	  		var ds:DropShadowFilter = new DropShadowFilter ();
				ds.distance = 3;
				ds.blurX = 7;
				ds.blurY = 7;
				ds.alpha = .6;
			var myBevel:BevelFilter = new BevelFilter();
					//myBevel.type = BitmapFilterType.FULL;
					//myBevel.highlightColor = 0xFF0000;
					//myBevel.shadowColor = 0xFFFF00;
					myBevel.distance = 2;
					myBevel.blurX = 5;
					myBevel.blurY = 5;
			var _filterArray = new Array (ds,myBevel);
			rect.filters = _filterArray;  
			
			ViewTextFieldinButton (_text);
			
			rect.addChild( _zTextField );
	  
      return rect;
    }
		
	  private function createRectangleOVER( color:uint ):Shape {
      var rect:Shape = new Shape(  );
      rect.graphics.lineStyle( 1, 0x000000, 0 );
      rect.graphics.beginFill( color, .70 );
      rect.graphics.drawRoundRect( 0, 0, _width, _height, 15 );
      rect.graphics.endFill(  );
	  
	  		var ds:DropShadowFilter = new DropShadowFilter ();
				ds.distance = 3;
				ds.blurX = 4;
				ds.blurY = 4;
				ds.alpha = .5;
			var myBevel:BevelFilter = new BevelFilter();
					//myBevel.type = BitmapFilterType.FULL;
					//myBevel.highlightColor = 0xFF0000;
					//myBevel.shadowColor = 0xFFFF00;
					myBevel.distance = 2;
					myBevel.blurX = 5;
					myBevel.blurY = 5;
			var _filterArray = new Array (ds,myBevel);
			rect.filters = _filterArray;  
	  
      return rect;
    }
	
	private function createRectangleDOWN( color:uint ):Shape {
      var rect:Shape = new Shape(  );
      rect.graphics.lineStyle( 1, 0x000000, 0 );
      rect.graphics.beginFill( color, .65 );
      rect.graphics.drawRoundRect( 0, 0, _width, _height, 15 );
      rect.graphics.endFill(  );
	  
	  		var ds:DropShadowFilter = new DropShadowFilter ();
				ds.distance = 3;
				ds.blurX = 7;
				ds.blurY = 7;
				ds.alpha = .6;
			var myBevel:BevelFilter = new BevelFilter();
					//myBevel.type = BitmapFilterType.FULL;
					//myBevel.highlightColor = 0xFF0000;
					//myBevel.shadowColor = 0xFFFF00;
					myBevel.distance = 2;
					myBevel.blurX = 5;
					myBevel.blurY = 5;
			var _filterArray = new Array (ds,myBevel);
			//rect.filters = _filterArray;  
	  
      return rect;
    }
    
    // Event handler invoked whenever the user presses the button
    private function handleClick( event:MouseEvent ):void {
      trace( "Mouse clicked on the button" );  
    }
	
	private function ViewTextFieldinButton (w:String):TextField
		{
			_textToDisplay = new String (w); 				
				var textFormat1 = new TextFormat;
				textFormat1.font = "Arial";
				textFormat1.size = _textSize;
				textFormat1.bold = true;
				textFormat1.color = 0xFFFFFF;
				textFormat1.align = "center";
						_zTextField = new TextField();
						_zTextField.defaultTextFormat = textFormat1;
						_zTextField.border = false;
						//_zTextField.multiline = true;
						//_zTextField.wordWrap = true;
						_zTextField.width = _width;
						_zTextField.height = _height;  
						 
						_zTextField.y = (_height - _textSize ) / 2;
						_zTextField.y -= 4;  // Subtract 2 pixels to adjust for offset
						
						_zTextField.text = _textToDisplay;
						return _zTextField;
		}
		
		public function changeTextField (c:String):void
		{
			trace ("textChagge");
			_zTextField.text = c;
		}
  }
}