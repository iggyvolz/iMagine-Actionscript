package tests
{
  import flash.events.Event;
  import asunit.framework.TestCase;

  public class TestToTheDreamPlane%UCFIRSTCREATURE% extends TestCase
  {

    public function TestToTheDreamPlane%UCFIRSTCREATURE%():void
    {
      super("test");
    }
    public function test():void
    {
      Subjects.reset();
      new InputParser("%OWNER%.magine(%LCCREATURE%)").returns;
      var array1:Array=[">%LCCREATURE%.tothedreamplane()",Texts.TO_THE_DREAM_PLANE.replace("%1","%PARSEDCREATURE%")];
      var array2:Array=new InputParser("%LCCREATURE%.tothedreamplane()").returns;
      for(var i:uint=0;i<array1.length||i<array2.length;i++)
      {
        assertEquals(array1[i],array2[i]);
      }
    }
  }
}
