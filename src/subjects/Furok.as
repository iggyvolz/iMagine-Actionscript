package subjects {
	/**
	 * @author iggyvolz
	 */
	public class Furok extends DreamCreature {
		public function Furok() {
			name="Furok";
			inDreamPlane=true;
		}
		public function energyblast(args:Array):Array
		{
			var target:String=args[0];
			if(InputParser.SUBJECT_NAMES.indexOf(target)==-1)
			{
				return [Texts.INVALID_TARGET.replace("%1",args[0])];
			}
			return [Texts.FUROK_ENERGY_BLAST];
		}
	}
}
