package tests
{
  import flash.events.Event;
  import asunit.framework.TestCase;

  public class TestMagineLeafChogo extends TestCase
  {

    public function TestMagineLeafChogo():void
    {
      super("test");
    }
    public function test():void
    {
      Subjects.reset();
      var array1:Array=[">edyn.magine(leafchogo)",Texts.I_MAGINE_SUCCESS.replace("%1","LeafChogo"),Texts.LEAF_CHOGO_CATCH_PHRASE,"Edyn lost 100 energy!  She now has 900 energy!"];
      var array2:Array=new InputParser("edyn.magine(leafchogo)").returns;
      for(var i:uint=0;i<array1.length||i<array2.length;i++)
      {
        assertEquals(array1[i],array2[i]);
      }
    }
  }
}
