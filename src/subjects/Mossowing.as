package subjects {
  import Subjects;
  import flash.events.*;
  /**
   * @author iggyvolz
   */
  public class Mossowing extends DreamCreature {
    public function Mossowing() {
      creatureName="Mossowing";
      inDreamPlane=true;
      catchPhrase=Texts.MOSSOWING_CATCH_PHRASE;
      Subjects.theStage.addEventListener("ownersReady",setOwner);
    }
    public function setOwner(e:*):void
    {
      e;
      Subjects.theStage.removeEventListener("ownersReady",setOwner);
      owner=Subjects.SUBJECT_OBJECTS[Subjects.SUBJECT_NAMES.indexOf("strag")];
    }
  }
}
