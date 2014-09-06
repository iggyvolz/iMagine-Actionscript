package tests
{
  import flash.events.Event;
  import asunit.framework.TestCase;

  public class TestMagine%UCFIRSTCREATURE% extends TestCase
  {

    public function TestMagine%UCFIRSTCREATURE%():void
    {
      super("test");
    }
    public function test():void
    {
      Subjects.reset();
      var array1:Array=[">%OWNER%.magine(%LCCREATURE%)",Texts.I_MAGINE_SUCCESS.replace("%1","%PARSEDCREATURE%"),Texts.%UCCREATURE%_CATCH_PHRASE,"%UCOWNER% lost 100 energy!  %OWNER_GENDER% now has 900 energy!"];
      var array2:Array=new InputParser("%OWNER%.magine(%LCCREATURE%)").returns;
      for(var i:uint=0;i<array1.length||i<array2.length;i++)
      {
        assertEquals(array1[i],array2[i]);
      }
    }
  }
}
