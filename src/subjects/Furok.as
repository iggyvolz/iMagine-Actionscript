package subjects {
	/**
	 * @author iggyvolz
	 */
	public class Furok extends DreamCreature {
		public var SUBJECT_NAMES:Array;
		public var SUBJECT_OBJECTS:Array;
		public function Furok(sn:Array,so:Array) {
			SUBJECT_NAMES=sn;
			SUBJECT_OBJECTS=so;
			trace(sn);
			owner=SUBJECT_OBJECTS[SUBJECT_NAMES.indexOf("tony")];
			name="Furok";
			inDreamPlane=true;
		}
		public function energyblast(args:Array):Array
		{
			var targetName:String=args[0];
			if(SUBJECT_NAMES.indexOf(targetName)==-1)
			{
				return [Texts.INVALID_TARGET.replace("%1",args[0])];
			}
			var target:*=SUBJECT_OBJECTS[SUBJECT_NAMES.indexOf(target)];
			target.energy-=100;
			return [Texts.FUROK_ENERGY_BLAST];
		}
	}
}
