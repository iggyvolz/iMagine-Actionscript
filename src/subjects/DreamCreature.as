package subjects {
	/**
	 * @author iggyvolz
	 */
	import flash.display.*;
	public class DreamCreature extends Sprite {
		public var owner:Person;
		public var inDreamPlane:Boolean=true;
		public var creatureName:String="";
		public var catchPhrase:String="";
		public var type:String="DreamCreature";
		public function tothedreamplane(args:Array):Array
		{
			args; //ignore args
			if(inDreamPlane)
			{
				return [Texts.ANIMITE_IN_DREAM_PLANE.replace("%1",(String)(creatureName).ucfirst())];
			}
			inDreamPlane=true;
			return [Texts.TO_THE_DREAM_PLANE.replace("%1",(String)(creatureName).ucfirst())];
		}
		public function get energy():uint
		{
			return owner.energy;
		}
		public function set energy(val:uint):void
		{
			owner.energy=val;
		}
		public function version(args:Array):Array
		{
			return owner.version(args);
		}
	}
}
