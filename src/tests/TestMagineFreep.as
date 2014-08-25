package tests
{
  import flash.events.Event;
  import asunit.framework.TestCase;

  public class TestMagineFreep extends TestCase
  {

    public function TestMagineFreep():void
    {
      super("test");
    }
    public function test():void
    {
      Subjects.reset();
      var array1:Array=[">strag.magine(freep)",Texts.I_MAGINE_SUCCESS.replace("%1","Freep"),Texts.FREEP_CATCH_PHRASE,"Strag lost 100 energy!  He now has 900 energy!"];
      var array2:Array=new InputParser("strag.magine(freep)").returns;
      for(var i:uint=0;i<array1.length||i<array2.length;i++)
      {
        assertEquals(array1[i],array2[i]);
      }
    }
  }
}
