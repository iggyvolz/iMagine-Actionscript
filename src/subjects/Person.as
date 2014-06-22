package subjects {
	/**
	 * @author iggyvolz
	 */
	public class Person {
		public var animite:Array=[];
		public var name:String="";
		public var energy:uint=1000;
		public function magine(args:Array):Array
		{
			if(args.length==0)
			{
				return [Texts.FUNCTION_REQUIRES_PARAMETER.replace("%1","magine")];
			}
			var dreamCreature:String=args[0];
			if(animite.indexOf(dreamCreature)==-1)
			{
				return [Texts.INVALID_ANIMITE.replace("%1",args[0])];
			}
			if(energy<100)
			{
				return [Texts.NOT_ENOUGH_ENERGY];
			}
			energy-=100;
			return [Texts.I_MAGINE_SUCCESS.replace("%1",args[0])];
		}
		public function changeto(args:Array):Array
		{
			args; // ignore args
			iMagine.api.defaultSubject=name;
			return [Texts.NOW_SELECTED.replace("%1",name)];
		}
	}
}
