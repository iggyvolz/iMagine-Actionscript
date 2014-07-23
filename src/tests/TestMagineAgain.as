package tests
{
  import asunit.framework.TestCase;

  public class TestMagineAgain extends TestCase
  {

    public function TestMagineAgain():void
    {
      super("test");
    }
    public function test():void
    {
      var array1:Array=[">i.magine(furok)",Texts.ALREADY_IN_BATTLE.replace("%1","Furok")];
      var array2:Array=new InputParser("i.magine(furok)").returns;
      for(var i:uint=0;i<array1.length||i<array2.length;i++)
      {
        assertEquals(array1[i],array2[i]);
      }
    }
  }
}
