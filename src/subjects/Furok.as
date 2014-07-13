package subjects {
	import Subjects;
	import flash.events.*;
	import Shield;
	/**
	 * @author iggyvolz
	 */
	public class Furok extends DreamCreature {
		public function Furok() {
			creatureName="Furok";
			inDreamPlane=true;
			catchPhrase=Texts.FUROK_CATCH_PHRASE;
			addEventListener(Event.ENTER_FRAME,setOwner);
		}
		public function setOwner(e:*):void
		{
			e;
			removeEventListener(Event.ENTER_FRAME,setOwner);
			owner=Subjects.SUBJECT_OBJECTS[Subjects.SUBJECT_NAMES.indexOf("tony")];
		}
		public function energyblast(args:Array):Array
		{
			var targetName:String=args[0];
			var toReturn:Array=[];
			if(Subjects.SUBJECT_NAMES.indexOf(targetName)==-1)
			{
				return [Texts.INVALID_TARGET.replace("%1",args[0])];
			}
			var targetObject:*=Subjects.SUBJECT_OBJECTS[Subjects.SUBJECT_NAMES.indexOf(targetName)];
			toReturn=toReturn.concat(targetObject._damage(100));
			toReturn.push(Texts.FUROK_ENERGY_BLAST);
			return toReturn;
		}
		public function colorblast(args:Array):Array
		{
			var toReturn:Array=[];
			var targetName:String=args[0];
			if(Subjects.SUBJECT_NAMES.indexOf(targetName)==-1)
			{
				return [Texts.INVALID_TARGET.replace("%1",args[0])];
			}
			var targetObject:*=Subjects.SUBJECT_OBJECTS[Subjects.SUBJECT_NAMES.indexOf(targetName)];
			toReturn=toReturn.concat(targetObject._damage(100));
			toReturn.push(Texts.FUROK_COLOR_BLAST);
			return toReturn;
		}
		public function energyshield(args:Array):Array
		{
			var shield:Shield=new Shield(100,"Furok","Energy Shield");
			var toReturn:Array=[];
			for(var i:uint=0;i<args.length;i++)
			{
				if(Subjects.SUBJECT_NAMES.indexOf(args[i])==-1)
				{
					toReturn.push(Texts.SUBJECT_NOT_FOUND.replace("%1",args[i]));
				}
				else
				{
					Subjects.SUBJECT_OBJECTS[Subjects.SUBJECT_NAMES.indexOf(args[i])].shields.push(shield);
				}
			}
			toReturn.push(Texts.FUROK_ENERGY_SHIELD);
			return toReturn;
		}
		public function energytrail(args:Array):Array
		{
			var toReturn:Array=[];
			var targetName:String=args[0];
			//if(!isrelicactive(silver_wing)) Use something similar to this when we do relics
			if(true)
			{
				toReturn.push(Texts.RELIC_NOT_ACTIVE.replace("%1","Silver Wing"));
				return toReturn;
			}
			var targetObject:*=Subjects.SUBJECT_OBJECTS[Subjects.SUBJECT_NAMES.indexOf(targetName)];
			toReturn=toReturn.concat(targetObject._damage(100));
			toReturn.push(Texts.FUROK_ENERGY_TRAIL);
			return toReturn;
		}
		public function pawslam(args:Array):Array
		{
			var targetName:String=args[0];
			var toReturn:Array=[];
			if(Subjects.SUBJECT_NAMES.indexOf(targetName)==-1)
			{
				return [Texts.INVALID_TARGET.replace("%1",args[0])];
			}
			var targetObject:*=Subjects.SUBJECT_OBJECTS[Subjects.SUBJECT_NAMES.indexOf(targetName)];
			toReturn=toReturn.concat(targetObject._damage(100));
			toReturn.push(Texts.FUROK_PAW_SLAM);
			return toReturn;
		}
	}
}
