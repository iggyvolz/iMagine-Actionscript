package testsuite.tests.auto
{
  import flash.events.Event;
  import asunit.framework.TestCase;

  public class TestToTheDreamPlaneGarganor extends TestCase
  {

    public function TestToTheDreamPlaneGarganor():void
    {
      super("test");
    }
    public function test():void
    {
      Subjects.reset();
      new InputParser("strag.magine(garganor)").returns;
      var array1:Array=[">garganor.tothedreamplane()",Texts.TO_THE_DREAM_PLANE.replace("%1","Garganor")];
      var array2:Array=new InputParser("garganor.tothedreamplane()").returns;
      for(var i:uint=0;i<array1.length||i<array2.length;i++)
      {
        assertEquals(array1[i],array2[i]);
      }
    }
  }
}
