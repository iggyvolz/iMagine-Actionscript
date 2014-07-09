package subjects {
	/**
	 * @author iggyvolz
	 */
	public class Person {
		public var animite:Array=[];
		public var personName:String="";
		public var energy:uint=1000;
		public var type:String="Person";
		public var isMale:Boolean;
		public function magine(args:Array):Array
		{
			if(args.length==0)
			{
				return [Texts.FUNCTION_REQUIRES_PARAMETER.replace("%1","magine")];
			}
			var dreamCreature:String=args[0];
			if(animite.indexOf(dreamCreature)==-1)
			{
				return [Texts.INVALID_ANIMITE.replace("%1",args[0])];
			}
			if(!(Subjects.SUBJECT_OBJECTS[Subjects.SUBJECT_NAMES.indexOf(dreamCreature)] as DreamCreature).inDreamPlane)
			{
				return [Texts.ALREADY_IN_BATTLE.replace("%1",dreamCreature)];
			}
			(Subjects.SUBJECT_OBJECTS[Subjects.SUBJECT_NAMES.indexOf(dreamCreature)] as DreamCreature).inDreamPlane=false;
			if(energy<100)
			{
				return [Texts.NOT_ENOUGH_ENERGY];
			}
			energy-=100;
			return [Texts.I_MAGINE_SUCCESS.replace("%1",args[0]),(Subjects.SUBJECT_OBJECTS[Subjects.SUBJECT_NAMES.indexOf(dreamCreature)] as DreamCreature).catchPhrase];
		}
		public function changeto(args:Array):Array
		{
			args; // ignore args
			iMagine.api.defaultSubject=personName.toLowerCase();
			return [Texts.NOW_SELECTED.replace("%1",personName)];
		}
		public function getenergy(args:Array):Array
		{
			if(args.length>0)
			{
				if(args[0]=="all")
				{
					var toReturn:Array=[];
					for(var i:uint=0;i<Subjects.SUBJECT_OBJECTS.length;i++)
					{
						if(Subjects.SUBJECT_OBJECTS[i].type!="Person")
						{
							continue;
						}
						toReturn.push(Texts.HAS_ENERGY.replace("%1",Subjects.SUBJECT_OBJECTS[i].personName).replace("%2",Subjects.SUBJECT_OBJECTS[i].energy);
					}
					return toReturn;
				}
			}
			return [personName+" has "+energy+" energy!"];
		}
		public function version(args:Array):Array
		{
			if(Version.GIT_DESCRIBE.indexOf("-")==-1)
			{
				return [Version.GIT_DESCRIBE];
			}
			//v0.02-1-gd62b89a
			var version:String=Version.GIT_DESCRIBE.split("-")[0];
			var plusminus:uint=Version.GIT_DESCRIBE.split("-")[1];
			return [Texts.AHEAD_OF.replace("%1",version).replace("%2",plusminus),Texts.LAST_COMMIT.replace("%1",Version.COMMIT_HASH).replace("%2",Version.COMMIT_MSG)];
		}
	}
}
