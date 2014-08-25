package tests
{
  import flash.events.Event;
  import asunit.framework.TestCase;

  public class TestMagineSilthGiant extends TestCase
  {

    public function TestMagineSilthGiant():void
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
      var array1:Array=[">tony.magine(silthgiant)",Texts.I_MAGINE_SUCCESS.replace("%1","SilthGiant"),Texts.SILTH_GIANT_CATCH_PHRASE,Subjects.SUBJECT_NAMES[0].ucfirst()+" lost 100 energy!  He now has 900 energy!"];
      var array2:Array=new InputParser("tony.magine(silthgiant)").returns;
      for(var i:uint=0;i<array1.length||i<array2.length;i++)
      {
        assertEquals(array1[i],array2[i]);
      }
    }
  }
}
