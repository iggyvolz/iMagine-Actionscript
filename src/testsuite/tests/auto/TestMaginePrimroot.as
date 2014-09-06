package testsuite.tests.auto
{
  import flash.events.Event;
  import asunit.framework.TestCase;

  public class TestMaginePrimroot extends TestCase
  {

    public function TestMaginePrimroot():void
    {
      super("test");
    }
    public function test():void
    {
      Subjects.reset();
      var array1:Array=[">strag.magine(primroot)",Texts.I_MAGINE_SUCCESS.replace("%1","Primroot"),Texts.PRIMROOT_CATCH_PHRASE,"Strag lost 100 energy!  He now has 900 energy!"];
      var array2:Array=new InputParser("strag.magine(primroot)").returns;
      for(var i:uint=0;i<array1.length||i<array2.length;i++)
      {
        assertEquals(array1[i],array2[i]);
      }
    }
  }
}
