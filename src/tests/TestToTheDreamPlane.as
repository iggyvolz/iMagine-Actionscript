package tests
{
  import asunit.framework.TestCase;

  public class TestToTheDreamPlane extends TestCase
  {

    public function TestToTheDreamPlane(testMethod:String)
    {
      super(testMethod);
    }
    public function BasicTestToTheDreamPlane():void
    {
      var array1:Array=[Texts.TO_THE_DREAM_PLANE.replace("%1","Furok")];
      var array2:Array=new InputParser("furok.tothedreamplane").returns;
      for(var i:uint=0;i<array1.length||i<array2.length;i++)
      {
        assertEquals(array1[i],array2[i]);
      }
    }
    public function TestToTheDreamPlaneAgain():void
    {
      var array1:Array=[Texts.ANIMITE_IN_DREAM_PLANE.replace("%1","Furok")];
      var array2:Array=new InputParser("furok.tothedreamplane").returns;
      for(var i:uint=0;i<array1.length||i<array2.length;i++)
      {
        assertEquals(array1[i],array2[i]);
      }
    }
  }
}
