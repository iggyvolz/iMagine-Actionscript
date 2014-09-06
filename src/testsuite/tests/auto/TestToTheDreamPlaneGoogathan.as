package testsuite.tests.auto
{
  import flash.events.Event;
  import asunit.framework.TestCase;

  public class TestToTheDreamPlaneGoogathan extends TestCase
  {

    public function TestToTheDreamPlaneGoogathan():void
    {
      super("test");
    }
    public function test():void
    {
      Subjects.reset();
      new InputParser("tony.magine(googathan)").returns;
      var array1:Array=[">googathan.tothedreamplane()",Texts.TO_THE_DREAM_PLANE.replace("%1","Googathan")];
      var array2:Array=new InputParser("googathan.tothedreamplane()").returns;
      for(var i:uint=0;i<array1.length||i<array2.length;i++)
      {
        assertEquals(array1[i],array2[i]);
      }
    }
  }
}
