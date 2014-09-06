package testsuite.tests.auto
{
  import flash.events.Event;
  import asunit.framework.TestCase;

  public class TestToTheDreamPlaneBrub extends TestCase
  {

    public function TestToTheDreamPlaneBrub():void
    {
      super("test");
    }
    public function test():void
    {
      Subjects.reset();
      new InputParser("edyn.magine(brub)").returns;
      var array1:Array=[">brub.tothedreamplane()",Texts.TO_THE_DREAM_PLANE.replace("%1","Brub")];
      var array2:Array=new InputParser("brub.tothedreamplane()").returns;
      for(var i:uint=0;i<array1.length||i<array2.length;i++)
      {
        assertEquals(array1[i],array2[i]);
      }
    }
  }
}
