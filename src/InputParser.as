package {
	/**
	 * @author iggyvolz
	 */
	public class InputParser {
		public var subject:String;
		public var action:String;
		public var args:Array;
		public function InputParser(input:String,defaultSubject:String=iMagine.DEFAULT_SUBJECT):void
		{
			input=input.toLowerCase();
			if(input.indexOf(".")==-1||input.split(".")[0]=="i")
			{
				subject=defaultSubject;
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
		public function toString() : String {
			return "SUBJECT: "+subject+", ACTION: "+action+", ARGS: "+args.join(",");
		}
	}
}
