package subjects {
	/**
	 * @author iggyvolz
	 */
	public class DreamCreature {
		public var owner:Person;
		public var inDreamPlane:Boolean=true;
		public var name:String="";
		public function tothedreamplane(args:Array):Array
		{
			args; //ignore args
			if(inDreamPlane)
			{
				return [Texts.ANIMITE_IN_DREAM_PLANE.replace("%1",name)];
			}
			inDreamPlane=true;
			return [Texts.TO_THE_DREAM_PLANE.replace("%1",name)];
		}
		public function get energy():uint
		{
			return owner.energy;
		}
		public function set energy(val:uint):void
		{
			owner.energy=val;
		}
	}
}
