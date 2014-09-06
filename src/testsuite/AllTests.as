package testsuite
{
  import asunit.framework.TestSuite;
  import testsuite.tests.auto.*;
  import testsuite.tests.manual.*;

  public class AllTests extends TestSuite
  {
    public static var api:AllTests=null;
    public function AllTests()
    {
      api=this;
      super();
      addTest(new TestTestMagineAlaban());
      addTest(new TestTestMagineBabyOrathan());
      addTest(new TestTestMagineBalamant());
      addTest(new TestTestMagineBaldar());
      addTest(new TestTestMagineBisiwog());
      addTest(new TestTestMagineBrub());
      addTest(new TestTestMagineCarillion());
      addTest(new TestTestMagineCaveRudwott());
      addTest(new TestTestMagineDjarmander());
      addTest(new TestTestMagineDrowl());
      addTest(new TestTestMagineDrush());
      addTest(new TestTestMagineFoamotos());
      addTest(new TestTestMagineFreep());
      addTest(new TestTestMagineFurok());
      addTest(new TestTestMagineGarganor());
      addTest(new TestTestMagineGoogathan());
      addTest(new TestTestMagineGrassEtiki());
      addTest(new TestTestMagineHeppeswip());
      addTest(new TestTestMagineHubram());
      addTest(new TestTestMagineHubrum());
      addTest(new TestTestMagineIceArboll());
      addTest(new TestTestMagineLeafChogo());
      addTest(new TestTestMagineMossowing());
      addTest(new TestTestMagineObsis());
      addTest(new TestTestMagineOceanStrider());
      addTest(new TestTestMagineParathin());
      addTest(new TestTestMaginePrimroot());
      addTest(new TestTestMagineRiverAbaquist());
      addTest(new TestTestMagineRudwot());
      addTest(new TestTestMagineSaranther());
      addTest(new TestTestMagineSeveros());
      addTest(new TestTestMagineSilthGiant());
      addTest(new TestTestMagineStagadan());
      addTest(new TestTestMagineSzhar());
      addTest(new TestTestMagineToadDog());
      addTest(new TestTestMagineUgger());
      addTest(new TestTestMagineVulbor());
      addTest(new TestTestToTheDreamPlaneAlaban());
      addTest(new TestTestToTheDreamPlaneBabyOrathan());
      addTest(new TestTestToTheDreamPlaneBalamant());
      addTest(new TestTestToTheDreamPlaneBaldar());
      addTest(new TestTestToTheDreamPlaneBisiwog());
      addTest(new TestTestToTheDreamPlaneBrub());
      addTest(new TestTestToTheDreamPlaneCarillion());
      addTest(new TestTestToTheDreamPlaneCaveRudwott());
      addTest(new TestTestToTheDreamPlaneDjarmander());
      addTest(new TestTestToTheDreamPlaneDrowl());
      addTest(new TestTestToTheDreamPlaneDrush());
      addTest(new TestTestToTheDreamPlaneFoamotos());
      addTest(new TestTestToTheDreamPlaneFreep());
      addTest(new TestTestToTheDreamPlaneFurok());
      addTest(new TestTestToTheDreamPlaneGarganor());
      addTest(new TestTestToTheDreamPlaneGoogathan());
      addTest(new TestTestToTheDreamPlaneGrassEtiki());
      addTest(new TestTestToTheDreamPlaneHeppeswip());
      addTest(new TestTestToTheDreamPlaneHubram());
      addTest(new TestTestToTheDreamPlaneHubrum());
      addTest(new TestTestToTheDreamPlaneIceArboll());
      addTest(new TestTestToTheDreamPlaneLeafChogo());
      addTest(new TestTestToTheDreamPlaneMossowing());
      addTest(new TestTestToTheDreamPlaneObsis());
      addTest(new TestTestToTheDreamPlaneOceanStrider());
      addTest(new TestTestToTheDreamPlaneParathin());
      addTest(new TestTestToTheDreamPlanePrimroot());
      addTest(new TestTestToTheDreamPlaneRiverAbaquist());
      addTest(new TestTestToTheDreamPlaneRudwot());
      addTest(new TestTestToTheDreamPlaneSaranther());
      addTest(new TestTestToTheDreamPlaneSeveros());
      addTest(new TestTestToTheDreamPlaneSilthGiant());
      addTest(new TestTestToTheDreamPlaneStagadan());
      addTest(new TestTestToTheDreamPlaneSzhar());
      addTest(new TestTestToTheDreamPlaneToadDog());
      addTest(new TestTestToTheDreamPlaneUgger());
      addTest(new TestTestToTheDreamPlaneVulbor());
      addTest(new TestTestMagine());
      addTest(new TestTestMagineAgain());
      addTest(new TestTestToTheDreamPlane());
      addTest(new TestTestToTheDreamPlaneAgain());
    }
  }
}
