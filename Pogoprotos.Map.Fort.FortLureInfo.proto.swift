// Generated by the Protocol Buffers 3.0 compiler.  DO NOT EDIT!
// Source file "FortLureInfo.proto"
// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct Pogoprotos { public struct Map { public struct Fort { }}}

public func == (lhs: Pogoprotos.Map.Fort.FortLureInfo, rhs: Pogoprotos.Map.Fort.FortLureInfo) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasFortId == rhs.hasFortId) && (!lhs.hasFortId || lhs.fortId == rhs.fortId)
  fieldCheck = fieldCheck && (lhs.hasEncounterId == rhs.hasEncounterId) && (!lhs.hasEncounterId || lhs.encounterId == rhs.encounterId)
  fieldCheck = fieldCheck && (lhs.hasActivePokemonId == rhs.hasActivePokemonId) && (!lhs.hasActivePokemonId || lhs.activePokemonId == rhs.activePokemonId)
  fieldCheck = fieldCheck && (lhs.hasLureExpiresTimestampMs == rhs.hasLureExpiresTimestampMs) && (!lhs.hasLureExpiresTimestampMs || lhs.lureExpiresTimestampMs == rhs.lureExpiresTimestampMs)
  fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
  return fieldCheck
}

public extension Pogoprotos.Map.Fort {
  public struct FortLureInfoRoot {
    public static var sharedInstance : FortLureInfoRoot {
     struct Static {
         static let instance : FortLureInfoRoot = FortLureInfoRoot()
     }
     return Static.instance
    }
    public var extensionRegistry:ExtensionRegistry

    init() {
      extensionRegistry = ExtensionRegistry()
      registerAllExtensions(extensionRegistry)
      Pogoprotos.Enums.PokemonIdRoot.sharedInstance.registerAllExtensions(extensionRegistry)
    }
    public func registerAllExtensions(registry:ExtensionRegistry) {
    }
  }

  final public class FortLureInfo : GeneratedMessage, GeneratedMessageProtocol {
    public private(set) var hasFortId:Bool = false
    public private(set) var fortId:String = ""

    public private(set) var hasEncounterId:Bool = false
    public private(set) var encounterId:UInt64 = UInt64(0)

    public private(set) var activePokemonId:Pogoprotos.Enums.PokemonId = Pogoprotos.Enums.PokemonId.Missingno
    public private(set) var hasActivePokemonId:Bool = false
    public private(set) var hasLureExpiresTimestampMs:Bool = false
    public private(set) var lureExpiresTimestampMs:Int64 = Int64(0)

