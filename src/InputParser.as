package {
	import subjects.*;
	/**
	 * @author iggyvolz
	 */
	public class InputParser {
		public var subject:String;
		public var action:String;
		public var args:Array;
		private var _returns:Array=[];
		public const subjectObjects:Array=[new Tony];
		public const subjectNames:Array=["tony"];
		public function InputParser(input:String):void
		{
			input=input.toLowerCase();
			if(input.indexOf(".")==-1||input.split(".")[0]=="i")
			{
				subject=iMagine.api.defaultSubject;
			}
			else
			{
				subject=input.split(".")[0];
			}
			input=input.split(".")[1];
			action=input.split("(")[0];
			if(input.indexOf("(")==-1)
			{
				args=[];
			}
			else
			{
				input=input.split("(")[1];
				input=input.split(")")[0];
				args=input.split(",");
			}
		}
		
		public function get returns():Array
		{
			if(_returns.length>0)
			{
				return _returns; // Cache response
			}
			if(subjectNames.indexOf(subject)==-1)
			{
				_returns = [Texts.SUBJECT_NOT_FOUND.replace("%1",subject)];return returns;
			}
			var instance:*=subjectObjects[subjectNames.indexOf(subject)];
			if(!(action in instance))
			{
				_returns = [Texts.ACTION_NOT_FOUND.replace("%1",subject)];return returns;
			}
			_returns=instance[action](args);
			return returns;
		}
		
		public function toString() : String {
			return returns.join("\n");
		}
	}
}
