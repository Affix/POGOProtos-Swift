// Generated by the Protocol Buffers 3.0 compiler.  DO NOT EDIT!
// Source file "EggIncubator.proto"
// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct Pogoprotos { public struct Inventory { }}

public func == (lhs: Pogoprotos.Inventory.EggIncubator, rhs: Pogoprotos.Inventory.EggIncubator) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasId == rhs.hasId) && (!lhs.hasId || lhs.id == rhs.id)
  fieldCheck = fieldCheck && (lhs.hasItemId == rhs.hasItemId) && (!lhs.hasItemId || lhs.itemId == rhs.itemId)
  fieldCheck = fieldCheck && (lhs.hasIncubatorType == rhs.hasIncubatorType) && (!lhs.hasIncubatorType || lhs.incubatorType == rhs.incubatorType)
  fieldCheck = fieldCheck && (lhs.hasUsesRemaining == rhs.hasUsesRemaining) && (!lhs.hasUsesRemaining || lhs.usesRemaining == rhs.usesRemaining)
  fieldCheck = fieldCheck && (lhs.hasPokemonId == rhs.hasPokemonId) && (!lhs.hasPokemonId || lhs.pokemonId == rhs.pokemonId)
  fieldCheck = fieldCheck && (lhs.hasStartKmWalked == rhs.hasStartKmWalked) && (!lhs.hasStartKmWalked || lhs.startKmWalked == rhs.startKmWalked)
  fieldCheck = fieldCheck && (lhs.hasTargetKmWalked == rhs.hasTargetKmWalked) && (!lhs.hasTargetKmWalked || lhs.targetKmWalked == rhs.targetKmWalked)
  fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
  return fieldCheck
}

public extension Pogoprotos.Inventory {
  public struct EggIncubatorRoot {
    public static var sharedInstance : EggIncubatorRoot {
     struct Static {
         static let instance : EggIncubatorRoot = EggIncubatorRoot()
     }
     return Static.instance
    }
    public var extensionRegistry:ExtensionRegistry

    init() {
      extensionRegistry = ExtensionRegistry()
      registerAllExtensions(extensionRegistry)
      Pogoprotos.Inventory.Item.ItemIdRoot.sharedInstance.registerAllExtensions(extensionRegistry)
      Pogoprotos.Inventory.EggIncubatorTypeRoot.sharedInstance.registerAllExtensions(extensionRegistry)
    }
    public func registerAllExtensions(registry:ExtensionRegistry) {
    }
  }

  final public class EggIncubator : GeneratedMessage, GeneratedMessageProtocol {
    public private(set) var hasId:Bool = false
    public private(set) var id:String = ""

    public private(set) var itemId:Pogoprotos.Inventory.Item.ItemId = Pogoprotos.Inventory.Item.ItemId.ItemUnknown
    public private(set) var hasItemId:Bool = false
    public private(set) var incubatorType:Pogoprotos.Inventory.EggIncubatorType = Pogoprotos.Inventory.EggIncubatorType.IncubatorUnset
    public private(set) var hasIncubatorType:Bool = false
    public private(set) var hasUsesRemaining:Bool = false
    public private(set) var usesRemaining:Int32 = Int32(0)

    // TODO: Check if is PokemonType
    public private(set) var hasPokemonId:Bool = false
    public private(set) var pokemonId:UInt64 = UInt64(0)

    public private(set) var hasStartKmWalked:Bool = false
    public private(set) var startKmWalked:Double = Double(0)

    public private(set) var hasTargetKmWalked:Bool = false
    public private(set) var targetKmWalked:Double = Double(0)

