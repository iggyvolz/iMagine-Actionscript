package testsuite.tests.auto
{
  import flash.events.Event;
  import asunit.framework.TestCase;

  public class TestMagineParathin extends TestCase
  {

    public function TestMagineParathin():void
    {
      super("test");
    }
    public function test():void
    {
      Subjects.reset();
      var array1:Array=[">tony.magine(parathin)",Texts.I_MAGINE_SUCCESS.replace("%1","Parathin"),Texts.PARATHIN_CATCH_PHRASE,"Tony lost 100 energy!  He now has 900 energy!"];
      var array2:Array=new InputParser("tony.magine(parathin)").returns;
      for(var i:uint=0;i<array1.length||i<array2.length;i++)
      {
        assertEquals(array1[i],array2[i]);
      }
    }
  }
}
