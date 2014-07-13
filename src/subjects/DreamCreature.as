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
		public function _damage(damage:uint):void
		{
			for(var i:uint=0;i<shields.length;i++)
			{
				if(shields[i]>=damage)
				{
					shields[i]-=damage;
					damage=0;
					return;
				}
				else
				{
					damage-=shields[i];
					shields[i]=0;
				}
			}
			owner._damage(damage);
		}
	}
}
