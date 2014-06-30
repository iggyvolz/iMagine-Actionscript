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
			var target:*=Subjects.SUBJECT_OBJECTS[Subjects.SUBJECT_NAMES.indexOf(target)];
			target.energy-=100;
			return [Texts.FUROK_ENERGY_BLAST];
		}
	}
}
