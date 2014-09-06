package tests
{
  import flash.events.Event;
  import asunit.framework.TestCase;

  public class TestMagineRiverAbaquist extends TestCase
  {

    public function TestMagineRiverAbaquist():void
    {
      super("test");
    }
    public function test():void
    {
      Subjects.reset();
      var array1:Array=[">tony.magine(riverabaquist)",Texts.I_MAGINE_SUCCESS.replace("%1","River Abaquist"),Texts.RIVER_ABAQUIST_CATCH_PHRASE,"Tony lost 100 energy!  He now has 900 energy!"];
      var array2:Array=new InputParser("tony.magine(riverabaquist)").returns;
      for(var i:uint=0;i<array1.length||i<array2.length;i++)
      {
        assertEquals(array1[i],array2[i]);
      }
    }
  }
}
