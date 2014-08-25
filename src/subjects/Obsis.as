package subjects {
  import Subjects;
  import flash.events.*;
  /**
   * @author iggyvolz
   */
  public class Obsis extends DreamCreature {
    public function Obsis() {
      creatureName="Obsis";
      inDreamPlane=true;
      catchPhrase=Texts.OBSIS_CATCH_PHRASE;
      Subjects.theStage.addEventListener("ownersReady",setOwner);
    }
    public function setOwner(e:*):void
    {
      e;
      Subjects.theStage.removeEventListener("ownersReady",setOwner);
      owner=Subjects.SUBJECT_OBJECTS[Subjects.SUBJECT_NAMES.indexOf("tony")];
    }
  }
}
