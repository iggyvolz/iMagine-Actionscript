package testsuite.tests.auto
{
  import flash.events.Event;
  import asunit.framework.TestCase;

  public class TestMagineDrush extends TestCase
  {

    public function TestMagineDrush():void
    {
      super("test");
    }
    public function test():void
    {
      Subjects.reset();
      var array1:Array=[">edyn.magine(drush)",Texts.I_MAGINE_SUCCESS.replace("%1","Drush"),Texts.DRUSH_CATCH_PHRASE,"Edyn lost 100 energy!  She now has 900 energy!"];
      var array2:Array=new InputParser("edyn.magine(drush)").returns;
      for(var i:uint=0;i<array1.length||i<array2.length;i++)
      {
        assertEquals(array1[i],array2[i]);
      }
    }
  }
}
