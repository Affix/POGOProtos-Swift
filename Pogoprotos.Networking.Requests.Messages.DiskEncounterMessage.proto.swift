// Generated by the Protocol Buffers 3.0 compiler.  DO NOT EDIT!
// Source file "DiskEncounterMessage.proto"
// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct Pogoprotos { public struct Networking { public struct Requests { public struct Messages { }}}}

public func == (lhs: Pogoprotos.Networking.Requests.Messages.DiskEncounterMessage, rhs: Pogoprotos.Networking.Requests.Messages.DiskEncounterMessage) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasEncounterId == rhs.hasEncounterId) && (!lhs.hasEncounterId || lhs.encounterId == rhs.encounterId)
  fieldCheck = fieldCheck && (lhs.hasFortId == rhs.hasFortId) && (!lhs.hasFortId || lhs.fortId == rhs.fortId)
  fieldCheck = fieldCheck && (lhs.hasPlayerLatitude == rhs.hasPlayerLatitude) && (!lhs.hasPlayerLatitude || lhs.playerLatitude == rhs.playerLatitude)
  fieldCheck = fieldCheck && (lhs.hasPlayerLongitude == rhs.hasPlayerLongitude) && (!lhs.hasPlayerLongitude || lhs.playerLongitude == rhs.playerLongitude)
  fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
  return fieldCheck
}

public extension Pogoprotos.Networking.Requests.Messages {
  public struct DiskEncounterMessageRoot {
    public static var sharedInstance : DiskEncounterMessageRoot {
     struct Static {
         static let instance : DiskEncounterMessageRoot = DiskEncounterMessageRoot()
     }
     return Static.instance
    }
    public var extensionRegistry:ExtensionRegistry

    init() {
      extensionRegistry = ExtensionRegistry()
      registerAllExtensions(extensionRegistry)
    }
    public func registerAllExtensions(registry:ExtensionRegistry) {
    }
  }

  final public class DiskEncounterMessage : GeneratedMessage, GeneratedMessageProtocol {
    public private(set) var hasEncounterId:Bool = false
    public private(set) var encounterId:UInt64 = UInt64(0)

    public private(set) var hasFortId:Bool = false
    public private(set) var fortId:String = ""

    public private(set) var hasPlayerLatitude:Bool = false
    public private(set) var playerLatitude:Double = Double(0)

    public private(set) var hasPlayerLongitude:Bool = false
    public private(set) var playerLongitude:Double = Double(0)

