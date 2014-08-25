package tests
{
  import flash.events.Event;
  import asunit.framework.TestCase;

  public class TestMagineCaveRudwott extends TestCase
  {

    public function TestMagineCaveRudwott():void
    {
      super("test");
    }
    public function test():void
    {
      Subjects.reset();
      var array1:Array=[">tony.magine(caverudwott)",Texts.I_MAGINE_SUCCESS.replace("%1","CaveRudwott"),Texts.CAVE_RUDWOTT_CATCH_PHRASE,Subjects.SUBJECT_NAMES[0].ucfirst()+" lost 100 energy!  He now has 900 energy!"];
      var array2:Array=new InputParser("tony.magine(caverudwott)").returns;
      for(var i:uint=0;i<array1.length||i<array2.length;i++)
      {
        assertEquals(array1[i],array2[i]);
      }
    }
  }
}
