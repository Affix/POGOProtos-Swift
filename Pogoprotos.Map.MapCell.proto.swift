// Generated by the Protocol Buffers 3.0 compiler.  DO NOT EDIT!
// Source file "MapCell.proto"
// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct Pogoprotos { public struct Map { }}

public func == (lhs: Pogoprotos.Map.MapCell, rhs: Pogoprotos.Map.MapCell) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasS2CellId == rhs.hasS2CellId) && (!lhs.hasS2CellId || lhs.s2CellId == rhs.s2CellId)
  fieldCheck = fieldCheck && (lhs.hasCurrentTimestampMs == rhs.hasCurrentTimestampMs) && (!lhs.hasCurrentTimestampMs || lhs.currentTimestampMs == rhs.currentTimestampMs)
  fieldCheck = fieldCheck && (lhs.forts == rhs.forts)
  fieldCheck = fieldCheck && (lhs.spawnPoints == rhs.spawnPoints)
  fieldCheck = fieldCheck && (lhs.wildPokemons == rhs.wildPokemons)
  fieldCheck = fieldCheck && (lhs.deletedObjects == rhs.deletedObjects)
  fieldCheck = fieldCheck && (lhs.hasIsTruncatedList == rhs.hasIsTruncatedList) && (!lhs.hasIsTruncatedList || lhs.isTruncatedList == rhs.isTruncatedList)
  fieldCheck = fieldCheck && (lhs.fortSummaries == rhs.fortSummaries)
  fieldCheck = fieldCheck && (lhs.decimatedSpawnPoints == rhs.decimatedSpawnPoints)
  fieldCheck = fieldCheck && (lhs.catchablePokemons == rhs.catchablePokemons)
  fieldCheck = fieldCheck && (lhs.nearbyPokemons == rhs.nearbyPokemons)
  fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
  return fieldCheck
}

public extension Pogoprotos.Map {
  public struct MapCellRoot {
    public static var sharedInstance : MapCellRoot {
     struct Static {
         static let instance : MapCellRoot = MapCellRoot()
     }
     return Static.instance
    }
    public var extensionRegistry:ExtensionRegistry

    init() {
      extensionRegistry = ExtensionRegistry()
      registerAllExtensions(extensionRegistry)
      Pogoprotos.Map.SpawnPointRoot.sharedInstance.registerAllExtensions(extensionRegistry)
      Pogoprotos.Map.Fort.FortDataRoot.sharedInstance.registerAllExtensions(extensionRegistry)
      Pogoprotos.Map.Fort.FortSummaryRoot.sharedInstance.registerAllExtensions(extensionRegistry)
      Pogoprotos.Map.Pokemon.NearbyPokemonRoot.sharedInstance.registerAllExtensions(extensionRegistry)
      Pogoprotos.Map.Pokemon.WildPokemonRoot.sharedInstance.registerAllExtensions(extensionRegistry)
      Pogoprotos.Map.Pokemon.MapPokemonRoot.sharedInstance.registerAllExtensions(extensionRegistry)
    }
    public func registerAllExtensions(registry:ExtensionRegistry) {
    }
  }

  // A cell is a geographical "zone" containing objects like pokemon, gyms, and pokestops.
  final public class MapCell : GeneratedMessage, GeneratedMessageProtocol {
    // S2 geographic area that the cell covers (http://s2map.com/) (https://code.google.com/archive/p/s2-geometry-library/)
    public private(set) var hasS2CellId:Bool = false
    public private(set) var s2CellId:UInt64 = UInt64(0)

    public private(set) var hasCurrentTimestampMs:Bool = false
    public private(set) var currentTimestampMs:Int64 = Int64(0)

    public private(set) var forts:Array<Pogoprotos.Map.Fort.FortData>  = Array<Pogoprotos.Map.Fort.FortData>()
    public private(set) var spawnPoints:Array<Pogoprotos.Map.SpawnPoint>  = Array<Pogoprotos.Map.SpawnPoint>()
    public private(set) var deletedObjects:Array<String> = Array<String>()
    public private(set) var hasIsTruncatedList:Bool = false
    public private(set) var isTruncatedList:Bool = false