    required public init() {
         super.init()
    }
    override public func isInitialized() -> Bool {
     return true
    }
    override public func writeToCodedOutputStream(output:CodedOutputStream) throws {
      if hasEncounterId {
        try output.writeUInt64(1, value:encounterId)
      }
      if hasFortId {
        try output.writeString(2, value:fortId)
      }
      if hasPlayerLatitude {
        try output.writeDouble(3, value:playerLatitude)
      }
      if hasPlayerLongitude {
        try output.writeDouble(4, value:playerLongitude)
      }
      try unknownFields.writeToCodedOutputStream(output)
    }
    override public func serializedSize() -> Int32 {
      var serialize_size:Int32 = memoizedSerializedSize
      if serialize_size != -1 {
       return serialize_size
      }

      serialize_size = 0
      if hasEncounterId {
        serialize_size += encounterId.computeUInt64Size(1)
      }
      if hasFortId {
        serialize_size += fortId.computeStringSize(2)
      }
      if hasPlayerLatitude {
        serialize_size += playerLatitude.computeDoubleSize(3)
      }
      if hasPlayerLongitude {
        serialize_size += playerLongitude.computeDoubleSize(4)
      }
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    public class func parseArrayDelimitedFromInputStream(input:NSInputStream) throws -> Array<Pogoprotos.Networking.Requests.Messages.DiskEncounterMessage> {
      var mergedArray = Array<Pogoprotos.Networking.Requests.Messages.DiskEncounterMessage>()
      while let value = try parseFromDelimitedFromInputStream(input) {
        mergedArray += [value]
      }
      return mergedArray
    }
    public class func parseFromDelimitedFromInputStream(input:NSInputStream) throws -> Pogoprotos.Networking.Requests.Messages.DiskEncounterMessage? {
      return try Pogoprotos.Networking.Requests.Messages.DiskEncounterMessage.Builder().mergeDelimitedFromInputStream(input)?.build()
    }
    public class func parseFromData(data:NSData) throws -> Pogoprotos.Networking.Requests.Messages.DiskEncounterMessage {
      return try Pogoprotos.Networking.Requests.Messages.DiskEncounterMessage.Builder().mergeFromData(data, extensionRegistry:Pogoprotos.Networking.Requests.Messages.DiskEncounterMessageRoot.sharedInstance.extensionRegistry).build()
    }
    public class func parseFromData(data:NSData, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Requests.Messages.DiskEncounterMessage {
      return try Pogoprotos.Networking.Requests.Messages.DiskEncounterMessage.Builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromInputStream(input:NSInputStream) throws -> Pogoprotos.Networking.Requests.Messages.DiskEncounterMessage {
      return try Pogoprotos.Networking.Requests.Messages.DiskEncounterMessage.Builder().mergeFromInputStream(input).build()
    }
    public class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Requests.Messages.DiskEncounterMessage {
      return try Pogoprotos.Networking.Requests.Messages.DiskEncounterMessage.Builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Networking.Requests.Messages.DiskEncounterMessage {
      return try Pogoprotos.Networking.Requests.Messages.DiskEncounterMessage.Builder().mergeFromCodedInputStream(input).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Requests.Messages.DiskEncounterMessage {
      return try Pogoprotos.Networking.Requests.Messages.DiskEncounterMessage.Builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func getBuilder() -> Pogoprotos.Networking.Requests.Messages.DiskEncounterMessage.Builder {
      return Pogoprotos.Networking.Requests.Messages.DiskEncounterMessage.classBuilder() as! Pogoprotos.Networking.Requests.Messages.DiskEncounterMessage.Builder
    }
    public func getBuilder() -> Pogoprotos.Networking.Requests.Messages.DiskEncounterMessage.Builder {
      return classBuilder() as! Pogoprotos.Networking.Requests.Messages.DiskEncounterMessage.Builder
    }
    override public class func classBuilder() -> MessageBuilder {
      return Pogoprotos.Networking.Requests.Messages.DiskEncounterMessage.Builder()
    }
    override public func classBuilder() -> MessageBuilder {
      return Pogoprotos.Networking.Requests.Messages.DiskEncounterMessage.Builder()
    }
    public func toBuilder() throws -> Pogoprotos.Networking.Requests.Messages.DiskEncounterMessage.Builder {
      return try Pogoprotos.Networking.Requests.Messages.DiskEncounterMessage.builderWithPrototype(self)
    }
    public class func builderWithPrototype(prototype:Pogoprotos.Networking.Requests.Messages.DiskEncounterMessage) throws -> Pogoprotos.Networking.Requests.Messages.DiskEncounterMessage.Builder {
      return try Pogoprotos.Networking.Requests.Messages.DiskEncounterMessage.Builder().mergeFrom(prototype)
    }
    override public func encode() throws -> Dictionary<String,AnyObject> {
      guard isInitialized() else {
        throw ProtocolBuffersError.InvalidProtocolBuffer("Uninitialized Message")
      }

      var jsonMap:Dictionary<String,AnyObject> = Dictionary<String,AnyObject>()
      if hasEncounterId {
        jsonMap["encounterId"] = "\(encounterId)"
      }
      if hasFortId {
        jsonMap["fortId"] = fortId
      }
      if hasPlayerLatitude {
        jsonMap["playerLatitude"] = NSNumber(double:playerLatitude)
      }
      if hasPlayerLongitude {
        jsonMap["playerLongitude"] = NSNumber(double:playerLongitude)
      }
      return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Networking.Requests.Messages.DiskEncounterMessage {
      return try Pogoprotos.Networking.Requests.Messages.DiskEncounterMessage.Builder.decodeToBuilder(jsonMap).build()
    }
    override class public func fromJSON(data:NSData) throws -> Pogoprotos.Networking.Requests.Messages.DiskEncounterMessage {
      return try Pogoprotos.Networking.Requests.Messages.DiskEncounterMessage.Builder.fromJSONToBuilder(data).build()
    }
    override public func getDescription(indent:String) throws -> String {
      var output = ""
      if hasEncounterId {
        output += "\(indent) encounterId: \(encounterId) \n"
      }
      if hasFortId {
        output += "\(indent) fortId: \(fortId) \n"
      }
      if hasPlayerLatitude {
        output += "\(indent) playerLatitude: \(playerLatitude) \n"
      }
      if hasPlayerLongitude {
        output += "\(indent) playerLongitude: \(playerLongitude) \n"
      }
      output += unknownFields.getDescription(indent)
      return output
    }
    override public var hashValue:Int {
        get {
            var hashCode:Int = 7
            if hasEncounterId {
               hashCode = (hashCode &* 31) &+ encounterId.hashValue
            }
            if hasFortId {
               hashCode = (hashCode &* 31) &+ fortId.hashValue
            }
            if hasPlayerLatitude {
               hashCode = (hashCode &* 31) &+ playerLatitude.hashValue
            }
            if hasPlayerLongitude {
               hashCode = (hashCode &* 31) &+ playerLongitude.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "Pogoprotos.Networking.Requests.Messages.DiskEncounterMessage"
    }
    override public func className() -> String {
        return "Pogoprotos.Networking.Requests.Messages.DiskEncounterMessage"
    }
    override public func classMetaType() -> GeneratedMessage.Type {
        return Pogoprotos.Networking.Requests.Messages.DiskEncounterMessage.self
    }
    //Meta information declaration end

    final public class Builder : GeneratedMessageBuilder {
      private var builderResult:Pogoprotos.Networking.Requests.Messages.DiskEncounterMessage = Pogoprotos.Networking.Requests.Messages.DiskEncounterMessage()
      public func getMessage() -> Pogoprotos.Networking.Requests.Messages.DiskEncounterMessage {
          return builderResult
      }

      required override public init () {
         super.init()
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
      public func setEncounterId(value:UInt64) -> Pogoprotos.Networking.Requests.Messages.DiskEncounterMessage.Builder {
        self.encounterId = value
        return self
      }
      public func clearEncounterId() -> Pogoprotos.Networking.Requests.Messages.DiskEncounterMessage.Builder{
           builderResult.hasEncounterId = false
           builderResult.encounterId = UInt64(0)
           return self
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
      public func setFortId(value:String) -> Pogoprotos.Networking.Requests.Messages.DiskEncounterMessage.Builder {
        self.fortId = value
        return self
      }
      public func clearFortId() -> Pogoprotos.Networking.Requests.Messages.DiskEncounterMessage.Builder{
           builderResult.hasFortId = false
           builderResult.fortId = ""
           return self
      }
      public var hasPlayerLatitude:Bool {
           get {
                return builderResult.hasPlayerLatitude
           }
      }
      public var playerLatitude:Double {
           get {
                return builderResult.playerLatitude
           }
           set (value) {
               builderResult.hasPlayerLatitude = true
               builderResult.playerLatitude = value
           }
      }
      public func setPlayerLatitude(value:Double) -> Pogoprotos.Networking.Requests.Messages.DiskEncounterMessage.Builder {
        self.playerLatitude = value
        return self
      }
      public func clearPlayerLatitude() -> Pogoprotos.Networking.Requests.Messages.DiskEncounterMessage.Builder{
           builderResult.hasPlayerLatitude = false
           builderResult.playerLatitude = Double(0)
           return self
      }
      public var hasPlayerLongitude:Bool {
           get {
                return builderResult.hasPlayerLongitude
           }
      }
      public var playerLongitude:Double {
           get {
                return builderResult.playerLongitude
           }
           set (value) {
               builderResult.hasPlayerLongitude = true
               builderResult.playerLongitude = value
           }
      }
      public func setPlayerLongitude(value:Double) -> Pogoprotos.Networking.Requests.Messages.DiskEncounterMessage.Builder {
        self.playerLongitude = value
        return self
      }
      public func clearPlayerLongitude() -> Pogoprotos.Networking.Requests.Messages.DiskEncounterMessage.Builder{
           builderResult.hasPlayerLongitude = false
           builderResult.playerLongitude = Double(0)
           return self
      }
      override public var internalGetResult:GeneratedMessage {
           get {
              return builderResult
           }
      }
      override public func clear() -> Pogoprotos.Networking.Requests.Messages.DiskEncounterMessage.Builder {
        builderResult = Pogoprotos.Networking.Requests.Messages.DiskEncounterMessage()
        return self
      }
      override public func clone() throws -> Pogoprotos.Networking.Requests.Messages.DiskEncounterMessage.Builder {
        return try Pogoprotos.Networking.Requests.Messages.DiskEncounterMessage.builderWithPrototype(builderResult)
      }
      override public func build() throws -> Pogoprotos.Networking.Requests.Messages.DiskEncounterMessage {
           try checkInitialized()
           return buildPartial()
      }
      public func buildPartial() -> Pogoprotos.Networking.Requests.Messages.DiskEncounterMessage {
        let returnMe:Pogoprotos.Networking.Requests.Messages.DiskEncounterMessage = builderResult
        return returnMe
      }
      public func mergeFrom(other:Pogoprotos.Networking.Requests.Messages.DiskEncounterMessage) throws -> Pogoprotos.Networking.Requests.Messages.DiskEncounterMessage.Builder {
        if other == Pogoprotos.Networking.Requests.Messages.DiskEncounterMessage() {
         return self
        }
        if other.hasEncounterId {
             encounterId = other.encounterId
        }
        if other.hasFortId {
             fortId = other.fortId
        }
        if other.hasPlayerLatitude {
             playerLatitude = other.playerLatitude
        }
        if other.hasPlayerLongitude {
             playerLongitude = other.playerLongitude
        }
        try mergeUnknownFields(other.unknownFields)
        return self
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Networking.Requests.Messages.DiskEncounterMessage.Builder {
           return try mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Requests.Messages.DiskEncounterMessage.Builder {
        let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
        while (true) {
          let protobufTag = try input.readTag()
          switch protobufTag {
          case 0: 
            self.unknownFields = try unknownFieldsBuilder.build()
            return self

          case 8:
            encounterId = try input.readUInt64()

          case 18:
            fortId = try input.readString()

          case 25:
            playerLatitude = try input.readDouble()

          case 33:
            playerLongitude = try input.readDouble()

          default:
            if (!(try parseUnknownField(input,unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
               unknownFields = try unknownFieldsBuilder.build()
               return self
            }
          }
        }
      }
      override class public func decodeToBuilder(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Networking.Requests.Messages.DiskEncounterMessage.Builder {
        let resultDecodedBuilder = Pogoprotos.Networking.Requests.Messages.DiskEncounterMessage.Builder()
        if let jsonValueEncounterId = jsonMap["encounterId"] as? String {
          resultDecodedBuilder.encounterId = UInt64(jsonValueEncounterId)!
        }
        if let jsonValueFortId = jsonMap["fortId"] as? String {
          resultDecodedBuilder.fortId = jsonValueFortId
        }
        if let jsonValuePlayerLatitude = jsonMap["playerLatitude"] as? NSNumber {
          resultDecodedBuilder.playerLatitude = jsonValuePlayerLatitude.doubleValue
        }
        if let jsonValuePlayerLongitude = jsonMap["playerLongitude"] as? NSNumber {
          resultDecodedBuilder.playerLongitude = jsonValuePlayerLongitude.doubleValue
        }
        return resultDecodedBuilder
      }
      override class public func fromJSONToBuilder(data:NSData) throws -> Pogoprotos.Networking.Requests.Messages.DiskEncounterMessage.Builder {
        let jsonData = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions(rawValue: 0))
        guard let jsDataCast = jsonData as? Dictionary<String,AnyObject> else {
          throw ProtocolBuffersError.InvalidProtocolBuffer("Invalid JSON data")
        }
        return try Pogoprotos.Networking.Requests.Messages.DiskEncounterMessage.Builder.decodeToBuilder(jsDataCast)
      }
    }

  }

}

// @@protoc_insertion_point(global_scope)
