package tests
{
  import flash.events.Event;
  import asunit.framework.TestCase;

  public class TestToTheDreamPlaneHubram extends TestCase
  {

    public function TestToTheDreamPlaneHubram():void
    {
      super("test");
    }
    public function test():void
    {
      Subjects.reset();
      new InputParser("tony.magine(hubram)").returns;
      var array1:Array=[">hubram.tothedreamplane()",Texts.TO_THE_DREAM_PLANE.replace("%1","Hubram")];
      var array2:Array=new InputParser("hubram.tothedreamplane()").returns;
      for(var i:uint=0;i<array1.length||i<array2.length;i++)
      {
        assertEquals(array1[i],array2[i]);
      }
    }
  }
}
