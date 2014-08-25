package {
	import flash.text.TextFieldType;
	import flash.display.Sprite;
	import flash.events.KeyboardEvent;
	import flash.text.TextField;
	import flash.text.TextFormat;
	import flash.utils.ByteArray;
	import flash.events.Event;
	import Subjects;

	/**
	 * @author iggyvolz
	 */
	public class iMagine extends Sprite {
		String.prototype.ucfirst = function():String {return this.charAt(0).toUpperCase() + this.substr(1).toLowerCase();}
		String.prototype.clone = function():String {var myBA:ByteArray = new ByteArray(); myBA.writeObject( this ); myBA.position = 0; return( myBA.readObject() ); }
		public static var api:iMagine;
		public static var f:uint;
		public static const DEFAULT_SUBJECT:String="tony";
		public var defaultSubject:String=DEFAULT_SUBJECT;
		public var outputText:TextField=new TextField;
		public var outputTextFormat:TextFormat=new TextFormat;
		public var inputText:TextField=new TextField;
		public var inputTextFormat:TextFormat=new TextFormat;
		public var first:Boolean=true;
		public function iMagine() {
			if(api==null)
			{
				api=this;
			}
			else
			{
				return;
			}
			if(stage)
			{
				Subjects.theStage=stage;
				stage.addEventListener(KeyboardEvent.KEY_DOWN, handleKeyDown);
				stage.addEventListener(Event.ENTER_FRAME,handleEnterFrame);
			}
			Subjects.reset();
			addChild(outputText);
			addChild(inputText);
			inputText.type=TextFieldType.INPUT;
			inputText.border=true;
			outputText.border=true;
			inputText.width=550;
			outputText.width=550;
			inputText.y=380;
			inputText.height=20;
			outputText.height=380;
		}

		private function handleEnterFrame(event:Event):void{
			f++;
			if(f==1)
			{
				outputText.appendText(Texts.INTRO_TEXT+new InputParser("version").returns[1]+"\n");
			}
		}

		private function handleKeyDown(event : KeyboardEvent) : void {
			if(event.keyCode!=13)
			{
				return;
			}
			if(first)
			{
				outputText.appendText(""+(new InputParser(inputText.text)));
				first=false;
			}
			else
			{
				outputText.appendText("\n"+(new InputParser(inputText.text)));
			}
			outputText.scrollV=outputText.maxScrollV;
			inputText.text="";
		}
	}
}
