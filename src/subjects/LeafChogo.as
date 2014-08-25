package subjects {
  import Subjects;
  import flash.events.*;
  /**
   * @author iggyvolz
   */
  public class LeafChogo extends DreamCreature {
    public function LeafChogo() {
      creatureName="Leaf Chogo";
      inDreamPlane=true;
      catchPhrase=Texts.LEAF_CHOGO_CATCH_PHRASE;
      Subjects.theStage.addEventListener("ownersReady",setOwner);
    }
    public function setOwner(e:*):void
    {
      e;
      Subjects.theStage.removeEventListener("ownersReady",setOwner);
      owner=Subjects.SUBJECT_OBJECTS[Subjects.SUBJECT_NAMES.indexOf("edyn")];
    }
  }
}
