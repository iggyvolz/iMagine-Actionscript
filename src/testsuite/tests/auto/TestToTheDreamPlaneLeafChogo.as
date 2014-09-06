package testsuite.tests.auto
{
  import flash.events.Event;
  import asunit.framework.TestCase;

  public class TestToTheDreamPlaneLeafChogo extends TestCase
  {

    public function TestToTheDreamPlaneLeafChogo():void
    {
      super("test");
    }
    public function test():void
    {
      Subjects.reset();
      new InputParser("edyn.magine(leafchogo)").returns;
      var array1:Array=[">leafchogo.tothedreamplane()",Texts.TO_THE_DREAM_PLANE.replace("%1","Leaf Chogo")];
      var array2:Array=new InputParser("leafchogo.tothedreamplane()").returns;
      for(var i:uint=0;i<array1.length||i<array2.length;i++)
      {
        assertEquals(array1[i],array2[i]);
      }
    }
  }
}
