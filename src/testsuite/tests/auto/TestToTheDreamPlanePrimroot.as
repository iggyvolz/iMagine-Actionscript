package testsuite.tests.auto
{
  import flash.events.Event;
  import asunit.framework.TestCase;

  public class TestToTheDreamPlanePrimroot extends TestCase
  {

    public function TestToTheDreamPlanePrimroot():void
    {
      super("test");
    }
    public function test():void
    {
      Subjects.reset();
      new InputParser("strag.magine(primroot)").returns;
      var array1:Array=[">primroot.tothedreamplane()",Texts.TO_THE_DREAM_PLANE.replace("%1","Primroot")];
      var array2:Array=new InputParser("primroot.tothedreamplane()").returns;
      for(var i:uint=0;i<array1.length||i<array2.length;i++)
      {
        assertEquals(array1[i],array2[i]);
      }
    }
  }
}
