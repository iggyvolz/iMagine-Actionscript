package testsuite.tests.manual
{
  import flash.events.Event;
  import asunit.framework.TestCase;

  public class TestToTheDreamPlaneAgain extends TestCase
  {

    public function TestToTheDreamPlaneAgain()
    {
      super("test");
    }
    public function test():void
    {
      Subjects.reset();
      var array1:Array=[">furok.tothedreamplane",Texts.ANIMITE_IN_DREAM_PLANE.replace("%1","Furok")];
      var array2:Array=new InputParser("furok.tothedreamplane").returns;
      for(var i:uint=0;i<array1.length||i<array2.length;i++)
      {
        assertEquals(array1[i],array2[i]);
      }
    }
  }
}
