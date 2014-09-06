package testsuite.tests.auto
{
  import flash.events.Event;
  import asunit.framework.TestCase;

  public class TestToTheDreamPlaneToadDog extends TestCase
  {

    public function TestToTheDreamPlaneToadDog():void
    {
      super("test");
    }
    public function test():void
    {
      Subjects.reset();
      new InputParser("strag.magine(toaddog)").returns;
      var array1:Array=[">toaddog.tothedreamplane()",Texts.TO_THE_DREAM_PLANE.replace("%1","Toad Dog")];
      var array2:Array=new InputParser("toaddog.tothedreamplane()").returns;
      for(var i:uint=0;i<array1.length||i<array2.length;i++)
      {
        assertEquals(array1[i],array2[i]);
      }
    }
  }
}
