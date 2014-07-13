package subjects {
	import Subjects;
	import flash.events.*;
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
			if(Subjects.SUBJECT_NAMES.indexOf(targetName)==-1)
			{
				return [Texts.INVALID_TARGET.replace("%1",args[0])];
			}
			var targetObject:*=Subjects.SUBJECT_OBJECTS[Subjects.SUBJECT_NAMES.indexOf(targetName)];
			if(targetObject.energy>100)
			{
				targetObject.energy-=100;
			}
			else
			{
				targetObject.energy=0;
			}
			return [Texts.FUROK_ENERGY_BLAST];
		}
		public function colorblast(args:Array):Array
		{
			var targetName:String=args[0];
			if(Subjects.SUBJECT_NAMES.indexOf(targetName)==-1)
			{
				return [Texts.INVALID_TARGET.replace("%1",args[0])];
			}
			var targetObject:*=Subjects.SUBJECT_OBJECTS[Subjects.SUBJECT_NAMES.indexOf(targetName)];
			if(targetObject.energy>100)
			{
				targetObject.energy-=100;
			}
			else
			{
				targetObject.energy=0;
			}
			return [Texts.FUROK_COLOR_BLAST];
		}
	}
}
