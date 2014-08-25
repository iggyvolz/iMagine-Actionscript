package tests
{
  import flash.events.Event;
  import asunit.framework.TestCase;

  public class TestMagineBaldar extends TestCase
  {

    public function TestMagineBaldar():void
    {
      super("test");
    }
    public function test():void
    {
      Subjects.reset();
      addEventListener(Event.ENTER_FRAME,testAfterEnterFrame);
    }
    public function testAfterEnterFrame():void
    {
      var array1:Array=[">tony.magine(baldar)",Texts.I_MAGINE_SUCCESS.replace("%1","Baldar"),Texts.BALDAR_CATCH_PHRASE,Subjects.SUBJECT_NAMES[0].ucfirst()+" lost 100 energy!  He now has 900 energy!"];
      var array2:Array=new InputParser("tony.magine(baldar)").returns;
      for(var i:uint=0;i<array1.length||i<array2.length;i++)
      {
        assertEquals(array1[i],array2[i]);
      }
    }
  }
}
