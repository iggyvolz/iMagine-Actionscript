package testsuite.tests.auto
{
  import flash.events.Event;
  import asunit.framework.TestCase;

  public class TestMagineHubram extends TestCase
  {

    public function TestMagineHubram():void
    {
      super("test");
    }
    public function test():void
    {
      Subjects.reset();
      var array1:Array=[">tony.magine(hubram)",Texts.I_MAGINE_SUCCESS.replace("%1","Hubram"),Texts.HUBRAM_CATCH_PHRASE,"Tony lost 100 energy!  He now has 900 energy!"];
      var array2:Array=new InputParser("tony.magine(hubram)").returns;
      for(var i:uint=0;i<array1.length||i<array2.length;i++)
      {
        assertEquals(array1[i],array2[i]);
      }
    }
  }
}
