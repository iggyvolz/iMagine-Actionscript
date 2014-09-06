package testsuite.tests.auto
{
  import flash.events.Event;
  import asunit.framework.TestCase;

  public class TestToTheDreamPlaneParathin extends TestCase
  {

    public function TestToTheDreamPlaneParathin():void
    {
      super("test");
    }
    public function test():void
    {
      Subjects.reset();
      new InputParser("tony.magine(parathin)").returns;
      var array1:Array=[">parathin.tothedreamplane()",Texts.TO_THE_DREAM_PLANE.replace("%1","Parathin")];
      var array2:Array=new InputParser("parathin.tothedreamplane()").returns;
      for(var i:uint=0;i<array1.length||i<array2.length;i++)
      {
        assertEquals(array1[i],array2[i]);
      }
    }
  }
}
