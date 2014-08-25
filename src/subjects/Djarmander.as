package subjects {
  import Subjects;
  import flash.events.*;
  /**
   * @author iggyvolz
   */
  public class Djarmander extends DreamCreature {
    public function Djarmander() {
      creatureName="Djarmander";
      inDreamPlane=true;
      catchPhrase=Texts.DJARMANDER_CATCH_PHRASE;
      Subjects.theStage.addEventListener("ownersReady",setOwner);
    }
    public function setOwner(e:*):void
    {
      e;
      Subjects.theStage.removeEventListener("ownersReady",setOwner);
      owner=Subjects.SUBJECT_OBJECTS[Subjects.SUBJECT_NAMES.indexOf("tony")];
    }
    public function icebolt(args:Array):Array
    {
      var targetName:String=args[0];
      var toReturn:Array=[];
      if(Subjects.SUBJECT_NAMES.indexOf(targetName)==-1)
      {
        return [Texts.SUBJECT_NOT_FOUND.replace("%1",args[0])];
      }
      var targetObject:*=Subjects.SUBJECT_OBJECTS[Subjects.SUBJECT_NAMES.indexOf(targetName)];
      toReturn=toReturn.concat(targetObject._damage(100));
      toReturn.push(Texts.DJARMANDER_ICE_BOLT);
      return toReturn;
    }
    public function freezeclaws(args:Array):Array
    {
      var targetName:String=args[0];
      var toReturn:Array=[];
      if(Subjects.SUBJECT_NAMES.indexOf(targetName)==-1)
      {
        return [Texts.SUBJECT_NOT_FOUND.replace("%1",args[0])];
      }
      var targetObject:*=Subjects.SUBJECT_OBJECTS[Subjects.SUBJECT_NAMES.indexOf(targetName)];
      toReturn=toReturn.concat(targetObject._damage(100));
      toReturn.push(Texts.DJARMANDER_FREEZE_CLAWS);
      return toReturn;
    }
    public function blizzardblast(args:Array):Array
    {
      var targetName:String=args[0];
      var toReturn:Array=[];
      if(Subjects.SUBJECT_NAMES.indexOf(targetName)==-1)
      {
        return [Texts.SUBJECT_NOT_FOUND.replace("%1",args[0])];
      }
      var targetObject:*=Subjects.SUBJECT_OBJECTS[Subjects.SUBJECT_NAMES.indexOf(targetName)];
      toReturn=toReturn.concat(targetObject._damage(100));
      toReturn.push(Texts.DJARMANDER_BLIZZARD_BLAST);
      return toReturn;
    }
  }
}
