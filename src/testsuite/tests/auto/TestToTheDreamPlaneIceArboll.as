package testsuite.tests.auto
{
  import flash.events.Event;
  import asunit.framework.TestCase;

  public class TestToTheDreamPlaneIceArboll extends TestCase
  {

    public function TestToTheDreamPlaneIceArboll():void
    {
      super("test");
    }
    public function test():void
    {
      Subjects.reset();
      new InputParser("strag.magine(icearboll)").returns;
      var array1:Array=[">icearboll.tothedreamplane()",Texts.TO_THE_DREAM_PLANE.replace("%1","Ice Arboll")];
      var array2:Array=new InputParser("icearboll.tothedreamplane()").returns;
      for(var i:uint=0;i<array1.length||i<array2.length;i++)
      {
        assertEquals(array1[i],array2[i]);
      }
    }
  }
}