    required public init() {
         super.init()
    }
    override public func isInitialized() -> Bool {
     return true
    }
    override public func writeToCodedOutputStream(output:CodedOutputStream) throws {
      if hasId {
        try output.writeString(1, value:id)
      }
      if hasItemId {
        try output.writeEnum(2, value:itemId.rawValue)
      }
      if hasIncubatorType {
        try output.writeEnum(3, value:incubatorType.rawValue)
      }
      if hasUsesRemaining {
        try output.writeInt32(4, value:usesRemaining)
      }
      if hasPokemonId {
        try output.writeUInt64(5, value:pokemonId)
      }
      if hasStartKmWalked {
        try output.writeDouble(6, value:startKmWalked)
      }
      if hasTargetKmWalked {
        try output.writeDouble(7, value:targetKmWalked)
      }
      try unknownFields.writeToCodedOutputStream(output)
    }
    override public func serializedSize() -> Int32 {
      var serialize_size:Int32 = memoizedSerializedSize
      if serialize_size != -1 {
       return serialize_size
      }

      serialize_size = 0
      if hasId {
        serialize_size += id.computeStringSize(1)
      }
      if (hasItemId) {
        serialize_size += itemId.rawValue.computeEnumSize(2)
      }
      if (hasIncubatorType) {
        serialize_size += incubatorType.rawValue.computeEnumSize(3)
      }
      if hasUsesRemaining {
        serialize_size += usesRemaining.computeInt32Size(4)
      }
      if hasPokemonId {
        serialize_size += pokemonId.computeUInt64Size(5)
      }
      if hasStartKmWalked {
        serialize_size += startKmWalked.computeDoubleSize(6)
      }
      if hasTargetKmWalked {
        serialize_size += targetKmWalked.computeDoubleSize(7)
      }
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    public class func parseArrayDelimitedFromInputStream(input:NSInputStream) throws -> Array<Pogoprotos.Inventory.EggIncubator> {
      var mergedArray = Array<Pogoprotos.Inventory.EggIncubator>()
      while let value = try parseFromDelimitedFromInputStream(input) {
        mergedArray += [value]
      }
      return mergedArray
    }
    public class func parseFromDelimitedFromInputStream(input:NSInputStream) throws -> Pogoprotos.Inventory.EggIncubator? {
      return try Pogoprotos.Inventory.EggIncubator.Builder().mergeDelimitedFromInputStream(input)?.build()
    }
    public class func parseFromData(data:NSData) throws -> Pogoprotos.Inventory.EggIncubator {
      return try Pogoprotos.Inventory.EggIncubator.Builder().mergeFromData(data, extensionRegistry:Pogoprotos.Inventory.EggIncubatorRoot.sharedInstance.extensionRegistry).build()
    }
    public class func parseFromData(data:NSData, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Inventory.EggIncubator {
      return try Pogoprotos.Inventory.EggIncubator.Builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromInputStream(input:NSInputStream) throws -> Pogoprotos.Inventory.EggIncubator {
      return try Pogoprotos.Inventory.EggIncubator.Builder().mergeFromInputStream(input).build()
    }
    public class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Inventory.EggIncubator {
      return try Pogoprotos.Inventory.EggIncubator.Builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Inventory.EggIncubator {
      return try Pogoprotos.Inventory.EggIncubator.Builder().mergeFromCodedInputStream(input).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Inventory.EggIncubator {
      return try Pogoprotos.Inventory.EggIncubator.Builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func getBuilder() -> Pogoprotos.Inventory.EggIncubator.Builder {
      return Pogoprotos.Inventory.EggIncubator.classBuilder() as! Pogoprotos.Inventory.EggIncubator.Builder
    }
    public func getBuilder() -> Pogoprotos.Inventory.EggIncubator.Builder {
      return classBuilder() as! Pogoprotos.Inventory.EggIncubator.Builder
    }
    override public class func classBuilder() -> MessageBuilder {
      return Pogoprotos.Inventory.EggIncubator.Builder()
    }
    override public func classBuilder() -> MessageBuilder {
      return Pogoprotos.Inventory.EggIncubator.Builder()
    }
    public func toBuilder() throws -> Pogoprotos.Inventory.EggIncubator.Builder {
      return try Pogoprotos.Inventory.EggIncubator.builderWithPrototype(self)
    }
    public class func builderWithPrototype(prototype:Pogoprotos.Inventory.EggIncubator) throws -> Pogoprotos.Inventory.EggIncubator.Builder {
      return try Pogoprotos.Inventory.EggIncubator.Builder().mergeFrom(prototype)
    }
    override public func encode() throws -> Dictionary<String,AnyObject> {
      guard isInitialized() else {
        throw ProtocolBuffersError.InvalidProtocolBuffer("Uninitialized Message")
      }

      var jsonMap:Dictionary<String,AnyObject> = Dictionary<String,AnyObject>()
      if hasId {
        jsonMap["id"] = id
      }
      if hasItemId {
        jsonMap["itemId"] = itemId.toString()
      }
      if hasIncubatorType {
        jsonMap["incubatorType"] = incubatorType.toString()
      }
      if hasUsesRemaining {
        jsonMap["usesRemaining"] = NSNumber(int:usesRemaining)
      }
      if hasPokemonId {
        jsonMap["pokemonId"] = "\(pokemonId)"
      }
      if hasStartKmWalked {
        jsonMap["startKmWalked"] = NSNumber(double:startKmWalked)
      }
      if hasTargetKmWalked {
        jsonMap["targetKmWalked"] = NSNumber(double:targetKmWalked)
      }
      return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Inventory.EggIncubator {
      return try Pogoprotos.Inventory.EggIncubator.Builder.decodeToBuilder(jsonMap).build()
    }
    override class public func fromJSON(data:NSData) throws -> Pogoprotos.Inventory.EggIncubator {
      return try Pogoprotos.Inventory.EggIncubator.Builder.fromJSONToBuilder(data).build()
    }
    override public func getDescription(indent:String) throws -> String {
      var output = ""
      if hasId {
        output += "\(indent) id: \(id) \n"
      }
      if (hasItemId) {
        output += "\(indent) itemId: \(itemId.description)\n"
      }
      if (hasIncubatorType) {
        output += "\(indent) incubatorType: \(incubatorType.description)\n"
      }
      if hasUsesRemaining {
        output += "\(indent) usesRemaining: \(usesRemaining) \n"
      }
      if hasPokemonId {
        output += "\(indent) pokemonId: \(pokemonId) \n"
      }
      if hasStartKmWalked {
        output += "\(indent) startKmWalked: \(startKmWalked) \n"
      }
      if hasTargetKmWalked {
        output += "\(indent) targetKmWalked: \(targetKmWalked) \n"
      }
      output += unknownFields.getDescription(indent)
      return output
    }
    override public var hashValue:Int {
        get {
            var hashCode:Int = 7
            if hasId {
               hashCode = (hashCode &* 31) &+ id.hashValue
            }
            if hasItemId {
               hashCode = (hashCode &* 31) &+ Int(itemId.rawValue)
            }
            if hasIncubatorType {
               hashCode = (hashCode &* 31) &+ Int(incubatorType.rawValue)
            }
            if hasUsesRemaining {
               hashCode = (hashCode &* 31) &+ usesRemaining.hashValue
            }
            if hasPokemonId {
               hashCode = (hashCode &* 31) &+ pokemonId.hashValue
            }
            if hasStartKmWalked {
               hashCode = (hashCode &* 31) &+ startKmWalked.hashValue
            }
            if hasTargetKmWalked {
               hashCode = (hashCode &* 31) &+ targetKmWalked.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "Pogoprotos.Inventory.EggIncubator"
    }
    override public func className() -> String {
        return "Pogoprotos.Inventory.EggIncubator"
    }
    override public func classMetaType() -> GeneratedMessage.Type {
        return Pogoprotos.Inventory.EggIncubator.self
    }
    //Meta information declaration end

    final public class Builder : GeneratedMessageBuilder {
      private var builderResult:Pogoprotos.Inventory.EggIncubator = Pogoprotos.Inventory.EggIncubator()
      public func getMessage() -> Pogoprotos.Inventory.EggIncubator {
          return builderResult
      }

      required override public init () {
         super.init()
      }
      public var hasId:Bool {
           get {
                return builderResult.hasId
           }
      }
      public var id:String {
           get {
                return builderResult.id
           }
           set (value) {
               builderResult.hasId = true
               builderResult.id = value
           }
      }
      public func setId(value:String) -> Pogoprotos.Inventory.EggIncubator.Builder {
        self.id = value
        return self
      }
      public func clearId() -> Pogoprotos.Inventory.EggIncubator.Builder{
           builderResult.hasId = false
           builderResult.id = ""
           return self
      }
        public var hasItemId:Bool{
            get {
                return builderResult.hasItemId
            }
        }
        public var itemId:Pogoprotos.Inventory.Item.ItemId {
            get {
                return builderResult.itemId
            }
            set (value) {
                builderResult.hasItemId = true
                builderResult.itemId = value
            }
        }
        public func setItemId(value:Pogoprotos.Inventory.Item.ItemId) -> Pogoprotos.Inventory.EggIncubator.Builder {
          self.itemId = value
          return self
        }
        public func clearItemId() -> Pogoprotos.Inventory.EggIncubator.Builder {
           builderResult.hasItemId = false
           builderResult.itemId = .ItemUnknown
           return self
        }
        public var hasIncubatorType:Bool{
            get {
                return builderResult.hasIncubatorType
            }
        }
        public var incubatorType:Pogoprotos.Inventory.EggIncubatorType {
            get {
                return builderResult.incubatorType
            }
            set (value) {
                builderResult.hasIncubatorType = true
                builderResult.incubatorType = value
            }
        }
        public func setIncubatorType(value:Pogoprotos.Inventory.EggIncubatorType) -> Pogoprotos.Inventory.EggIncubator.Builder {
          self.incubatorType = value
          return self
        }
        public func clearIncubatorType() -> Pogoprotos.Inventory.EggIncubator.Builder {
           builderResult.hasIncubatorType = false
           builderResult.incubatorType = .IncubatorUnset
           return self
        }
      public var hasUsesRemaining:Bool {
           get {
                return builderResult.hasUsesRemaining
           }
      }
      public var usesRemaining:Int32 {
           get {
                return builderResult.usesRemaining
           }
           set (value) {
               builderResult.hasUsesRemaining = true
               builderResult.usesRemaining = value
           }
      }
      public func setUsesRemaining(value:Int32) -> Pogoprotos.Inventory.EggIncubator.Builder {
        self.usesRemaining = value
        return self
      }
      public func clearUsesRemaining() -> Pogoprotos.Inventory.EggIncubator.Builder{
           builderResult.hasUsesRemaining = false
           builderResult.usesRemaining = Int32(0)
           return self
      }
      public var hasPokemonId:Bool {
           get {
                return builderResult.hasPokemonId
           }
      }
      public var pokemonId:UInt64 {
           get {
                return builderResult.pokemonId
           }
           set (value) {
               builderResult.hasPokemonId = true
               builderResult.pokemonId = value
           }
      }
      public func setPokemonId(value:UInt64) -> Pogoprotos.Inventory.EggIncubator.Builder {
        self.pokemonId = value
        return self
      }
      public func clearPokemonId() -> Pogoprotos.Inventory.EggIncubator.Builder{
           builderResult.hasPokemonId = false
           builderResult.pokemonId = UInt64(0)
           return self
      }
      public var hasStartKmWalked:Bool {
           get {
                return builderResult.hasStartKmWalked
           }
      }
      public var startKmWalked:Double {
           get {
                return builderResult.startKmWalked
           }
           set (value) {
               builderResult.hasStartKmWalked = true
               builderResult.startKmWalked = value
           }
      }
      public func setStartKmWalked(value:Double) -> Pogoprotos.Inventory.EggIncubator.Builder {
        self.startKmWalked = value
        return self
      }
      public func clearStartKmWalked() -> Pogoprotos.Inventory.EggIncubator.Builder{
           builderResult.hasStartKmWalked = false
           builderResult.startKmWalked = Double(0)
           return self
      }
      public var hasTargetKmWalked:Bool {
           get {
                return builderResult.hasTargetKmWalked
           }
      }
      public var targetKmWalked:Double {
           get {
                return builderResult.targetKmWalked
           }
           set (value) {
               builderResult.hasTargetKmWalked = true
               builderResult.targetKmWalked = value
           }
      }
      public func setTargetKmWalked(value:Double) -> Pogoprotos.Inventory.EggIncubator.Builder {
        self.targetKmWalked = value
        return self
      }
      public func clearTargetKmWalked() -> Pogoprotos.Inventory.EggIncubator.Builder{
           builderResult.hasTargetKmWalked = false
           builderResult.targetKmWalked = Double(0)
           return self
      }
      override public var internalGetResult:GeneratedMessage {
           get {
              return builderResult
           }
      }
      override public func clear() -> Pogoprotos.Inventory.EggIncubator.Builder {
        builderResult = Pogoprotos.Inventory.EggIncubator()
        return self
      }
      override public func clone() throws -> Pogoprotos.Inventory.EggIncubator.Builder {
        return try Pogoprotos.Inventory.EggIncubator.builderWithPrototype(builderResult)
      }
      override public func build() throws -> Pogoprotos.Inventory.EggIncubator {
           try checkInitialized()
           return buildPartial()
      }
      public func buildPartial() -> Pogoprotos.Inventory.EggIncubator {
        let returnMe:Pogoprotos.Inventory.EggIncubator = builderResult
        return returnMe
      }
      public func mergeFrom(other:Pogoprotos.Inventory.EggIncubator) throws -> Pogoprotos.Inventory.EggIncubator.Builder {
        if other == Pogoprotos.Inventory.EggIncubator() {
         return self
        }
        if other.hasId {
             id = other.id
        }
        if other.hasItemId {
             itemId = other.itemId
        }
        if other.hasIncubatorType {
             incubatorType = other.incubatorType
        }
        if other.hasUsesRemaining {
             usesRemaining = other.usesRemaining
        }
        if other.hasPokemonId {
             pokemonId = other.pokemonId
        }
        if other.hasStartKmWalked {
             startKmWalked = other.startKmWalked
        }
        if other.hasTargetKmWalked {
             targetKmWalked = other.targetKmWalked
        }
        try mergeUnknownFields(other.unknownFields)
        return self
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Inventory.EggIncubator.Builder {
           return try mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Inventory.EggIncubator.Builder {
        let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
        while (true) {
          let protobufTag = try input.readTag()
          switch protobufTag {
          case 0: 
            self.unknownFields = try unknownFieldsBuilder.build()
            return self

          case 10:
            id = try input.readString()

          case 16:
            let valueIntitemId = try input.readEnum()
            if let enumsitemId = Pogoprotos.Inventory.Item.ItemId(rawValue:valueIntitemId){
                 itemId = enumsitemId
            } else {
                 try unknownFieldsBuilder.mergeVarintField(2, value:Int64(valueIntitemId))
            }

          case 24:
            let valueIntincubatorType = try input.readEnum()
            if let enumsincubatorType = Pogoprotos.Inventory.EggIncubatorType(rawValue:valueIntincubatorType){
                 incubatorType = enumsincubatorType
            } else {
                 try unknownFieldsBuilder.mergeVarintField(3, value:Int64(valueIntincubatorType))
            }

          case 32:
            usesRemaining = try input.readInt32()

          case 40:
            pokemonId = try input.readUInt64()

          case 49:
            startKmWalked = try input.readDouble()

          case 57:
            targetKmWalked = try input.readDouble()

          default:
            if (!(try parseUnknownField(input,unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
               unknownFields = try unknownFieldsBuilder.build()
               return self
            }
          }
        }
      }
      override class public func decodeToBuilder(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Inventory.EggIncubator.Builder {
        let resultDecodedBuilder = Pogoprotos.Inventory.EggIncubator.Builder()
        if let jsonValueId = jsonMap["id"] as? String {
          resultDecodedBuilder.id = jsonValueId
        }
        if let jsonValueItemId = jsonMap["itemId"] as? String {
          resultDecodedBuilder.itemId = try Pogoprotos.Inventory.Item.ItemId.fromString(jsonValueItemId)
        }
        if let jsonValueIncubatorType = jsonMap["incubatorType"] as? String {
          resultDecodedBuilder.incubatorType = try Pogoprotos.Inventory.EggIncubatorType.fromString(jsonValueIncubatorType)
        }
        if let jsonValueUsesRemaining = jsonMap["usesRemaining"] as? NSNumber {
          resultDecodedBuilder.usesRemaining = jsonValueUsesRemaining.intValue
        }
        if let jsonValuePokemonId = jsonMap["pokemonId"] as? String {
          resultDecodedBuilder.pokemonId = UInt64(jsonValuePokemonId)!
        }
        if let jsonValueStartKmWalked = jsonMap["startKmWalked"] as? NSNumber {
          resultDecodedBuilder.startKmWalked = jsonValueStartKmWalked.doubleValue
        }
        if let jsonValueTargetKmWalked = jsonMap["targetKmWalked"] as? NSNumber {
          resultDecodedBuilder.targetKmWalked = jsonValueTargetKmWalked.doubleValue
        }
        return resultDecodedBuilder
      }
      override class public func fromJSONToBuilder(data:NSData) throws -> Pogoprotos.Inventory.EggIncubator.Builder {
        let jsonData = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions(rawValue: 0))
        guard let jsDataCast = jsonData as? Dictionary<String,AnyObject> else {
          throw ProtocolBuffersError.InvalidProtocolBuffer("Invalid JSON data")
        }
        return try Pogoprotos.Inventory.EggIncubator.Builder.decodeToBuilder(jsDataCast)
      }
    }

  }

}

// @@protoc_insertion_point(global_scope)