    required public init() {
         super.init()
    }
    override public func isInitialized() -> Bool {
     return true
    }
    override public func writeToCodedOutputStream(output:CodedOutputStream) throws {
      if hasFortId {
        try output.writeString(1, value:fortId)
      }
      if hasEncounterId {
        try output.writeFixed64(2, value:encounterId)
      }
      if hasActivePokemonId {
        try output.writeEnum(3, value:activePokemonId.rawValue)
      }
      if hasLureExpiresTimestampMs {
        try output.writeInt64(4, value:lureExpiresTimestampMs)
      }
      try unknownFields.writeToCodedOutputStream(output)
    }
    override public func serializedSize() -> Int32 {
      var serialize_size:Int32 = memoizedSerializedSize
      if serialize_size != -1 {
       return serialize_size
      }

      serialize_size = 0
      if hasFortId {
        serialize_size += fortId.computeStringSize(1)
      }
      if hasEncounterId {
        serialize_size += encounterId.computeFixed64Size(2)
      }
      if (hasActivePokemonId) {
        serialize_size += activePokemonId.rawValue.computeEnumSize(3)
      }
      if hasLureExpiresTimestampMs {
        serialize_size += lureExpiresTimestampMs.computeInt64Size(4)
      }
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    public class func parseArrayDelimitedFromInputStream(input:NSInputStream) throws -> Array<Pogoprotos.Map.Fort.FortLureInfo> {
      var mergedArray = Array<Pogoprotos.Map.Fort.FortLureInfo>()
      while let value = try parseFromDelimitedFromInputStream(input) {
        mergedArray += [value]
      }
      return mergedArray
    }
    public class func parseFromDelimitedFromInputStream(input:NSInputStream) throws -> Pogoprotos.Map.Fort.FortLureInfo? {
      return try Pogoprotos.Map.Fort.FortLureInfo.Builder().mergeDelimitedFromInputStream(input)?.build()
    }
    public class func parseFromData(data:NSData) throws -> Pogoprotos.Map.Fort.FortLureInfo {
      return try Pogoprotos.Map.Fort.FortLureInfo.Builder().mergeFromData(data, extensionRegistry:Pogoprotos.Map.Fort.FortLureInfoRoot.sharedInstance.extensionRegistry).build()
    }
    public class func parseFromData(data:NSData, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Map.Fort.FortLureInfo {
      return try Pogoprotos.Map.Fort.FortLureInfo.Builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromInputStream(input:NSInputStream) throws -> Pogoprotos.Map.Fort.FortLureInfo {
      return try Pogoprotos.Map.Fort.FortLureInfo.Builder().mergeFromInputStream(input).build()
    }
    public class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Map.Fort.FortLureInfo {
      return try Pogoprotos.Map.Fort.FortLureInfo.Builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Map.Fort.FortLureInfo {
      return try Pogoprotos.Map.Fort.FortLureInfo.Builder().mergeFromCodedInputStream(input).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Map.Fort.FortLureInfo {
      return try Pogoprotos.Map.Fort.FortLureInfo.Builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func getBuilder() -> Pogoprotos.Map.Fort.FortLureInfo.Builder {
      return Pogoprotos.Map.Fort.FortLureInfo.classBuilder() as! Pogoprotos.Map.Fort.FortLureInfo.Builder
    }
    public func getBuilder() -> Pogoprotos.Map.Fort.FortLureInfo.Builder {
      return classBuilder() as! Pogoprotos.Map.Fort.FortLureInfo.Builder
    }
    override public class func classBuilder() -> MessageBuilder {
      return Pogoprotos.Map.Fort.FortLureInfo.Builder()
    }
    override public func classBuilder() -> MessageBuilder {
      return Pogoprotos.Map.Fort.FortLureInfo.Builder()
    }
    public func toBuilder() throws -> Pogoprotos.Map.Fort.FortLureInfo.Builder {
      return try Pogoprotos.Map.Fort.FortLureInfo.builderWithPrototype(self)
    }
    public class func builderWithPrototype(prototype:Pogoprotos.Map.Fort.FortLureInfo) throws -> Pogoprotos.Map.Fort.FortLureInfo.Builder {
      return try Pogoprotos.Map.Fort.FortLureInfo.Builder().mergeFrom(prototype)
    }
    override public func encode() throws -> Dictionary<String,AnyObject> {
      guard isInitialized() else {
        throw ProtocolBuffersError.InvalidProtocolBuffer("Uninitialized Message")
      }

      var jsonMap:Dictionary<String,AnyObject> = Dictionary<String,AnyObject>()
      if hasFortId {
        jsonMap["fortId"] = fortId
      }
      if hasEncounterId {
        jsonMap["encounterId"] = "\(encounterId)"
      }
      if hasActivePokemonId {
        jsonMap["activePokemonId"] = activePokemonId.toString()
      }
      if hasLureExpiresTimestampMs {
        jsonMap["lureExpiresTimestampMs"] = "\(lureExpiresTimestampMs)"
      }
      return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Map.Fort.FortLureInfo {
      return try Pogoprotos.Map.Fort.FortLureInfo.Builder.decodeToBuilder(jsonMap).build()
    }
    override class public func fromJSON(data:NSData) throws -> Pogoprotos.Map.Fort.FortLureInfo {
      return try Pogoprotos.Map.Fort.FortLureInfo.Builder.fromJSONToBuilder(data).build()
    }
    override public func getDescription(indent:String) throws -> String {
      var output = ""
      if hasFortId {
        output += "\(indent) fortId: \(fortId) \n"
      }
      if hasEncounterId {
        output += "\(indent) encounterId: \(encounterId) \n"
      }
      if (hasActivePokemonId) {
        output += "\(indent) activePokemonId: \(activePokemonId.description)\n"
      }
      if hasLureExpiresTimestampMs {
        output += "\(indent) lureExpiresTimestampMs: \(lureExpiresTimestampMs) \n"
      }
      output += unknownFields.getDescription(indent)
      return output
    }
    override public var hashValue:Int {
        get {
            var hashCode:Int = 7
            if hasFortId {
               hashCode = (hashCode &* 31) &+ fortId.hashValue
            }
            if hasEncounterId {
               hashCode = (hashCode &* 31) &+ encounterId.hashValue
            }
            if hasActivePokemonId {
               hashCode = (hashCode &* 31) &+ Int(activePokemonId.rawValue)
            }
            if hasLureExpiresTimestampMs {
               hashCode = (hashCode &* 31) &+ lureExpiresTimestampMs.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "Pogoprotos.Map.Fort.FortLureInfo"
    }
    override public func className() -> String {
        return "Pogoprotos.Map.Fort.FortLureInfo"
    }
    override public func classMetaType() -> GeneratedMessage.Type {
        return Pogoprotos.Map.Fort.FortLureInfo.self
    }
    //Meta information declaration end

    final public class Builder : GeneratedMessageBuilder {
      private var builderResult:Pogoprotos.Map.Fort.FortLureInfo = Pogoprotos.Map.Fort.FortLureInfo()
      public func getMessage() -> Pogoprotos.Map.Fort.FortLureInfo {
          return builderResult
      }

      required override public init () {
         super.init()
      }
      public var hasFortId:Bool {
           get {
                return builderResult.hasFortId
           }
      }
      public var fortId:String {
           get {
                return builderResult.fortId
           }
           set (value) {
               builderResult.hasFortId = true
               builderResult.fortId = value
           }
      }
      public func setFortId(value:String) -> Pogoprotos.Map.Fort.FortLureInfo.Builder {
        self.fortId = value
        return self
      }
      public func clearFortId() -> Pogoprotos.Map.Fort.FortLureInfo.Builder{
           builderResult.hasFortId = false
           builderResult.fortId = ""
           return self
      }
      public var hasEncounterId:Bool {
           get {
                return builderResult.hasEncounterId
           }
      }
      public var encounterId:UInt64 {
           get {
                return builderResult.encounterId
           }
           set (value) {
               builderResult.hasEncounterId = true
               builderResult.encounterId = value
           }
      }
      public func setEncounterId(value:UInt64) -> Pogoprotos.Map.Fort.FortLureInfo.Builder {
        self.encounterId = value
        return self
      }
      public func clearEncounterId() -> Pogoprotos.Map.Fort.FortLureInfo.Builder{
           builderResult.hasEncounterId = false
           builderResult.encounterId = UInt64(0)
           return self
      }
        public var hasActivePokemonId:Bool{
            get {
                return builderResult.hasActivePokemonId
            }
        }
        public var activePokemonId:Pogoprotos.Enums.PokemonId {
            get {
                return builderResult.activePokemonId
            }
            set (value) {
                builderResult.hasActivePokemonId = true
                builderResult.activePokemonId = value
            }
        }
        public func setActivePokemonId(value:Pogoprotos.Enums.PokemonId) -> Pogoprotos.Map.Fort.FortLureInfo.Builder {
          self.activePokemonId = value
          return self
        }
        public func clearActivePokemonId() -> Pogoprotos.Map.Fort.FortLureInfo.Builder {
           builderResult.hasActivePokemonId = false
           builderResult.activePokemonId = .Missingno
           return self
        }
      public var hasLureExpiresTimestampMs:Bool {
           get {
                return builderResult.hasLureExpiresTimestampMs
           }
      }
      public var lureExpiresTimestampMs:Int64 {
           get {
                return builderResult.lureExpiresTimestampMs
           }
           set (value) {
               builderResult.hasLureExpiresTimestampMs = true
               builderResult.lureExpiresTimestampMs = value
           }
      }
      public func setLureExpiresTimestampMs(value:Int64) -> Pogoprotos.Map.Fort.FortLureInfo.Builder {
        self.lureExpiresTimestampMs = value
        return self
      }
      public func clearLureExpiresTimestampMs() -> Pogoprotos.Map.Fort.FortLureInfo.Builder{
           builderResult.hasLureExpiresTimestampMs = false
           builderResult.lureExpiresTimestampMs = Int64(0)
           return self
      }
      override public var internalGetResult:GeneratedMessage {
           get {
              return builderResult
           }
      }
      override public func clear() -> Pogoprotos.Map.Fort.FortLureInfo.Builder {
        builderResult = Pogoprotos.Map.Fort.FortLureInfo()
        return self
      }
      override public func clone() throws -> Pogoprotos.Map.Fort.FortLureInfo.Builder {
        return try Pogoprotos.Map.Fort.FortLureInfo.builderWithPrototype(builderResult)
      }
      override public func build() throws -> Pogoprotos.Map.Fort.FortLureInfo {
           try checkInitialized()
           return buildPartial()
      }
      public func buildPartial() -> Pogoprotos.Map.Fort.FortLureInfo {
        let returnMe:Pogoprotos.Map.Fort.FortLureInfo = builderResult
        return returnMe
      }
      public func mergeFrom(other:Pogoprotos.Map.Fort.FortLureInfo) throws -> Pogoprotos.Map.Fort.FortLureInfo.Builder {
        if other == Pogoprotos.Map.Fort.FortLureInfo() {
         return self
        }
        if other.hasFortId {
             fortId = other.fortId
        }
        if other.hasEncounterId {
             encounterId = other.encounterId
        }
        if other.hasActivePokemonId {
             activePokemonId = other.activePokemonId
        }
        if other.hasLureExpiresTimestampMs {
             lureExpiresTimestampMs = other.lureExpiresTimestampMs
        }
        try mergeUnknownFields(other.unknownFields)
        return self
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Map.Fort.FortLureInfo.Builder {
           return try mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Map.Fort.FortLureInfo.Builder {
        let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
        while (true) {
          let protobufTag = try input.readTag()
          switch protobufTag {
          case 0: 
            self.unknownFields = try unknownFieldsBuilder.build()
            return self

          case 10:
            fortId = try input.readString()

          case 17:
            encounterId = try input.readFixed64()

          case 24:
            let valueIntactivePokemonId = try input.readEnum()
            if let enumsactivePokemonId = Pogoprotos.Enums.PokemonId(rawValue:valueIntactivePokemonId){
                 activePokemonId = enumsactivePokemonId
            } else {
                 try unknownFieldsBuilder.mergeVarintField(3, value:Int64(valueIntactivePokemonId))
            }

          case 32:
            lureExpiresTimestampMs = try input.readInt64()

          default:
            if (!(try parseUnknownField(input,unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
               unknownFields = try unknownFieldsBuilder.build()
               return self
            }
          }
        }
      }
      override class public func decodeToBuilder(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Map.Fort.FortLureInfo.Builder {
        let resultDecodedBuilder = Pogoprotos.Map.Fort.FortLureInfo.Builder()
        if let jsonValueFortId = jsonMap["fortId"] as? String {
          resultDecodedBuilder.fortId = jsonValueFortId
        }
        if let jsonValueEncounterId = jsonMap["encounterId"] as? String {
          resultDecodedBuilder.encounterId = UInt64(jsonValueEncounterId)!
        }
        if let jsonValueActivePokemonId = jsonMap["activePokemonId"] as? String {
          resultDecodedBuilder.activePokemonId = try Pogoprotos.Enums.PokemonId.fromString(jsonValueActivePokemonId)
        }
        if let jsonValueLureExpiresTimestampMs = jsonMap["lureExpiresTimestampMs"] as? String {
          resultDecodedBuilder.lureExpiresTimestampMs = Int64(jsonValueLureExpiresTimestampMs)!
        }
        return resultDecodedBuilder
      }
      override class public func fromJSONToBuilder(data:NSData) throws -> Pogoprotos.Map.Fort.FortLureInfo.Builder {
        let jsonData = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions(rawValue: 0))
        guard let jsDataCast = jsonData as? Dictionary<String,AnyObject> else {
          throw ProtocolBuffersError.InvalidProtocolBuffer("Invalid JSON data")
        }
        return try Pogoprotos.Map.Fort.FortLureInfo.Builder.decodeToBuilder(jsDataCast)
      }
    }

  }

}

// @@protoc_insertion_point(global_scope)
