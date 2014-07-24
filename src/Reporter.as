package {
  import flash.utils.ByteArray;
  public class Reporter
  {
    public function Reporter(testTimes:Array,fFailures:Array,fErrors:Array):void
    {
      trace(JSON.stringify({"testTimes":handleTestTimes(testTimes),"fFailures":handleFailures(fFailures),"fErrors":handleFailures(fErrors)}));
    }
    public function handleTestTimes(testTimes:Array):Object
    {
      var toReturn:Object={};
      var testTimesString:String="";
      var testTimesArray:Array=[];
      for(var i:uint=0;i<testTimes.length;i++)
      {
        testTimesString=testTimes[i];
        testTimesArray=handleTestTimesString(testTimesString);
        toReturn[testTimesArray[0]]=testTimesArray[1];
      }
      return toReturn;
    }
    public function handleTestTimesString(testTimesString:String):Array
    {
      // 65ms : tests::TestMagine => [TestMagine,65]
      var first:String="";
      var second:uint=0;
      first=cloneString(testTimesString).split("::")[1];
      second=cloneString(testTimesString).split("ms")[0];
      return [first,second];
    }
    public function cloneString(testTimesString:String):String
    {
      var myBA:ByteArray = new ByteArray();
      myBA.writeObject(testTimesString);
      myBA.position = 0;
      return(myBA.readObject());
    }
    public function handleFailures(fFailures:Array):Array
    {
      var toReturn:Array=[];
      for(var i:uint=0;i<fFailures.length;i++)
      {
        toReturn.push({"thrownException":fFailures[i].thrownException(),"failedTest":fFailures[i].failedTest().getName()});
      }
      return toReturn;
    }
  }
}
