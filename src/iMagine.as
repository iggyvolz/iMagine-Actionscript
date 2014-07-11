package {
	import flash.text.TextFieldType;
	import flash.display.Sprite;
	import flash.events.KeyboardEvent;
	import flash.text.TextField;
	import flash.text.TextFormat;
	import Subjects;

	/**
	 * @author iggyvolz
	 */
	public class iMagine extends Sprite {
		String.prototype.ucfirst = function():String {return this.charAt(0).toUpperCase() + this.substr(1).toLowerCase();}
		public static var api:iMagine;
		public static const DEFAULT_SUBJECT:String="tony";
		public var defaultSubject:String=DEFAULT_SUBJECT;
		public var outputText:TextField=new TextField;
		public var outputTextFormat:TextFormat=new TextFormat;
		public var inputText:TextField=new TextField;
		public var inputTextFormat:TextFormat=new TextFormat;
		public function iMagine() {
			Subjects.SUBJECT_OBJECTS;
			Subjects.SUBJECT_NAMES;
			if(api==null)
			{
				api=this;
			}
			else
			{
				return;
			}
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
			if(stage)
			{
				stage.addEventListener(KeyboardEvent.KEY_DOWN, handleKeyDown);
			}
		}

		private function handleKeyDown(event : KeyboardEvent) : void {
			if(event.keyCode!=13)
			{
				return;
			}
			outputText.appendText("\n"+(new InputParser(inputText.text)));
			inputText.text="";
		}
	}
}
