// Generated by the Protocol Buffers 3.0 compiler.  DO NOT EDIT!
// Source file "LevelUpRewardsMessage.proto"
// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct Pogoprotos { public struct Networking { public struct Requests { public struct Messages { }}}}

public func == (lhs: Pogoprotos.Networking.Requests.Messages.LevelUpRewardsMessage, rhs: Pogoprotos.Networking.Requests.Messages.LevelUpRewardsMessage) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasLevel == rhs.hasLevel) && (!lhs.hasLevel || lhs.level == rhs.level)
  fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
  return fieldCheck
}

public extension Pogoprotos.Networking.Requests.Messages {
  public struct LevelUpRewardsMessageRoot {
    public static var sharedInstance : LevelUpRewardsMessageRoot {
     struct Static {
         static let instance : LevelUpRewardsMessageRoot = LevelUpRewardsMessageRoot()
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

  final public class LevelUpRewardsMessage : GeneratedMessage, GeneratedMessageProtocol {
    public private(set) var hasLevel:Bool = false
    public private(set) var level:Int32 = Int32(0)

    required public init() {
         super.init()
    }
    override public func isInitialized() -> Bool {
     return true
    }
    override public func writeToCodedOutputStream(output:CodedOutputStream) throws {
      if hasLevel {
        try output.writeInt32(1, value:level)
      }
      try unknownFields.writeToCodedOutputStream(output)
    }
    override public func serializedSize() -> Int32 {
      var serialize_size:Int32 = memoizedSerializedSize
      if serialize_size != -1 {
       return serialize_size
      }

      serialize_size = 0
      if hasLevel {
        serialize_size += level.computeInt32Size(1)
      }
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    public class func parseArrayDelimitedFromInputStream(input:NSInputStream) throws -> Array<Pogoprotos.Networking.Requests.Messages.LevelUpRewardsMessage> {
      var mergedArray = Array<Pogoprotos.Networking.Requests.Messages.LevelUpRewardsMessage>()
      while let value = try parseFromDelimitedFromInputStream(input) {
        mergedArray += [value]
      }
      return mergedArray
    }
    public class func parseFromDelimitedFromInputStream(input:NSInputStream) throws -> Pogoprotos.Networking.Requests.Messages.LevelUpRewardsMessage? {
      return try Pogoprotos.Networking.Requests.Messages.LevelUpRewardsMessage.Builder().mergeDelimitedFromInputStream(input)?.build()
    }
    public class func parseFromData(data:NSData) throws -> Pogoprotos.Networking.Requests.Messages.LevelUpRewardsMessage {
      return try Pogoprotos.Networking.Requests.Messages.LevelUpRewardsMessage.Builder().mergeFromData(data, extensionRegistry:Pogoprotos.Networking.Requests.Messages.LevelUpRewardsMessageRoot.sharedInstance.extensionRegistry).build()
    }
    public class func parseFromData(data:NSData, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Requests.Messages.LevelUpRewardsMessage {
      return try Pogoprotos.Networking.Requests.Messages.LevelUpRewardsMessage.Builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromInputStream(input:NSInputStream) throws -> Pogoprotos.Networking.Requests.Messages.LevelUpRewardsMessage {
      return try Pogoprotos.Networking.Requests.Messages.LevelUpRewardsMessage.Builder().mergeFromInputStream(input).build()
    }
    public class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Requests.Messages.LevelUpRewardsMessage {
      return try Pogoprotos.Networking.Requests.Messages.LevelUpRewardsMessage.Builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Networking.Requests.Messages.LevelUpRewardsMessage {
      return try Pogoprotos.Networking.Requests.Messages.LevelUpRewardsMessage.Builder().mergeFromCodedInputStream(input).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Requests.Messages.LevelUpRewardsMessage {
      return try Pogoprotos.Networking.Requests.Messages.LevelUpRewardsMessage.Builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func getBuilder() -> Pogoprotos.Networking.Requests.Messages.LevelUpRewardsMessage.Builder {
      return Pogoprotos.Networking.Requests.Messages.LevelUpRewardsMessage.classBuilder() as! Pogoprotos.Networking.Requests.Messages.LevelUpRewardsMessage.Builder
    }
    public func getBuilder() -> Pogoprotos.Networking.Requests.Messages.LevelUpRewardsMessage.Builder {
      return classBuilder() as! Pogoprotos.Networking.Requests.Messages.LevelUpRewardsMessage.Builder
    }
    override public class func classBuilder() -> MessageBuilder {
      return Pogoprotos.Networking.Requests.Messages.LevelUpRewardsMessage.Builder()
    }
    override public func classBuilder() -> MessageBuilder {
      return Pogoprotos.Networking.Requests.Messages.LevelUpRewardsMessage.Builder()
    }
    public func toBuilder() throws -> Pogoprotos.Networking.Requests.Messages.LevelUpRewardsMessage.Builder {
      return try Pogoprotos.Networking.Requests.Messages.LevelUpRewardsMessage.builderWithPrototype(self)
    }
    public class func builderWithPrototype(prototype:Pogoprotos.Networking.Requests.Messages.LevelUpRewardsMessage) throws -> Pogoprotos.Networking.Requests.Messages.LevelUpRewardsMessage.Builder {
      return try Pogoprotos.Networking.Requests.Messages.LevelUpRewardsMessage.Builder().mergeFrom(prototype)
    }
    override public func encode() throws -> Dictionary<String,AnyObject> {
      guard isInitialized() else {
        throw ProtocolBuffersError.InvalidProtocolBuffer("Uninitialized Message")
      }

      var jsonMap:Dictionary<String,AnyObject> = Dictionary<String,AnyObject>()
      if hasLevel {
        jsonMap["level"] = NSNumber(int:level)
      }
      return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Networking.Requests.Messages.LevelUpRewardsMessage {
      return try Pogoprotos.Networking.Requests.Messages.LevelUpRewardsMessage.Builder.decodeToBuilder(jsonMap).build()
    }
    override class public func fromJSON(data:NSData) throws -> Pogoprotos.Networking.Requests.Messages.LevelUpRewardsMessage {
      return try Pogoprotos.Networking.Requests.Messages.LevelUpRewardsMessage.Builder.fromJSONToBuilder(data).build()
    }
    override public func getDescription(indent:String) throws -> String {
      var output = ""
      if hasLevel {
        output += "\(indent) level: \(level) \n"
      }
      output += unknownFields.getDescription(indent)
      return output
    }
    override public var hashValue:Int {
        get {
            var hashCode:Int = 7
            if hasLevel {
               hashCode = (hashCode &* 31) &+ level.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "Pogoprotos.Networking.Requests.Messages.LevelUpRewardsMessage"
    }
    override public func className() -> String {
        return "Pogoprotos.Networking.Requests.Messages.LevelUpRewardsMessage"
    }
    override public func classMetaType() -> GeneratedMessage.Type {
        return Pogoprotos.Networking.Requests.Messages.LevelUpRewardsMessage.self
    }
    //Meta information declaration end

    final public class Builder : GeneratedMessageBuilder {
      private var builderResult:Pogoprotos.Networking.Requests.Messages.LevelUpRewardsMessage = Pogoprotos.Networking.Requests.Messages.LevelUpRewardsMessage()
      public func getMessage() -> Pogoprotos.Networking.Requests.Messages.LevelUpRewardsMessage {
          return builderResult
      }

      required override public init () {
         super.init()
      }
      public var hasLevel:Bool {
           get {
                return builderResult.hasLevel
           }
      }
      public var level:Int32 {
           get {
                return builderResult.level
           }
           set (value) {
               builderResult.hasLevel = true
               builderResult.level = value
           }
      }
      public func setLevel(value:Int32) -> Pogoprotos.Networking.Requests.Messages.LevelUpRewardsMessage.Builder {
        self.level = value
        return self
      }
      public func clearLevel() -> Pogoprotos.Networking.Requests.Messages.LevelUpRewardsMessage.Builder{
           builderResult.hasLevel = false
           builderResult.level = Int32(0)
           return self
      }
      override public var internalGetResult:GeneratedMessage {
           get {
              return builderResult
           }
      }
      override public func clear() -> Pogoprotos.Networking.Requests.Messages.LevelUpRewardsMessage.Builder {
        builderResult = Pogoprotos.Networking.Requests.Messages.LevelUpRewardsMessage()
        return self
      }
      override public func clone() throws -> Pogoprotos.Networking.Requests.Messages.LevelUpRewardsMessage.Builder {
        return try Pogoprotos.Networking.Requests.Messages.LevelUpRewardsMessage.builderWithPrototype(builderResult)
      }
      override public func build() throws -> Pogoprotos.Networking.Requests.Messages.LevelUpRewardsMessage {
           try checkInitialized()
           return buildPartial()
      }
      public func buildPartial() -> Pogoprotos.Networking.Requests.Messages.LevelUpRewardsMessage {
        let returnMe:Pogoprotos.Networking.Requests.Messages.LevelUpRewardsMessage = builderResult
        return returnMe
      }
      public func mergeFrom(other:Pogoprotos.Networking.Requests.Messages.LevelUpRewardsMessage) throws -> Pogoprotos.Networking.Requests.Messages.LevelUpRewardsMessage.Builder {
        if other == Pogoprotos.Networking.Requests.Messages.LevelUpRewardsMessage() {
         return self
        }
        if other.hasLevel {
             level = other.level
        }
        try mergeUnknownFields(other.unknownFields)
        return self
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Networking.Requests.Messages.LevelUpRewardsMessage.Builder {
           return try mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Requests.Messages.LevelUpRewardsMessage.Builder {
        let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
        while (true) {
          let protobufTag = try input.readTag()
          switch protobufTag {
          case 0: 
            self.unknownFields = try unknownFieldsBuilder.build()
            return self

          case 8:
            level = try input.readInt32()

          default:
            if (!(try parseUnknownField(input,unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
               unknownFields = try unknownFieldsBuilder.build()
               return self
            }
          }
        }
      }
      override class public func decodeToBuilder(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Networking.Requests.Messages.LevelUpRewardsMessage.Builder {
        let resultDecodedBuilder = Pogoprotos.Networking.Requests.Messages.LevelUpRewardsMessage.Builder()
        if let jsonValueLevel = jsonMap["level"] as? NSNumber {
          resultDecodedBuilder.level = jsonValueLevel.intValue
        }
        return resultDecodedBuilder
      }
      override class public func fromJSONToBuilder(data:NSData) throws -> Pogoprotos.Networking.Requests.Messages.LevelUpRewardsMessage.Builder {
        let jsonData = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions(rawValue: 0))
        guard let jsDataCast = jsonData as? Dictionary<String,AnyObject> else {
          throw ProtocolBuffersError.InvalidProtocolBuffer("Invalid JSON data")
        }
        return try Pogoprotos.Networking.Requests.Messages.LevelUpRewardsMessage.Builder.decodeToBuilder(jsDataCast)
      }
    }

  }

}

// @@protoc_insertion_point(global_scope)