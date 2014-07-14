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
		public var shields:Array=[];
		public function tothedreamplane(args:Array):Array
		{
			args; //ignore args
			if(inDreamPlane)
			{
				return [Texts.ANIMITE_IN_DREAM_PLANE.replace("%1",creatureName)];
			}
			inDreamPlane=true;
			return [Texts.TO_THE_DREAM_PLANE.replace("%1",creatureName)];
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
		public function _damage(damage:uint):Array
		{
			var toReturn:Array=[];
			for(var i:uint=0;i<shields.length;i++)
			{
				if(shields[i].strength>=damage)
				{
					toReturn=toReturn.concat(shields[i].damage(damage));
					damage=0;
					return toReturn;
				}
				else
				{
					damage-=shields[i].strength;
					toReturn=toReturn.concat(shields[i].destroy());
				}
			}
			energy-=damage;
			return toReturn;
		}
	}
}
