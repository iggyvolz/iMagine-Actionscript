package {
	/**
	 * @author iggyvolz
	 *
	 */
	public class InputParser {
		public var subject:String;
		public var action:String;
		public var args:Array;
		private var _returns:Array=[];
		public function InputParser(input:String):void
		{
			input=input.toLowerCase();
			if(input.indexOf(".")==-1)
			{
				subject=iMagine.api.defaultSubject;
			}
			else if(input.split(".")[0]=="i")
			{
				subject=iMagine.api.defaultSubject;
				input=input.split(".")[1];
			}
			else
			{
				subject=input.split(".")[0];
				input=input.split(".")[1];
			}
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
			if(Subjects.SUBJECT_NAMES.indexOf(subject)==-1)
			{
				_returns = [Texts.SUBJECT_NOT_FOUND.replace("%1",subject)];return returns;
			}
			var instance:*=Subjects.SUBJECT_OBJECTS[Subjects.SUBJECT_NAMES.indexOf(subject)];
			if(!(action in instance))
			{
				_returns = [Texts.ACTION_NOT_FOUND.replace("%1",subject).replace("%2",action)];return returns;
			}
			_returns=instance[action](args);
			return returns;
		}

		public function toString() : String {
			return returns.join("\n");
		}
	}
}
