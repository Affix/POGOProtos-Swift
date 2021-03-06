// Generated by the Protocol Buffers 3.0 compiler.  DO NOT EDIT!
// Source file "UseItemEggIncubatorMessage.proto"
// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct Pogoprotos { public struct Networking { public struct Requests { public struct Messages { }}}}

public func == (lhs: Pogoprotos.Networking.Requests.Messages.UseItemEggIncubatorMessage, rhs: Pogoprotos.Networking.Requests.Messages.UseItemEggIncubatorMessage) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasItemId == rhs.hasItemId) && (!lhs.hasItemId || lhs.itemId == rhs.itemId)
  fieldCheck = fieldCheck && (lhs.hasPokemonId == rhs.hasPokemonId) && (!lhs.hasPokemonId || lhs.pokemonId == rhs.pokemonId)
  fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
  return fieldCheck
}

public extension Pogoprotos.Networking.Requests.Messages {
  public struct UseItemEggIncubatorMessageRoot {
    public static var sharedInstance : UseItemEggIncubatorMessageRoot {
     struct Static {
         static let instance : UseItemEggIncubatorMessageRoot = UseItemEggIncubatorMessageRoot()
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

  final public class UseItemEggIncubatorMessage : GeneratedMessage, GeneratedMessageProtocol {
    public private(set) var hasItemId:Bool = false
    public private(set) var itemId:String = ""

    public private(set) var hasPokemonId:Bool = false
    public private(set) var pokemonId:UInt64 = UInt64(0)

    required public init() {
         super.init()
    }
    override public func isInitialized() -> Bool {
     return true
    }
    override public func writeToCodedOutputStream(output:CodedOutputStream) throws {
      if hasItemId {
        try output.writeString(1, value:itemId)
      }
      if hasPokemonId {
        try output.writeUInt64(2, value:pokemonId)
      }
      try unknownFields.writeToCodedOutputStream(output)
    }
    override public func serializedSize() -> Int32 {
      var serialize_size:Int32 = memoizedSerializedSize
      if serialize_size != -1 {
       return serialize_size
      }

      serialize_size = 0
      if hasItemId {
        serialize_size += itemId.computeStringSize(1)
      }
      if hasPokemonId {
        serialize_size += pokemonId.computeUInt64Size(2)
      }
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    public class func parseArrayDelimitedFromInputStream(input:NSInputStream) throws -> Array<Pogoprotos.Networking.Requests.Messages.UseItemEggIncubatorMessage> {
      var mergedArray = Array<Pogoprotos.Networking.Requests.Messages.UseItemEggIncubatorMessage>()
      while let value = try parseFromDelimitedFromInputStream(input) {
        mergedArray += [value]
      }
      return mergedArray
    }
    public class func parseFromDelimitedFromInputStream(input:NSInputStream) throws -> Pogoprotos.Networking.Requests.Messages.UseItemEggIncubatorMessage? {
      return try Pogoprotos.Networking.Requests.Messages.UseItemEggIncubatorMessage.Builder().mergeDelimitedFromInputStream(input)?.build()
    }
    public class func parseFromData(data:NSData) throws -> Pogoprotos.Networking.Requests.Messages.UseItemEggIncubatorMessage {
      return try Pogoprotos.Networking.Requests.Messages.UseItemEggIncubatorMessage.Builder().mergeFromData(data, extensionRegistry:Pogoprotos.Networking.Requests.Messages.UseItemEggIncubatorMessageRoot.sharedInstance.extensionRegistry).build()
    }
    public class func parseFromData(data:NSData, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Requests.Messages.UseItemEggIncubatorMessage {
      return try Pogoprotos.Networking.Requests.Messages.UseItemEggIncubatorMessage.Builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromInputStream(input:NSInputStream) throws -> Pogoprotos.Networking.Requests.Messages.UseItemEggIncubatorMessage {
      return try Pogoprotos.Networking.Requests.Messages.UseItemEggIncubatorMessage.Builder().mergeFromInputStream(input).build()
    }
    public class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Requests.Messages.UseItemEggIncubatorMessage {
      return try Pogoprotos.Networking.Requests.Messages.UseItemEggIncubatorMessage.Builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Networking.Requests.Messages.UseItemEggIncubatorMessage {
      return try Pogoprotos.Networking.Requests.Messages.UseItemEggIncubatorMessage.Builder().mergeFromCodedInputStream(input).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Requests.Messages.UseItemEggIncubatorMessage {
      return try Pogoprotos.Networking.Requests.Messages.UseItemEggIncubatorMessage.Builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func getBuilder() -> Pogoprotos.Networking.Requests.Messages.UseItemEggIncubatorMessage.Builder {
      return Pogoprotos.Networking.Requests.Messages.UseItemEggIncubatorMessage.classBuilder() as! Pogoprotos.Networking.Requests.Messages.UseItemEggIncubatorMessage.Builder
    }
    public func getBuilder() -> Pogoprotos.Networking.Requests.Messages.UseItemEggIncubatorMessage.Builder {
      return classBuilder() as! Pogoprotos.Networking.Requests.Messages.UseItemEggIncubatorMessage.Builder
    }
    override public class func classBuilder() -> MessageBuilder {
      return Pogoprotos.Networking.Requests.Messages.UseItemEggIncubatorMessage.Builder()
    }
    override public func classBuilder() -> MessageBuilder {
      return Pogoprotos.Networking.Requests.Messages.UseItemEggIncubatorMessage.Builder()
    }
    public func toBuilder() throws -> Pogoprotos.Networking.Requests.Messages.UseItemEggIncubatorMessage.Builder {
      return try Pogoprotos.Networking.Requests.Messages.UseItemEggIncubatorMessage.builderWithPrototype(self)
    }
    public class func builderWithPrototype(prototype:Pogoprotos.Networking.Requests.Messages.UseItemEggIncubatorMessage) throws -> Pogoprotos.Networking.Requests.Messages.UseItemEggIncubatorMessage.Builder {
      return try Pogoprotos.Networking.Requests.Messages.UseItemEggIncubatorMessage.Builder().mergeFrom(prototype)
    }
    override public func encode() throws -> Dictionary<String,AnyObject> {
      guard isInitialized() else {
        throw ProtocolBuffersError.InvalidProtocolBuffer("Uninitialized Message")
      }

      var jsonMap:Dictionary<String,AnyObject> = Dictionary<String,AnyObject>()
      if hasItemId {
        jsonMap["itemId"] = itemId
      }
      if hasPokemonId {
        jsonMap["pokemonId"] = "\(pokemonId)"
      }
      return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Networking.Requests.Messages.UseItemEggIncubatorMessage {
      return try Pogoprotos.Networking.Requests.Messages.UseItemEggIncubatorMessage.Builder.decodeToBuilder(jsonMap).build()
    }
    override class public func fromJSON(data:NSData) throws -> Pogoprotos.Networking.Requests.Messages.UseItemEggIncubatorMessage {
      return try Pogoprotos.Networking.Requests.Messages.UseItemEggIncubatorMessage.Builder.fromJSONToBuilder(data).build()
    }
    override public func getDescription(indent:String) throws -> String {
      var output = ""
      if hasItemId {
        output += "\(indent) itemId: \(itemId) \n"
      }
      if hasPokemonId {
        output += "\(indent) pokemonId: \(pokemonId) \n"
      }
      output += unknownFields.getDescription(indent)
      return output
    }
    override public var hashValue:Int {
        get {
            var hashCode:Int = 7
            if hasItemId {
               hashCode = (hashCode &* 31) &+ itemId.hashValue
            }
            if hasPokemonId {
               hashCode = (hashCode &* 31) &+ pokemonId.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "Pogoprotos.Networking.Requests.Messages.UseItemEggIncubatorMessage"
    }
    override public func className() -> String {
        return "Pogoprotos.Networking.Requests.Messages.UseItemEggIncubatorMessage"
    }
    override public func classMetaType() -> GeneratedMessage.Type {
        return Pogoprotos.Networking.Requests.Messages.UseItemEggIncubatorMessage.self
    }
    //Meta information declaration end

    final public class Builder : GeneratedMessageBuilder {
      private var builderResult:Pogoprotos.Networking.Requests.Messages.UseItemEggIncubatorMessage = Pogoprotos.Networking.Requests.Messages.UseItemEggIncubatorMessage()
      public func getMessage() -> Pogoprotos.Networking.Requests.Messages.UseItemEggIncubatorMessage {
          return builderResult
      }

      required override public init () {
         super.init()
      }
      public var hasItemId:Bool {
           get {
                return builderResult.hasItemId
           }
      }
      public var itemId:String {
           get {
                return builderResult.itemId
           }
           set (value) {
               builderResult.hasItemId = true
               builderResult.itemId = value
           }
      }
      public func setItemId(value:String) -> Pogoprotos.Networking.Requests.Messages.UseItemEggIncubatorMessage.Builder {
        self.itemId = value
        return self
      }
      public func clearItemId() -> Pogoprotos.Networking.Requests.Messages.UseItemEggIncubatorMessage.Builder{
           builderResult.hasItemId = false
           builderResult.itemId = ""
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
      public func setPokemonId(value:UInt64) -> Pogoprotos.Networking.Requests.Messages.UseItemEggIncubatorMessage.Builder {
        self.pokemonId = value
        return self
      }
      public func clearPokemonId() -> Pogoprotos.Networking.Requests.Messages.UseItemEggIncubatorMessage.Builder{
           builderResult.hasPokemonId = false
           builderResult.pokemonId = UInt64(0)
           return self
      }
      override public var internalGetResult:GeneratedMessage {
           get {
              return builderResult
           }
      }
      override public func clear() -> Pogoprotos.Networking.Requests.Messages.UseItemEggIncubatorMessage.Builder {
        builderResult = Pogoprotos.Networking.Requests.Messages.UseItemEggIncubatorMessage()
        return self
      }
      override public func clone() throws -> Pogoprotos.Networking.Requests.Messages.UseItemEggIncubatorMessage.Builder {
        return try Pogoprotos.Networking.Requests.Messages.UseItemEggIncubatorMessage.builderWithPrototype(builderResult)
      }
      override public func build() throws -> Pogoprotos.Networking.Requests.Messages.UseItemEggIncubatorMessage {
           try checkInitialized()
           return buildPartial()
      }
      public func buildPartial() -> Pogoprotos.Networking.Requests.Messages.UseItemEggIncubatorMessage {
        let returnMe:Pogoprotos.Networking.Requests.Messages.UseItemEggIncubatorMessage = builderResult
        return returnMe
      }
      public func mergeFrom(other:Pogoprotos.Networking.Requests.Messages.UseItemEggIncubatorMessage) throws -> Pogoprotos.Networking.Requests.Messages.UseItemEggIncubatorMessage.Builder {
        if other == Pogoprotos.Networking.Requests.Messages.UseItemEggIncubatorMessage() {
         return self
        }
        if other.hasItemId {
             itemId = other.itemId
        }
        if other.hasPokemonId {
             pokemonId = other.pokemonId
        }
        try mergeUnknownFields(other.unknownFields)
        return self
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Networking.Requests.Messages.UseItemEggIncubatorMessage.Builder {
           return try mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Requests.Messages.UseItemEggIncubatorMessage.Builder {
        let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
        while (true) {
          let protobufTag = try input.readTag()
          switch protobufTag {
          case 0: 
            self.unknownFields = try unknownFieldsBuilder.build()
            return self

          case 10:
            itemId = try input.readString()

          case 16:
            pokemonId = try input.readUInt64()

          default:
            if (!(try parseUnknownField(input,unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
               unknownFields = try unknownFieldsBuilder.build()
               return self
            }
          }
        }
      }
      override class public func decodeToBuilder(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Networking.Requests.Messages.UseItemEggIncubatorMessage.Builder {
        let resultDecodedBuilder = Pogoprotos.Networking.Requests.Messages.UseItemEggIncubatorMessage.Builder()
        if let jsonValueItemId = jsonMap["itemId"] as? String {
          resultDecodedBuilder.itemId = jsonValueItemId
        }
        if let jsonValuePokemonId = jsonMap["pokemonId"] as? String {
          resultDecodedBuilder.pokemonId = UInt64(jsonValuePokemonId)!
        }
        return resultDecodedBuilder
      }
      override class public func fromJSONToBuilder(data:NSData) throws -> Pogoprotos.Networking.Requests.Messages.UseItemEggIncubatorMessage.Builder {
        let jsonData = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions(rawValue: 0))
        guard let jsDataCast = jsonData as? Dictionary<String,AnyObject> else {
          throw ProtocolBuffersError.InvalidProtocolBuffer("Invalid JSON data")
        }
        return try Pogoprotos.Networking.Requests.Messages.UseItemEggIncubatorMessage.Builder.decodeToBuilder(jsDataCast)
      }
    }

  }

}

// @@protoc_insertion_point(global_scope)
