package testsuite.tests.auto
{
  import flash.events.Event;
  import asunit.framework.TestCase;

  public class TestToTheDreamPlaneVulbor extends TestCase
  {

    public function TestToTheDreamPlaneVulbor():void
    {
      super("test");
    }
    public function test():void
    {
      Subjects.reset();
      new InputParser("strag.magine(vulbor)").returns;
      var array1:Array=[">vulbor.tothedreamplane()",Texts.TO_THE_DREAM_PLANE.replace("%1","Vulbor")];
      var array2:Array=new InputParser("vulbor.tothedreamplane()").returns;
      for(var i:uint=0;i<array1.length||i<array2.length;i++)
      {
        assertEquals(array1[i],array2[i]);
      }
    }
  }
}
