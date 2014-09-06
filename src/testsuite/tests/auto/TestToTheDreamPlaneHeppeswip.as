package testsuite.tests.auto
{
  import flash.events.Event;
  import asunit.framework.TestCase;

  public class TestToTheDreamPlaneHeppeswip extends TestCase
  {

    public function TestToTheDreamPlaneHeppeswip():void
    {
      super("test");
    }
    public function test():void
    {
      Subjects.reset();
      new InputParser("tony.magine(heppeswip)").returns;
      var array1:Array=[">heppeswip.tothedreamplane()",Texts.TO_THE_DREAM_PLANE.replace("%1","Heppeswip")];
      var array2:Array=new InputParser("heppeswip.tothedreamplane()").returns;
      for(var i:uint=0;i<array1.length||i<array2.length;i++)
      {
        assertEquals(array1[i],array2[i]);
      }
    }
  }
}