    public private(set) var fortSummaries:Array<Pogoprotos.Map.Fort.FortSummary>  = Array<Pogoprotos.Map.Fort.FortSummary>()
    public private(set) var decimatedSpawnPoints:Array<Pogoprotos.Map.SpawnPoint>  = Array<Pogoprotos.Map.SpawnPoint>()
    public private(set) var wildPokemons:Array<Pogoprotos.Map.Pokemon.WildPokemon>  = Array<Pogoprotos.Map.Pokemon.WildPokemon>()
    public private(set) var catchablePokemons:Array<Pogoprotos.Map.Pokemon.MapPokemon>  = Array<Pogoprotos.Map.Pokemon.MapPokemon>()
    public private(set) var nearbyPokemons:Array<Pogoprotos.Map.Pokemon.NearbyPokemon>  = Array<Pogoprotos.Map.Pokemon.NearbyPokemon>()
    required public init() {
         super.init()
    }
    override public func isInitialized() -> Bool {
     return true
    }
    override public func writeToCodedOutputStream(output:CodedOutputStream) throws {
      if hasS2CellId {
        try output.writeUInt64(1, value:s2CellId)
      }
      if hasCurrentTimestampMs {
        try output.writeInt64(2, value:currentTimestampMs)
      }
      for oneElementForts in forts {
          try output.writeMessage(3, value:oneElementForts)
      }
      for oneElementSpawnPoints in spawnPoints {
          try output.writeMessage(4, value:oneElementSpawnPoints)
      }
      for oneElementWildPokemons in wildPokemons {
          try output.writeMessage(5, value:oneElementWildPokemons)
      }
      if !deletedObjects.isEmpty {
        for oneValuedeletedObjects in deletedObjects {
          try output.writeString(6, value:oneValuedeletedObjects)
        }
      }
      if hasIsTruncatedList {
        try output.writeBool(7, value:isTruncatedList)
      }
      for oneElementFortSummaries in fortSummaries {
          try output.writeMessage(8, value:oneElementFortSummaries)
      }
      for oneElementDecimatedSpawnPoints in decimatedSpawnPoints {
          try output.writeMessage(9, value:oneElementDecimatedSpawnPoints)
      }
      for oneElementCatchablePokemons in catchablePokemons {
          try output.writeMessage(10, value:oneElementCatchablePokemons)
      }
      for oneElementNearbyPokemons in nearbyPokemons {
          try output.writeMessage(11, value:oneElementNearbyPokemons)
      }
      try unknownFields.writeToCodedOutputStream(output)
    }
    override public func serializedSize() -> Int32 {
      var serialize_size:Int32 = memoizedSerializedSize
      if serialize_size != -1 {
       return serialize_size
      }

      serialize_size = 0
      if hasS2CellId {
        serialize_size += s2CellId.computeUInt64Size(1)
      }
      if hasCurrentTimestampMs {
        serialize_size += currentTimestampMs.computeInt64Size(2)
      }
      for oneElementForts in forts {
          serialize_size += oneElementForts.computeMessageSize(3)
      }
      for oneElementSpawnPoints in spawnPoints {
          serialize_size += oneElementSpawnPoints.computeMessageSize(4)
      }
      for oneElementWildPokemons in wildPokemons {
          serialize_size += oneElementWildPokemons.computeMessageSize(5)
      }
      var dataSizeDeletedObjects:Int32 = 0
      for oneValuedeletedObjects in deletedObjects {
          dataSizeDeletedObjects += oneValuedeletedObjects.computeStringSizeNoTag()
      }
      serialize_size += dataSizeDeletedObjects
      serialize_size += 1 * Int32(deletedObjects.count)
      if hasIsTruncatedList {
        serialize_size += isTruncatedList.computeBoolSize(7)
      }
      for oneElementFortSummaries in fortSummaries {
          serialize_size += oneElementFortSummaries.computeMessageSize(8)
      }
      for oneElementDecimatedSpawnPoints in decimatedSpawnPoints {
          serialize_size += oneElementDecimatedSpawnPoints.computeMessageSize(9)
      }
      for oneElementCatchablePokemons in catchablePokemons {
          serialize_size += oneElementCatchablePokemons.computeMessageSize(10)
      }
      for oneElementNearbyPokemons in nearbyPokemons {
          serialize_size += oneElementNearbyPokemons.computeMessageSize(11)
      }
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    public class func parseArrayDelimitedFromInputStream(input:NSInputStream) throws -> Array<Pogoprotos.Map.MapCell> {
      var mergedArray = Array<Pogoprotos.Map.MapCell>()
      while let value = try parseFromDelimitedFromInputStream(input) {
        mergedArray += [value]
      }
      return mergedArray
    }
    public class func parseFromDelimitedFromInputStream(input:NSInputStream) throws -> Pogoprotos.Map.MapCell? {
      return try Pogoprotos.Map.MapCell.Builder().mergeDelimitedFromInputStream(input)?.build()
    }
    public class func parseFromData(data:NSData) throws -> Pogoprotos.Map.MapCell {
      return try Pogoprotos.Map.MapCell.Builder().mergeFromData(data, extensionRegistry:Pogoprotos.Map.MapCellRoot.sharedInstance.extensionRegistry).build()
    }
    public class func parseFromData(data:NSData, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Map.MapCell {
      return try Pogoprotos.Map.MapCell.Builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromInputStream(input:NSInputStream) throws -> Pogoprotos.Map.MapCell {
      return try Pogoprotos.Map.MapCell.Builder().mergeFromInputStream(input).build()
    }
    public class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Map.MapCell {
      return try Pogoprotos.Map.MapCell.Builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Map.MapCell {
      return try Pogoprotos.Map.MapCell.Builder().mergeFromCodedInputStream(input).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Map.MapCell {
      return try Pogoprotos.Map.MapCell.Builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func getBuilder() -> Pogoprotos.Map.MapCell.Builder {
      return Pogoprotos.Map.MapCell.classBuilder() as! Pogoprotos.Map.MapCell.Builder
    }
    public func getBuilder() -> Pogoprotos.Map.MapCell.Builder {
      return classBuilder() as! Pogoprotos.Map.MapCell.Builder
    }
    override public class func classBuilder() -> MessageBuilder {
      return Pogoprotos.Map.MapCell.Builder()
    }
    override public func classBuilder() -> MessageBuilder {
      return Pogoprotos.Map.MapCell.Builder()
    }
    public func toBuilder() throws -> Pogoprotos.Map.MapCell.Builder {
      return try Pogoprotos.Map.MapCell.builderWithPrototype(self)
    }
    public class func builderWithPrototype(prototype:Pogoprotos.Map.MapCell) throws -> Pogoprotos.Map.MapCell.Builder {
      return try Pogoprotos.Map.MapCell.Builder().mergeFrom(prototype)
    }
    override public func encode() throws -> Dictionary<String,AnyObject> {
      guard isInitialized() else {
        throw ProtocolBuffersError.InvalidProtocolBuffer("Uninitialized Message")
      }

      var jsonMap:Dictionary<String,AnyObject> = Dictionary<String,AnyObject>()
      if hasS2CellId {
        jsonMap["s2CellId"] = "\(s2CellId)"
      }
      if hasCurrentTimestampMs {
        jsonMap["currentTimestampMs"] = "\(currentTimestampMs)"
      }
      if !forts.isEmpty {
        var jsonArrayForts:Array<Dictionary<String,AnyObject>> = []
          for oneValueForts in forts {
            let ecodedMessageForts = try oneValueForts.encode()
            jsonArrayForts += [ecodedMessageForts]
          }
        jsonMap["forts"] = jsonArrayForts
      }
      if !spawnPoints.isEmpty {
        var jsonArraySpawnPoints:Array<Dictionary<String,AnyObject>> = []
          for oneValueSpawnPoints in spawnPoints {
            let ecodedMessageSpawnPoints = try oneValueSpawnPoints.encode()
            jsonArraySpawnPoints += [ecodedMessageSpawnPoints]
          }
        jsonMap["spawnPoints"] = jsonArraySpawnPoints
      }
      if !deletedObjects.isEmpty {
        jsonMap["deletedObjects"] = deletedObjects
      }
      if hasIsTruncatedList {
        jsonMap["isTruncatedList"] = isTruncatedList
      }
      if !fortSummaries.isEmpty {
        var jsonArrayFortSummaries:Array<Dictionary<String,AnyObject>> = []
          for oneValueFortSummaries in fortSummaries {
            let ecodedMessageFortSummaries = try oneValueFortSummaries.encode()
            jsonArrayFortSummaries += [ecodedMessageFortSummaries]
          }
        jsonMap["fortSummaries"] = jsonArrayFortSummaries
      }
      if !decimatedSpawnPoints.isEmpty {
        var jsonArrayDecimatedSpawnPoints:Array<Dictionary<String,AnyObject>> = []
          for oneValueDecimatedSpawnPoints in decimatedSpawnPoints {
            let ecodedMessageDecimatedSpawnPoints = try oneValueDecimatedSpawnPoints.encode()
            jsonArrayDecimatedSpawnPoints += [ecodedMessageDecimatedSpawnPoints]
          }
        jsonMap["decimatedSpawnPoints"] = jsonArrayDecimatedSpawnPoints
      }
      if !wildPokemons.isEmpty {
        var jsonArrayWildPokemons:Array<Dictionary<String,AnyObject>> = []
          for oneValueWildPokemons in wildPokemons {
            let ecodedMessageWildPokemons = try oneValueWildPokemons.encode()
            jsonArrayWildPokemons += [ecodedMessageWildPokemons]
          }
        jsonMap["wildPokemons"] = jsonArrayWildPokemons
      }
      if !catchablePokemons.isEmpty {
        var jsonArrayCatchablePokemons:Array<Dictionary<String,AnyObject>> = []
          for oneValueCatchablePokemons in catchablePokemons {
            let ecodedMessageCatchablePokemons = try oneValueCatchablePokemons.encode()
            jsonArrayCatchablePokemons += [ecodedMessageCatchablePokemons]
          }
        jsonMap["catchablePokemons"] = jsonArrayCatchablePokemons
      }
      if !nearbyPokemons.isEmpty {
        var jsonArrayNearbyPokemons:Array<Dictionary<String,AnyObject>> = []
          for oneValueNearbyPokemons in nearbyPokemons {
            let ecodedMessageNearbyPokemons = try oneValueNearbyPokemons.encode()
            jsonArrayNearbyPokemons += [ecodedMessageNearbyPokemons]
          }
        jsonMap["nearbyPokemons"] = jsonArrayNearbyPokemons
      }
      return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Map.MapCell {
      return try Pogoprotos.Map.MapCell.Builder.decodeToBuilder(jsonMap).build()
    }
    override class public func fromJSON(data:NSData) throws -> Pogoprotos.Map.MapCell {
      return try Pogoprotos.Map.MapCell.Builder.fromJSONToBuilder(data).build()
    }
    override public func getDescription(indent:String) throws -> String {
      var output = ""
      if hasS2CellId {
        output += "\(indent) s2CellId: \(s2CellId) \n"
      }
      if hasCurrentTimestampMs {
        output += "\(indent) currentTimestampMs: \(currentTimestampMs) \n"
      }
      var fortsElementIndex:Int = 0
      for oneElementForts in forts {
          output += "\(indent) forts[\(fortsElementIndex)] {\n"
          output += try oneElementForts.getDescription("\(indent)  ")
          output += "\(indent)}\n"
          fortsElementIndex += 1
      }
      var spawnPointsElementIndex:Int = 0
      for oneElementSpawnPoints in spawnPoints {
          output += "\(indent) spawnPoints[\(spawnPointsElementIndex)] {\n"
          output += try oneElementSpawnPoints.getDescription("\(indent)  ")
          output += "\(indent)}\n"
          spawnPointsElementIndex += 1
      }
      var wildPokemonsElementIndex:Int = 0
      for oneElementWildPokemons in wildPokemons {
          output += "\(indent) wildPokemons[\(wildPokemonsElementIndex)] {\n"
          output += try oneElementWildPokemons.getDescription("\(indent)  ")
          output += "\(indent)}\n"
          wildPokemonsElementIndex += 1
      }
      var deletedObjectsElementIndex:Int = 0
      for oneValueDeletedObjects in deletedObjects  {
          output += "\(indent) deletedObjects[\(deletedObjectsElementIndex)]: \(oneValueDeletedObjects)\n"
          deletedObjectsElementIndex += 1
      }
      if hasIsTruncatedList {
        output += "\(indent) isTruncatedList: \(isTruncatedList) \n"
      }
      var fortSummariesElementIndex:Int = 0
      for oneElementFortSummaries in fortSummaries {
          output += "\(indent) fortSummaries[\(fortSummariesElementIndex)] {\n"
          output += try oneElementFortSummaries.getDescription("\(indent)  ")
          output += "\(indent)}\n"
          fortSummariesElementIndex += 1
      }
      var decimatedSpawnPointsElementIndex:Int = 0
      for oneElementDecimatedSpawnPoints in decimatedSpawnPoints {
          output += "\(indent) decimatedSpawnPoints[\(decimatedSpawnPointsElementIndex)] {\n"
          output += try oneElementDecimatedSpawnPoints.getDescription("\(indent)  ")
          output += "\(indent)}\n"
          decimatedSpawnPointsElementIndex += 1
      }
      var catchablePokemonsElementIndex:Int = 0
      for oneElementCatchablePokemons in catchablePokemons {
          output += "\(indent) catchablePokemons[\(catchablePokemonsElementIndex)] {\n"
          output += try oneElementCatchablePokemons.getDescription("\(indent)  ")
          output += "\(indent)}\n"
          catchablePokemonsElementIndex += 1
      }
      var nearbyPokemonsElementIndex:Int = 0
      for oneElementNearbyPokemons in nearbyPokemons {
          output += "\(indent) nearbyPokemons[\(nearbyPokemonsElementIndex)] {\n"
          output += try oneElementNearbyPokemons.getDescription("\(indent)  ")
          output += "\(indent)}\n"
          nearbyPokemonsElementIndex += 1
      }
      output += unknownFields.getDescription(indent)
      return output
    }
    override public var hashValue:Int {
        get {
            var hashCode:Int = 7
            if hasS2CellId {
               hashCode = (hashCode &* 31) &+ s2CellId.hashValue
            }
            if hasCurrentTimestampMs {
               hashCode = (hashCode &* 31) &+ currentTimestampMs.hashValue
            }
            for oneElementForts in forts {
                hashCode = (hashCode &* 31) &+ oneElementForts.hashValue
            }
            for oneElementSpawnPoints in spawnPoints {
                hashCode = (hashCode &* 31) &+ oneElementSpawnPoints.hashValue
            }
            for oneElementWildPokemons in wildPokemons {
                hashCode = (hashCode &* 31) &+ oneElementWildPokemons.hashValue
            }
            for oneValueDeletedObjects in deletedObjects {
                hashCode = (hashCode &* 31) &+ oneValueDeletedObjects.hashValue
            }
            if hasIsTruncatedList {
               hashCode = (hashCode &* 31) &+ isTruncatedList.hashValue
            }
            for oneElementFortSummaries in fortSummaries {
                hashCode = (hashCode &* 31) &+ oneElementFortSummaries.hashValue
            }
            for oneElementDecimatedSpawnPoints in decimatedSpawnPoints {
                hashCode = (hashCode &* 31) &+ oneElementDecimatedSpawnPoints.hashValue
            }
            for oneElementCatchablePokemons in catchablePokemons {
                hashCode = (hashCode &* 31) &+ oneElementCatchablePokemons.hashValue
            }
            for oneElementNearbyPokemons in nearbyPokemons {
                hashCode = (hashCode &* 31) &+ oneElementNearbyPokemons.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "Pogoprotos.Map.MapCell"
    }
    override public func className() -> String {
        return "Pogoprotos.Map.MapCell"
    }
    override public func classMetaType() -> GeneratedMessage.Type {
        return Pogoprotos.Map.MapCell.self
    }
    //Meta information declaration end

    final public class Builder : GeneratedMessageBuilder {
      private var builderResult:Pogoprotos.Map.MapCell = Pogoprotos.Map.MapCell()
      public func getMessage() -> Pogoprotos.Map.MapCell {
          return builderResult
      }

      required override public init () {
         super.init()
      }
      public var hasS2CellId:Bool {
           get {
                return builderResult.hasS2CellId
           }
      }
      public var s2CellId:UInt64 {
           get {
                return builderResult.s2CellId
           }
           set (value) {
               builderResult.hasS2CellId = true
               builderResult.s2CellId = value
           }
      }
      public func setS2CellId(value:UInt64) -> Pogoprotos.Map.MapCell.Builder {
        self.s2CellId = value
        return self
      }
      public func clearS2CellId() -> Pogoprotos.Map.MapCell.Builder{
           builderResult.hasS2CellId = false
           builderResult.s2CellId = UInt64(0)
           return self
      }
      public var hasCurrentTimestampMs:Bool {
           get {
                return builderResult.hasCurrentTimestampMs
           }
      }
      public var currentTimestampMs:Int64 {
           get {
                return builderResult.currentTimestampMs
           }
           set (value) {
               builderResult.hasCurrentTimestampMs = true
               builderResult.currentTimestampMs = value
           }
      }
      public func setCurrentTimestampMs(value:Int64) -> Pogoprotos.Map.MapCell.Builder {
        self.currentTimestampMs = value
        return self
      }
      public func clearCurrentTimestampMs() -> Pogoprotos.Map.MapCell.Builder{
           builderResult.hasCurrentTimestampMs = false
           builderResult.currentTimestampMs = Int64(0)
           return self
      }
      public var forts:Array<Pogoprotos.Map.Fort.FortData> {
           get {
               return builderResult.forts
           }
           set (value) {
               builderResult.forts = value
           }
      }
      public func setForts(value:Array<Pogoprotos.Map.Fort.FortData>) -> Pogoprotos.Map.MapCell.Builder {
        self.forts = value
        return self
      }
      public func clearForts() -> Pogoprotos.Map.MapCell.Builder {
        builderResult.forts.removeAll(keepCapacity: false)
        return self
      }
      public var spawnPoints:Array<Pogoprotos.Map.SpawnPoint> {
           get {
               return builderResult.spawnPoints
           }
           set (value) {
               builderResult.spawnPoints = value
           }
      }
      public func setSpawnPoints(value:Array<Pogoprotos.Map.SpawnPoint>) -> Pogoprotos.Map.MapCell.Builder {
        self.spawnPoints = value
        return self
      }
      public func clearSpawnPoints() -> Pogoprotos.Map.MapCell.Builder {
        builderResult.spawnPoints.removeAll(keepCapacity: false)
        return self
      }
      public var deletedObjects:Array<String> {
           get {
               return builderResult.deletedObjects
           }
           set (array) {
               builderResult.deletedObjects = array
           }
      }
      public func setDeletedObjects(value:Array<String>) -> Pogoprotos.Map.MapCell.Builder {
        self.deletedObjects = value
        return self
      }
      public func clearDeletedObjects() -> Pogoprotos.Map.MapCell.Builder {
         builderResult.deletedObjects.removeAll(keepCapacity: false)
         return self
      }
      public var hasIsTruncatedList:Bool {
           get {
                return builderResult.hasIsTruncatedList
           }
      }
      public var isTruncatedList:Bool {
           get {
                return builderResult.isTruncatedList
           }
           set (value) {
               builderResult.hasIsTruncatedList = true
               builderResult.isTruncatedList = value
           }
      }
      public func setIsTruncatedList(value:Bool) -> Pogoprotos.Map.MapCell.Builder {
        self.isTruncatedList = value
        return self
      }
      public func clearIsTruncatedList() -> Pogoprotos.Map.MapCell.Builder{
           builderResult.hasIsTruncatedList = false
           builderResult.isTruncatedList = false
           return self
      }
      public var fortSummaries:Array<Pogoprotos.Map.Fort.FortSummary> {
           get {
               return builderResult.fortSummaries
           }
           set (value) {
               builderResult.fortSummaries = value
           }
      }
      public func setFortSummaries(value:Array<Pogoprotos.Map.Fort.FortSummary>) -> Pogoprotos.Map.MapCell.Builder {
        self.fortSummaries = value
        return self
      }
      public func clearFortSummaries() -> Pogoprotos.Map.MapCell.Builder {
        builderResult.fortSummaries.removeAll(keepCapacity: false)
        return self
      }
      public var decimatedSpawnPoints:Array<Pogoprotos.Map.SpawnPoint> {
           get {
               return builderResult.decimatedSpawnPoints
           }
           set (value) {
               builderResult.decimatedSpawnPoints = value
           }
      }
      public func setDecimatedSpawnPoints(value:Array<Pogoprotos.Map.SpawnPoint>) -> Pogoprotos.Map.MapCell.Builder {
        self.decimatedSpawnPoints = value
        return self
      }
      public func clearDecimatedSpawnPoints() -> Pogoprotos.Map.MapCell.Builder {
        builderResult.decimatedSpawnPoints.removeAll(keepCapacity: false)
        return self
      }
      public var wildPokemons:Array<Pogoprotos.Map.Pokemon.WildPokemon> {
           get {
               return builderResult.wildPokemons
           }
           set (value) {
               builderResult.wildPokemons = value
           }
      }
      public func setWildPokemons(value:Array<Pogoprotos.Map.Pokemon.WildPokemon>) -> Pogoprotos.Map.MapCell.Builder {
        self.wildPokemons = value
        return self
      }
      public func clearWildPokemons() -> Pogoprotos.Map.MapCell.Builder {
        builderResult.wildPokemons.removeAll(keepCapacity: false)
        return self
      }
      public var catchablePokemons:Array<Pogoprotos.Map.Pokemon.MapPokemon> {
           get {
               return builderResult.catchablePokemons
           }
           set (value) {
               builderResult.catchablePokemons = value
           }
      }
      public func setCatchablePokemons(value:Array<Pogoprotos.Map.Pokemon.MapPokemon>) -> Pogoprotos.Map.MapCell.Builder {
        self.catchablePokemons = value
        return self
      }
      public func clearCatchablePokemons() -> Pogoprotos.Map.MapCell.Builder {
        builderResult.catchablePokemons.removeAll(keepCapacity: false)
        return self
      }
      public var nearbyPokemons:Array<Pogoprotos.Map.Pokemon.NearbyPokemon> {
           get {
               return builderResult.nearbyPokemons
           }
           set (value) {
               builderResult.nearbyPokemons = value
           }
      }
      public func setNearbyPokemons(value:Array<Pogoprotos.Map.Pokemon.NearbyPokemon>) -> Pogoprotos.Map.MapCell.Builder {
        self.nearbyPokemons = value
        return self
      }
      public func clearNearbyPokemons() -> Pogoprotos.Map.MapCell.Builder {
        builderResult.nearbyPokemons.removeAll(keepCapacity: false)
        return self
      }
      override public var internalGetResult:GeneratedMessage {
           get {
              return builderResult
           }
      }
      override public func clear() -> Pogoprotos.Map.MapCell.Builder {
        builderResult = Pogoprotos.Map.MapCell()
        return self
      }
      override public func clone() throws -> Pogoprotos.Map.MapCell.Builder {
        return try Pogoprotos.Map.MapCell.builderWithPrototype(builderResult)
      }
      override public func build() throws -> Pogoprotos.Map.MapCell {
           try checkInitialized()
           return buildPartial()
      }
      public func buildPartial() -> Pogoprotos.Map.MapCell {
        let returnMe:Pogoprotos.Map.MapCell = builderResult
        return returnMe
      }
      public func mergeFrom(other:Pogoprotos.Map.MapCell) throws -> Pogoprotos.Map.MapCell.Builder {
        if other == Pogoprotos.Map.MapCell() {
         return self
        }
        if other.hasS2CellId {
             s2CellId = other.s2CellId
        }
        if other.hasCurrentTimestampMs {
             currentTimestampMs = other.currentTimestampMs
        }
        if !other.forts.isEmpty  {
           builderResult.forts += other.forts
        }
        if !other.spawnPoints.isEmpty  {
           builderResult.spawnPoints += other.spawnPoints
        }
        if !other.deletedObjects.isEmpty {
            builderResult.deletedObjects += other.deletedObjects
        }
        if other.hasIsTruncatedList {
             isTruncatedList = other.isTruncatedList
        }
        if !other.fortSummaries.isEmpty  {
           builderResult.fortSummaries += other.fortSummaries
        }
        if !other.decimatedSpawnPoints.isEmpty  {
           builderResult.decimatedSpawnPoints += other.decimatedSpawnPoints
        }
        if !other.wildPokemons.isEmpty  {
           builderResult.wildPokemons += other.wildPokemons
        }
        if !other.catchablePokemons.isEmpty  {
           builderResult.catchablePokemons += other.catchablePokemons
        }
        if !other.nearbyPokemons.isEmpty  {
           builderResult.nearbyPokemons += other.nearbyPokemons
        }
        try mergeUnknownFields(other.unknownFields)
        return self
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Map.MapCell.Builder {
           return try mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Map.MapCell.Builder {
        let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
        while (true) {
          let protobufTag = try input.readTag()
          switch protobufTag {
          case 0: 
            self.unknownFields = try unknownFieldsBuilder.build()
            return self

          case 8:
            s2CellId = try input.readUInt64()

          case 16:
            currentTimestampMs = try input.readInt64()

          case 26:
            let subBuilder = Pogoprotos.Map.Fort.FortData.Builder()
            try input.readMessage(subBuilder,extensionRegistry:extensionRegistry)
            forts += [subBuilder.buildPartial()]

          case 34:
            let subBuilder = Pogoprotos.Map.SpawnPoint.Builder()
            try input.readMessage(subBuilder,extensionRegistry:extensionRegistry)
            spawnPoints += [subBuilder.buildPartial()]

          case 42:
            let subBuilder = Pogoprotos.Map.Pokemon.WildPokemon.Builder()
            try input.readMessage(subBuilder,extensionRegistry:extensionRegistry)
            wildPokemons += [subBuilder.buildPartial()]

          case 50:
            deletedObjects += [try input.readString()]

          case 56:
            isTruncatedList = try input.readBool()

          case 66:
            let subBuilder = Pogoprotos.Map.Fort.FortSummary.Builder()
            try input.readMessage(subBuilder,extensionRegistry:extensionRegistry)
            fortSummaries += [subBuilder.buildPartial()]

          case 74:
            let subBuilder = Pogoprotos.Map.SpawnPoint.Builder()
            try input.readMessage(subBuilder,extensionRegistry:extensionRegistry)
            decimatedSpawnPoints += [subBuilder.buildPartial()]

          case 82:
            let subBuilder = Pogoprotos.Map.Pokemon.MapPokemon.Builder()
            try input.readMessage(subBuilder,extensionRegistry:extensionRegistry)
            catchablePokemons += [subBuilder.buildPartial()]

          case 90:
            let subBuilder = Pogoprotos.Map.Pokemon.NearbyPokemon.Builder()
            try input.readMessage(subBuilder,extensionRegistry:extensionRegistry)
            nearbyPokemons += [subBuilder.buildPartial()]

          default:
            if (!(try parseUnknownField(input,unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
               unknownFields = try unknownFieldsBuilder.build()
               return self
            }
          }
        }
      }
      override class public func decodeToBuilder(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Map.MapCell.Builder {
        let resultDecodedBuilder = Pogoprotos.Map.MapCell.Builder()
        if let jsonValueS2CellId = jsonMap["s2CellId"] as? String {
          resultDecodedBuilder.s2CellId = UInt64(jsonValueS2CellId)!
        }
        if let jsonValueCurrentTimestampMs = jsonMap["currentTimestampMs"] as? String {
          resultDecodedBuilder.currentTimestampMs = Int64(jsonValueCurrentTimestampMs)!
        }
        if let jsonValueForts = jsonMap["forts"] as? Array<Dictionary<String,AnyObject>> {
          var jsonArrayForts:Array<Pogoprotos.Map.Fort.FortData> = []
          for oneValueForts in jsonValueForts {
            let messageFromStringForts = try Pogoprotos.Map.Fort.FortData.Builder.decodeToBuilder(oneValueForts).build()

            jsonArrayForts += [messageFromStringForts]
          }
          resultDecodedBuilder.forts = jsonArrayForts
        }
        if let jsonValueSpawnPoints = jsonMap["spawnPoints"] as? Array<Dictionary<String,AnyObject>> {
          var jsonArraySpawnPoints:Array<Pogoprotos.Map.SpawnPoint> = []
          for oneValueSpawnPoints in jsonValueSpawnPoints {
            let messageFromStringSpawnPoints = try Pogoprotos.Map.SpawnPoint.Builder.decodeToBuilder(oneValueSpawnPoints).build()

            jsonArraySpawnPoints += [messageFromStringSpawnPoints]
          }
          resultDecodedBuilder.spawnPoints = jsonArraySpawnPoints
        }
        if let jsonValueDeletedObjects = jsonMap["deletedObjects"] as? Array<String> {
          resultDecodedBuilder.deletedObjects = jsonValueDeletedObjects
        }
        if let jsonValueIsTruncatedList = jsonMap["isTruncatedList"] as? Bool {
          resultDecodedBuilder.isTruncatedList = jsonValueIsTruncatedList
        }
        if let jsonValueFortSummaries = jsonMap["fortSummaries"] as? Array<Dictionary<String,AnyObject>> {
          var jsonArrayFortSummaries:Array<Pogoprotos.Map.Fort.FortSummary> = []
          for oneValueFortSummaries in jsonValueFortSummaries {
            let messageFromStringFortSummaries = try Pogoprotos.Map.Fort.FortSummary.Builder.decodeToBuilder(oneValueFortSummaries).build()

            jsonArrayFortSummaries += [messageFromStringFortSummaries]
          }
          resultDecodedBuilder.fortSummaries = jsonArrayFortSummaries
        }
        if let jsonValueDecimatedSpawnPoints = jsonMap["decimatedSpawnPoints"] as? Array<Dictionary<String,AnyObject>> {
          var jsonArrayDecimatedSpawnPoints:Array<Pogoprotos.Map.SpawnPoint> = []
          for oneValueDecimatedSpawnPoints in jsonValueDecimatedSpawnPoints {
            let messageFromStringDecimatedSpawnPoints = try Pogoprotos.Map.SpawnPoint.Builder.decodeToBuilder(oneValueDecimatedSpawnPoints).build()

            jsonArrayDecimatedSpawnPoints += [messageFromStringDecimatedSpawnPoints]
          }
          resultDecodedBuilder.decimatedSpawnPoints = jsonArrayDecimatedSpawnPoints
        }
        if let jsonValueWildPokemons = jsonMap["wildPokemons"] as? Array<Dictionary<String,AnyObject>> {
          var jsonArrayWildPokemons:Array<Pogoprotos.Map.Pokemon.WildPokemon> = []
          for oneValueWildPokemons in jsonValueWildPokemons {
            let messageFromStringWildPokemons = try Pogoprotos.Map.Pokemon.WildPokemon.Builder.decodeToBuilder(oneValueWildPokemons).build()

            jsonArrayWildPokemons += [messageFromStringWildPokemons]
          }
          resultDecodedBuilder.wildPokemons = jsonArrayWildPokemons
        }
        if let jsonValueCatchablePokemons = jsonMap["catchablePokemons"] as? Array<Dictionary<String,AnyObject>> {
          var jsonArrayCatchablePokemons:Array<Pogoprotos.Map.Pokemon.MapPokemon> = []
          for oneValueCatchablePokemons in jsonValueCatchablePokemons {
            let messageFromStringCatchablePokemons = try Pogoprotos.Map.Pokemon.MapPokemon.Builder.decodeToBuilder(oneValueCatchablePokemons).build()

            jsonArrayCatchablePokemons += [messageFromStringCatchablePokemons]
          }
          resultDecodedBuilder.catchablePokemons = jsonArrayCatchablePokemons
        }
        if let jsonValueNearbyPokemons = jsonMap["nearbyPokemons"] as? Array<Dictionary<String,AnyObject>> {
          var jsonArrayNearbyPokemons:Array<Pogoprotos.Map.Pokemon.NearbyPokemon> = []
          for oneValueNearbyPokemons in jsonValueNearbyPokemons {
            let messageFromStringNearbyPokemons = try Pogoprotos.Map.Pokemon.NearbyPokemon.Builder.decodeToBuilder(oneValueNearbyPokemons).build()

            jsonArrayNearbyPokemons += [messageFromStringNearbyPokemons]
          }
          resultDecodedBuilder.nearbyPokemons = jsonArrayNearbyPokemons
        }
        return resultDecodedBuilder
      }
      override class public func fromJSONToBuilder(data:NSData) throws -> Pogoprotos.Map.MapCell.Builder {
        let jsonData = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions(rawValue: 0))
        guard let jsDataCast = jsonData as? Dictionary<String,AnyObject> else {
          throw ProtocolBuffersError.InvalidProtocolBuffer("Invalid JSON data")
        }
        return try Pogoprotos.Map.MapCell.Builder.decodeToBuilder(jsDataCast)
      }
    }

  }

}

// @@protoc_insertion_point(global_scope)
