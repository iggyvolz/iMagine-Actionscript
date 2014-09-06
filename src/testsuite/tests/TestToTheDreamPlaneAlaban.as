package tests
{
  import flash.events.Event;
  import asunit.framework.TestCase;

  public class TestToTheDreamPlaneAlaban extends TestCase
  {

    public function TestToTheDreamPlaneAlaban():void
    {
      super("test");
    }
    public function test():void
    {
      Subjects.reset();
      new InputParser("tony.magine(alaban)").returns;
      var array1:Array=[">alaban.tothedreamplane()",Texts.TO_THE_DREAM_PLANE.replace("%1","Alaban")];
      var array2:Array=new InputParser("alaban.tothedreamplane()").returns;
      for(var i:uint=0;i<array1.length||i<array2.length;i++)
      {
        assertEquals(array1[i],array2[i]);
      }
    }
  }
}
