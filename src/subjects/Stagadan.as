package subjects {
  import Subjects;
  import flash.events.*;
  /**
   * @author iggyvolz
   */
  public class Stagadan extends DreamCreature {
    public function Stagadan() {
      creatureName="Stagadan";
      inDreamPlane=true;
      catchPhrase=Texts.STAGADAN_CATCH_PHRASE;
      Subjects.theStage.addEventListener("ownersReady",setOwner);
    }
    public function setOwner(e:*):void
    {
      e;
      Subjects.theStage.removeEventListener("ownersReady",setOwner);
      owner=Subjects.SUBJECT_OBJECTS[Subjects.SUBJECT_NAMES.indexOf("edyn")];
    }
    public function hornblast(args:Array):Array
    {
      var targetName:String=args[0];
      var toReturn:Array=[];
      if(Subjects.SUBJECT_NAMES.indexOf(targetName)==-1)
      {
        return [Texts.SUBJECT_NOT_FOUND.replace("%1",args[0])];
      }
      var targetObject:*=Subjects.SUBJECT_OBJECTS[Subjects.SUBJECT_NAMES.indexOf(targetName)];
      toReturn=toReturn.concat(targetObject._damage(100));
      toReturn.push(Texts.STAGADAN_HORN_BLAST);
      return toReturn;
    }
    public function leaflash(args:Array):Array
    {
      var targetName:String=args[0];
      var toReturn:Array=[];
      if(Subjects.SUBJECT_NAMES.indexOf(targetName)==-1)
      {
        return [Texts.SUBJECT_NOT_FOUND.replace("%1",args[0])];
      }
      var targetObject:*=Subjects.SUBJECT_OBJECTS[Subjects.SUBJECT_NAMES.indexOf(targetName)];
      toReturn=toReturn.concat(targetObject._damage(100));
      toReturn.push(Texts.STAGADAN_LEAF_LASH);
      return toReturn;
    }
    public function leafswirl(args:Array):Array
    {
      var targetName:String=args[0];
      var toReturn:Array=[];
      if(Subjects.SUBJECT_NAMES.indexOf(targetName)==-1)
      {
        return [Texts.SUBJECT_NOT_FOUND.replace("%1",args[0])];
      }
      var targetObject:*=Subjects.SUBJECT_OBJECTS[Subjects.SUBJECT_NAMES.indexOf(targetName)];
      toReturn=toReturn.concat(targetObject._damage(100));
      toReturn.push(Texts.STAGADAN_LEAF_SWIRL);
      return toReturn;
    }
  }
}
