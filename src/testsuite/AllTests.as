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
      addTest(new TestMagineAlaban());
      addTest(new TestMagineBabyOrathan());
      addTest(new TestMagineBalamant());
      addTest(new TestMagineBaldar());
      addTest(new TestMagineBisiwog());
      addTest(new TestMagineBrub());
      addTest(new TestMagineCarillion());
      addTest(new TestMagineCaveRudwott());
      addTest(new TestMagineDjarmander());
      addTest(new TestMagineDrowl());
      addTest(new TestMagineDrush());
      addTest(new TestMagineFoamotos());
      addTest(new TestMagineFreep());
      addTest(new TestMagineFurok());
      addTest(new TestMagineGarganor());
      addTest(new TestMagineGoogathan());
      addTest(new TestMagineGrassEtiki());
      addTest(new TestMagineHeppeswip());
      addTest(new TestMagineHubram());
      addTest(new TestMagineHubrum());
      addTest(new TestMagineIceArboll());
      addTest(new TestMagineLeafChogo());
      addTest(new TestMagineMossowing());
      addTest(new TestMagineObsis());
      addTest(new TestMagineOceanStrider());
      addTest(new TestMagineParathin());
      addTest(new TestMaginePrimroot());
      addTest(new TestMagineRiverAbaquist());
      addTest(new TestMagineRudwot());
      addTest(new TestMagineSaranther());
      addTest(new TestMagineSeveros());
      addTest(new TestMagineSilthGiant());
      addTest(new TestMagineStagadan());
      addTest(new TestMagineSzhar());
      addTest(new TestMagineToadDog());
      addTest(new TestMagineUgger());
      addTest(new TestMagineVulbor());
      addTest(new TestToTheDreamPlaneAlaban());
      addTest(new TestToTheDreamPlaneBabyOrathan());
      addTest(new TestToTheDreamPlaneBalamant());
      addTest(new TestToTheDreamPlaneBaldar());
      addTest(new TestToTheDreamPlaneBisiwog());
      addTest(new TestToTheDreamPlaneBrub());
      addTest(new TestToTheDreamPlaneCarillion());
      addTest(new TestToTheDreamPlaneCaveRudwott());
      addTest(new TestToTheDreamPlaneDjarmander());
      addTest(new TestToTheDreamPlaneDrowl());
      addTest(new TestToTheDreamPlaneDrush());
      addTest(new TestToTheDreamPlaneFoamotos());
      addTest(new TestToTheDreamPlaneFreep());
      addTest(new TestToTheDreamPlaneFurok());
      addTest(new TestToTheDreamPlaneGarganor());
      addTest(new TestToTheDreamPlaneGoogathan());
      addTest(new TestToTheDreamPlaneGrassEtiki());
      addTest(new TestToTheDreamPlaneHeppeswip());
      addTest(new TestToTheDreamPlaneHubram());
      addTest(new TestToTheDreamPlaneHubrum());
      addTest(new TestToTheDreamPlaneIceArboll());
      addTest(new TestToTheDreamPlaneLeafChogo());
      addTest(new TestToTheDreamPlaneMossowing());
      addTest(new TestToTheDreamPlaneObsis());
      addTest(new TestToTheDreamPlaneOceanStrider());
      addTest(new TestToTheDreamPlaneParathin());
      addTest(new TestToTheDreamPlanePrimroot());
      addTest(new TestToTheDreamPlaneRiverAbaquist());
      addTest(new TestToTheDreamPlaneRudwot());
      addTest(new TestToTheDreamPlaneSaranther());
      addTest(new TestToTheDreamPlaneSeveros());
      addTest(new TestToTheDreamPlaneSilthGiant());
      addTest(new TestToTheDreamPlaneStagadan());
      addTest(new TestToTheDreamPlaneSzhar());
      addTest(new TestToTheDreamPlaneToadDog());
      addTest(new TestToTheDreamPlaneUgger());
      addTest(new TestToTheDreamPlaneVulbor());
      addTest(new TestMagine());
      addTest(new TestMagineAgain());
      addTest(new TestToTheDreamPlane());
      addTest(new TestToTheDreamPlaneAgain());
    }
  }
}
