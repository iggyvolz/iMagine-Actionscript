package {
  import asunit.textui.TestRunner;
  import flash.display.Sprite;
  import flash.events.*;
  import tests.AllTests;
  public class Tests extends Sprite
  {
    public function Tests():void
    {
      new iMagine;
      stage.addEventListener(Event.ENTER_FRAME,runTests);
    }
    public function runTests(e:*):void
    {
      e;
      stage.removeEventListener(Event.ENTER_FRAME,runTests);
      var unittests:TestRunner = new TestRunner();
      stage.addChild(unittests);
      unittests.start(tests.AllTests, null, TestRunner.SHOW_TRACE);
    }
  }
}
