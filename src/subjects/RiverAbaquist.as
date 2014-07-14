package subjects {
  import Subjects;
  import flash.events.*;
  /**
   * @author iggyvolz
   */
  public class RiverAbaquist extends DreamCreature {
    public function RiverAbaquist() {
      creatureName="River Abaquist";
      inDreamPlane=true;
      catchPhrase=Texts.RIVER_ABAQUIST_CATCH_PHRASE;
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
