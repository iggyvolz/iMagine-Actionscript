package subjects {
	import Subjects;
	import flash.events.*;
	/**
	 * @author iggyvolz
	 */
	public class Freep extends DreamCreature {
		public function Freep() {
			creatureName="Freep";
			inDreamPlane=true;
			catchPhrase=Texts.FREEP_CATCH_PHRASE;
			addEventListener(Event.ENTER_FRAME,setOwner);
		}
		public function setOwner(e:*):void
		{
			e;
			removeEventListener(Event.ENTER_FRAME,setOwner);
			owner=Subjects.SUBJECT_OBJECTS[Subjects.SUBJECT_NAMES.indexOf("strag")];
		}
		public function shellshock(args:Array):Array
		{
			var targetName:String=args[0];
			if(Subjects.SUBJECT_NAMES.indexOf(targetName)==-1)
			{
				return [Texts.SUBJECT_NOT_FOUND.replace("%1",args[0])];
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
			return [Texts.FREEP_SHELL_SHOCK];
		}
	}
}
