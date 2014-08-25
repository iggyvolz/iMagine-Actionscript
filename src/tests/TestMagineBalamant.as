package tests
{
  import flash.events.Event;
  import asunit.framework.TestCase;

  public class TestMagineBalamant extends TestCase
  {

    public function TestMagineBalamant():void
    {
      super("test");
    }
    public function test():void
    {
      Subjects.reset();
      var array1:Array=[">edyn.magine(balamant)",Texts.I_MAGINE_SUCCESS.replace("%1","Balamant"),Texts.BALAMANT_CATCH_PHRASE,"Edyn lost 100 energy!  She now has 900 energy!"];
      var array2:Array=new InputParser("edyn.magine(balamant)").returns;
      for(var i:uint=0;i<array1.length||i<array2.length;i++)
      {
        assertEquals(array1[i],array2[i]);
      }
    }
  }
}
