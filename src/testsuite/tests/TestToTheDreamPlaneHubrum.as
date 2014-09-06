package tests
{
  import flash.events.Event;
  import asunit.framework.TestCase;

  public class TestToTheDreamPlaneHubrum extends TestCase
  {

    public function TestToTheDreamPlaneHubrum():void
    {
      super("test");
    }
    public function test():void
    {
      Subjects.reset();
      new InputParser("strag.magine(hubrum)").returns;
      var array1:Array=[">hubrum.tothedreamplane()",Texts.TO_THE_DREAM_PLANE.replace("%1","Hubrum")];
      var array2:Array=new InputParser("hubrum.tothedreamplane()").returns;
      for(var i:uint=0;i<array1.length||i<array2.length;i++)
      {
        assertEquals(array1[i],array2[i]);
      }
    }
  }
}
