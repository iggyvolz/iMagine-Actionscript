package {
	import flash.display.Sprite;

	/**
	 * @author iggyvolz
	 */
	public class iMagine extends Sprite {
		public static var api:iMagine;
		public static const DEFAULT_SUBJECT:String="tony";
		public var defaultSubject:String=DEFAULT_SUBJECT;
		public function iMagine() {
			if(api==null)
			{
				api=this;
			}
			else
			{
				return;
			}
			trace(new InputParser("i.magine(furok)"));
		}
	}
}
