package {
	import flash.display.Sprite;

	/**
	 * @author iggyvolz
	 */
	public class iMagine extends Sprite {
		private var _api:iMagine;
		public static const DEFAULT_SUBJECT:String="tony";
		public function get api():iMagine
		{
			return _api;
		}
		public function iMagine() {
			if(_api==null)
			{
				_api=this;
			}
			else
			{
				return;
			}
		}
	}
}
