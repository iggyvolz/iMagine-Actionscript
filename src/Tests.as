package {
  import asunit.textui.TestRunner;
  import asunit.framework.TestResult;
  import asunit.textui.ResultPrinter;
  import flash.display.Sprite;
  import flash.events.*;
  import testsuite.AllTests;
  import flash.text.TextField;
  public class Tests extends Sprite
  {
    public var testResult:TestResult;
    public var text:String="";
    public var f:uint=0;
    public var unittests:TestRunner;
    public function Tests():void
    {
      Subjects.theStage=stage;
      new iMagine;
      stage.addEventListener(Event.ENTER_FRAME,handleEnterFrame);
    }
    public function handleEnterFrame(e:*):void
    {
      e;
      f++;
      if(f==2)
      {
        unittests = new TestRunner();
        stage.addChild(unittests);
        testResult=unittests.start(tests.AllTests, null, TestRunner.SHOW_TRACE);
      }
      if(f>2&&tests.AllTests.api.testCount()==tests.AllTests.api.testsCompleteCount)
      {
        //new Reporter(unittests.getPrinter().testTimes,testResult.fFailures,testResult.fErrors);
        stage.removeEventListener(Event.ENTER_FRAME,handleEnterFrame);
      }
    }
  }
}
