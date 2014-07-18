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
      addEventListener(Event.ENTER_FRAME,setOwner);
    }
    public function setOwner(e:*):void
    {
      e;
      removeEventListener(Event.ENTER_FRAME,setOwner);
      owner=Subjects.SUBJECT_OBJECTS[Subjects.SUBJECT_NAMES.indexOf("tony")];
    }
  }
}
