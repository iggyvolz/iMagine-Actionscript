package testsuite.tests.auto
{
  import flash.events.Event;
  import asunit.framework.TestCase;

  public class TestToTheDreamPlaneUgger extends TestCase
  {

    public function TestToTheDreamPlaneUgger():void
    {
      super("test");
    }
    public function test():void
    {
      Subjects.reset();
      new InputParser("edyn.magine(ugger)").returns;
      var array1:Array=[">ugger.tothedreamplane()",Texts.TO_THE_DREAM_PLANE.replace("%1","Ugger")];
      var array2:Array=new InputParser("ugger.tothedreamplane()").returns;
      for(var i:uint=0;i<array1.length||i<array2.length;i++)
      {
        assertEquals(array1[i],array2[i]);
      }
    }
  }
}
