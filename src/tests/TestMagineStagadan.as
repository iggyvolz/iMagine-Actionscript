package tests
{
  import flash.events.Event;
  import asunit.framework.TestCase;

  public class TestMagineStagadan extends TestCase
  {

    public function TestMagineStagadan():void
    {
      super("test");
    }
    public function test():void
    {
      Subjects.reset();
      var array1:Array=[">edyn.magine(stagadan)",Texts.I_MAGINE_SUCCESS.replace("%1","Stagadan"),Texts.STAGADAN_CATCH_PHRASE,"Edyn lost 100 energy!  She now has 900 energy!"];
      var array2:Array=new InputParser("edyn.magine(stagadan)").returns;
      for(var i:uint=0;i<array1.length||i<array2.length;i++)
      {
        assertEquals(array1[i],array2[i]);
      }
    }
  }
}
