package {
  public class Shield
  {
    public var strength:uint;
    public var creator:String;
    public var type:String;
    public function Shield(_strength:uint,_creator:String,_type:String):void
    {
      strength=_strength;
      creator=_creator;
      type=_type;
    }
    public function damage(power:uint):Array
    {
      strength-=power;
      return [Texts.SHEILD_DAMAGE.replace("%1",creator).replace("%2",type).replace("%3",power).replace("%4",strength)];
    }
    public function destroy():Array
    {
      strength=0;
      return [Texts.SHIELD_DESTROY.replace("%1",creator).replace("%2",type)];
    }
  }
}
