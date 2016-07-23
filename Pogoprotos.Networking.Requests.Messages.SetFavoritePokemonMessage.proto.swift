// Generated by the Protocol Buffers 3.0 compiler.  DO NOT EDIT!
// Source file "SetFavoritePokemonMessage.proto"
// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct Pogoprotos { public struct Networking { public struct Requests { public struct Messages { }}}}

public func == (lhs: Pogoprotos.Networking.Requests.Messages.SetFavoritePokemonMessage, rhs: Pogoprotos.Networking.Requests.Messages.SetFavoritePokemonMessage) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasPokemonId == rhs.hasPokemonId) && (!lhs.hasPokemonId || lhs.pokemonId == rhs.pokemonId)
  fieldCheck = fieldCheck && (lhs.hasIsFavorite == rhs.hasIsFavorite) && (!lhs.hasIsFavorite || lhs.isFavorite == rhs.isFavorite)
  fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
  return fieldCheck
}

public extension Pogoprotos.Networking.Requests.Messages {
  public struct SetFavoritePokemonMessageRoot {
    public static var sharedInstance : SetFavoritePokemonMessageRoot {
     struct Static {
         static let instance : SetFavoritePokemonMessageRoot = SetFavoritePokemonMessageRoot()
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

  final public class SetFavoritePokemonMessage : GeneratedMessage, GeneratedMessageProtocol {
    public private(set) var hasPokemonId:Bool = false
    public private(set) var pokemonId:UInt64 = UInt64(0)

    public private(set) var hasIsFavorite:Bool = false
    public private(set) var isFavorite:Bool = false

    required public init() {
         super.init()
    }
    override public func isInitialized() -> Bool {
     return true
    }
    override public func writeToCodedOutputStream(output:CodedOutputStream) throws {
      if hasPokemonId {
        try output.writeUInt64(1, value:pokemonId)
      }
      if hasIsFavorite {
        try output.writeBool(2, value:isFavorite)
      }
      try unknownFields.writeToCodedOutputStream(output)
    }
    override public func serializedSize() -> Int32 {
      var serialize_size:Int32 = memoizedSerializedSize
      if serialize_size != -1 {
       return serialize_size
      }

      serialize_size = 0
      if hasPokemonId {
        serialize_size += pokemonId.computeUInt64Size(1)
      }
      if hasIsFavorite {
        serialize_size += isFavorite.computeBoolSize(2)
      }
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    public class func parseArrayDelimitedFromInputStream(input:NSInputStream) throws -> Array<Pogoprotos.Networking.Requests.Messages.SetFavoritePokemonMessage> {
      var mergedArray = Array<Pogoprotos.Networking.Requests.Messages.SetFavoritePokemonMessage>()
      while let value = try parseFromDelimitedFromInputStream(input) {
        mergedArray += [value]
      }
      return mergedArray
    }
    public class func parseFromDelimitedFromInputStream(input:NSInputStream) throws -> Pogoprotos.Networking.Requests.Messages.SetFavoritePokemonMessage? {
      return try Pogoprotos.Networking.Requests.Messages.SetFavoritePokemonMessage.Builder().mergeDelimitedFromInputStream(input)?.build()
    }
    public class func parseFromData(data:NSData) throws -> Pogoprotos.Networking.Requests.Messages.SetFavoritePokemonMessage {
      return try Pogoprotos.Networking.Requests.Messages.SetFavoritePokemonMessage.Builder().mergeFromData(data, extensionRegistry:Pogoprotos.Networking.Requests.Messages.SetFavoritePokemonMessageRoot.sharedInstance.extensionRegistry).build()
    }
    public class func parseFromData(data:NSData, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Requests.Messages.SetFavoritePokemonMessage {
      return try Pogoprotos.Networking.Requests.Messages.SetFavoritePokemonMessage.Builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromInputStream(input:NSInputStream) throws -> Pogoprotos.Networking.Requests.Messages.SetFavoritePokemonMessage {
      return try Pogoprotos.Networking.Requests.Messages.SetFavoritePokemonMessage.Builder().mergeFromInputStream(input).build()
    }
    public class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Requests.Messages.SetFavoritePokemonMessage {
      return try Pogoprotos.Networking.Requests.Messages.SetFavoritePokemonMessage.Builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Networking.Requests.Messages.SetFavoritePokemonMessage {
      return try Pogoprotos.Networking.Requests.Messages.SetFavoritePokemonMessage.Builder().mergeFromCodedInputStream(input).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Requests.Messages.SetFavoritePokemonMessage {
      return try Pogoprotos.Networking.Requests.Messages.SetFavoritePokemonMessage.Builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func getBuilder() -> Pogoprotos.Networking.Requests.Messages.SetFavoritePokemonMessage.Builder {
      return Pogoprotos.Networking.Requests.Messages.SetFavoritePokemonMessage.classBuilder() as! Pogoprotos.Networking.Requests.Messages.SetFavoritePokemonMessage.Builder
    }
    public func getBuilder() -> Pogoprotos.Networking.Requests.Messages.SetFavoritePokemonMessage.Builder {
      return classBuilder() as! Pogoprotos.Networking.Requests.Messages.SetFavoritePokemonMessage.Builder
    }
    override public class func classBuilder() -> MessageBuilder {
      return Pogoprotos.Networking.Requests.Messages.SetFavoritePokemonMessage.Builder()
    }
    override public func classBuilder() -> MessageBuilder {
      return Pogoprotos.Networking.Requests.Messages.SetFavoritePokemonMessage.Builder()
    }
    public func toBuilder() throws -> Pogoprotos.Networking.Requests.Messages.SetFavoritePokemonMessage.Builder {
      return try Pogoprotos.Networking.Requests.Messages.SetFavoritePokemonMessage.builderWithPrototype(self)
    }
    public class func builderWithPrototype(prototype:Pogoprotos.Networking.Requests.Messages.SetFavoritePokemonMessage) throws -> Pogoprotos.Networking.Requests.Messages.SetFavoritePokemonMessage.Builder {
      return try Pogoprotos.Networking.Requests.Messages.SetFavoritePokemonMessage.Builder().mergeFrom(prototype)
    }
    override public func encode() throws -> Dictionary<String,AnyObject> {
      guard isInitialized() else {
        throw ProtocolBuffersError.InvalidProtocolBuffer("Uninitialized Message")
      }

      var jsonMap:Dictionary<String,AnyObject> = Dictionary<String,AnyObject>()
      if hasPokemonId {
        jsonMap["pokemonId"] = "\(pokemonId)"
      }
      if hasIsFavorite {
        jsonMap["isFavorite"] = isFavorite
      }
      return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Networking.Requests.Messages.SetFavoritePokemonMessage {
      return try Pogoprotos.Networking.Requests.Messages.SetFavoritePokemonMessage.Builder.decodeToBuilder(jsonMap).build()
    }
    override class public func fromJSON(data:NSData) throws -> Pogoprotos.Networking.Requests.Messages.SetFavoritePokemonMessage {
      return try Pogoprotos.Networking.Requests.Messages.SetFavoritePokemonMessage.Builder.fromJSONToBuilder(data).build()
    }
    override public func getDescription(indent:String) throws -> String {
      var output = ""
      if hasPokemonId {
        output += "\(indent) pokemonId: \(pokemonId) \n"
      }
      if hasIsFavorite {
        output += "\(indent) isFavorite: \(isFavorite) \n"
      }
      output += unknownFields.getDescription(indent)
      return output
    }
    override public var hashValue:Int {
        get {
            var hashCode:Int = 7
            if hasPokemonId {
               hashCode = (hashCode &* 31) &+ pokemonId.hashValue
            }
            if hasIsFavorite {
               hashCode = (hashCode &* 31) &+ isFavorite.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "Pogoprotos.Networking.Requests.Messages.SetFavoritePokemonMessage"
    }
    override public func className() -> String {
        return "Pogoprotos.Networking.Requests.Messages.SetFavoritePokemonMessage"
    }
    override public func classMetaType() -> GeneratedMessage.Type {
        return Pogoprotos.Networking.Requests.Messages.SetFavoritePokemonMessage.self
    }
    //Meta information declaration end

    final public class Builder : GeneratedMessageBuilder {
      private var builderResult:Pogoprotos.Networking.Requests.Messages.SetFavoritePokemonMessage = Pogoprotos.Networking.Requests.Messages.SetFavoritePokemonMessage()
      public func getMessage() -> Pogoprotos.Networking.Requests.Messages.SetFavoritePokemonMessage {
          return builderResult
      }

      required override public init () {
         super.init()
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
      public func setPokemonId(value:UInt64) -> Pogoprotos.Networking.Requests.Messages.SetFavoritePokemonMessage.Builder {
        self.pokemonId = value
        return self
      }
      public func clearPokemonId() -> Pogoprotos.Networking.Requests.Messages.SetFavoritePokemonMessage.Builder{
           builderResult.hasPokemonId = false
           builderResult.pokemonId = UInt64(0)
           return self
      }
      public var hasIsFavorite:Bool {
           get {
                return builderResult.hasIsFavorite
           }
      }
      public var isFavorite:Bool {
           get {
                return builderResult.isFavorite
           }
           set (value) {
               builderResult.hasIsFavorite = true
               builderResult.isFavorite = value
           }
      }
      public func setIsFavorite(value:Bool) -> Pogoprotos.Networking.Requests.Messages.SetFavoritePokemonMessage.Builder {
        self.isFavorite = value
        return self
      }
      public func clearIsFavorite() -> Pogoprotos.Networking.Requests.Messages.SetFavoritePokemonMessage.Builder{
           builderResult.hasIsFavorite = false
           builderResult.isFavorite = false
           return self
      }
      override public var internalGetResult:GeneratedMessage {
           get {
              return builderResult
           }
      }
      override public func clear() -> Pogoprotos.Networking.Requests.Messages.SetFavoritePokemonMessage.Builder {
        builderResult = Pogoprotos.Networking.Requests.Messages.SetFavoritePokemonMessage()
        return self
      }
      override public func clone() throws -> Pogoprotos.Networking.Requests.Messages.SetFavoritePokemonMessage.Builder {
        return try Pogoprotos.Networking.Requests.Messages.SetFavoritePokemonMessage.builderWithPrototype(builderResult)
      }
      override public func build() throws -> Pogoprotos.Networking.Requests.Messages.SetFavoritePokemonMessage {
           try checkInitialized()
           return buildPartial()
      }
      public func buildPartial() -> Pogoprotos.Networking.Requests.Messages.SetFavoritePokemonMessage {
        let returnMe:Pogoprotos.Networking.Requests.Messages.SetFavoritePokemonMessage = builderResult
        return returnMe
      }
      public func mergeFrom(other:Pogoprotos.Networking.Requests.Messages.SetFavoritePokemonMessage) throws -> Pogoprotos.Networking.Requests.Messages.SetFavoritePokemonMessage.Builder {
        if other == Pogoprotos.Networking.Requests.Messages.SetFavoritePokemonMessage() {
         return self
        }
        if other.hasPokemonId {
             pokemonId = other.pokemonId
        }
        if other.hasIsFavorite {
             isFavorite = other.isFavorite
        }
        try mergeUnknownFields(other.unknownFields)
        return self
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Networking.Requests.Messages.SetFavoritePokemonMessage.Builder {
           return try mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Requests.Messages.SetFavoritePokemonMessage.Builder {
        let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
        while (true) {
          let protobufTag = try input.readTag()
          switch protobufTag {
          case 0: 
            self.unknownFields = try unknownFieldsBuilder.build()
            return self

          case 8:
            pokemonId = try input.readUInt64()

          case 16:
            isFavorite = try input.readBool()

          default:
            if (!(try parseUnknownField(input,unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
               unknownFields = try unknownFieldsBuilder.build()
               return self
            }
          }
        }
      }
      override class public func decodeToBuilder(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Networking.Requests.Messages.SetFavoritePokemonMessage.Builder {
        let resultDecodedBuilder = Pogoprotos.Networking.Requests.Messages.SetFavoritePokemonMessage.Builder()
        if let jsonValuePokemonId = jsonMap["pokemonId"] as? String {
          resultDecodedBuilder.pokemonId = UInt64(jsonValuePokemonId)!
        }
        if let jsonValueIsFavorite = jsonMap["isFavorite"] as? Bool {
          resultDecodedBuilder.isFavorite = jsonValueIsFavorite
        }
        return resultDecodedBuilder
      }
      override class public func fromJSONToBuilder(data:NSData) throws -> Pogoprotos.Networking.Requests.Messages.SetFavoritePokemonMessage.Builder {
        let jsonData = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions(rawValue: 0))
        guard let jsDataCast = jsonData as? Dictionary<String,AnyObject> else {
          throw ProtocolBuffersError.InvalidProtocolBuffer("Invalid JSON data")
        }
        return try Pogoprotos.Networking.Requests.Messages.SetFavoritePokemonMessage.Builder.decodeToBuilder(jsDataCast)
      }
    }

  }

}

// @@protoc_insertion_point(global_scope)