package {
	/**
	 * @author iggyvolz
	 *
	 */
	public class InputParser {
		public var subject:String;
		public var action:String;
		public var args:Array;
		public var _energyCache:Array;
		private var _returns:Array=[];
		public function InputParser(input:String):void
		{
			_energyCache=energyCache;
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
			if(!(action in instance)||(typeof (instance[action])!="function"))
			{
				_returns = [Texts.ACTION_NOT_FOUND.replace("%1",subject).replace("%2",action)];return returns;
			}
			_returns=instance[action](args);
			var finalEnergyCache:Array=energyCache;
			for(var i:uint=0;i<finalEnergyCache.length;i++)
			{
				if(_energyCache[i]!=finalEnergyCache[i])
				{
					if(Subjects.SUBJECT_OBJECTS[i].type=="Person")
					{
						_returns.push(Subjects.SUBJECT_NAMES[i].ucfirst()+((_energyCache[i]<finalEnergyCache[i])?" gained ":" lost ")+Math.abs(_energyCache[i]-finalEnergyCache[i])+" energy!  "+(Subjects.SUBJECT_OBJECTS[i].isMale?"H":"Sh")+"e now has "+Subjects.SUBJECT_OBJECTS[i].energy+" energy!");
					}
				}
			}
			return _returns;
		}

		public function toString() : String {
			return returns.join("\n");
		}
		public function get energyCache():Array
		{
			var toReturn:Array=[];
			for(var i:uint=0;i<Subjects.SUBJECT_NAMES.length;i++)
			{
				toReturn.push(Subjects.SUBJECT_OBJECTS[i].energy);
			}
			return toReturn;
		}
	}
}
