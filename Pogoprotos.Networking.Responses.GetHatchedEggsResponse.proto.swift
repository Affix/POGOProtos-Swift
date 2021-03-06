// Generated by the Protocol Buffers 3.0 compiler.  DO NOT EDIT!
// Source file "GetHatchedEggsResponse.proto"
// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct Pogoprotos { public struct Networking { public struct Responses { }}}

public func == (lhs: Pogoprotos.Networking.Responses.GetHatchedEggsResponse, rhs: Pogoprotos.Networking.Responses.GetHatchedEggsResponse) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasSuccess == rhs.hasSuccess) && (!lhs.hasSuccess || lhs.success == rhs.success)
  fieldCheck = fieldCheck && (lhs.pokemonId == rhs.pokemonId)
  fieldCheck = fieldCheck && (lhs.experienceAwarded == rhs.experienceAwarded)
  fieldCheck = fieldCheck && (lhs.candyAwarded == rhs.candyAwarded)
  fieldCheck = fieldCheck && (lhs.stardustAwarded == rhs.stardustAwarded)
  fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
  return fieldCheck
}

public extension Pogoprotos.Networking.Responses {
  public struct GetHatchedEggsResponseRoot {
    public static var sharedInstance : GetHatchedEggsResponseRoot {
     struct Static {
         static let instance : GetHatchedEggsResponseRoot = GetHatchedEggsResponseRoot()
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

  final public class GetHatchedEggsResponse : GeneratedMessage, GeneratedMessageProtocol {
    public private(set) var hasSuccess:Bool = false
    public private(set) var success:Bool = false

    public private(set) var pokemonId:Array<UInt64> = Array<UInt64>()
    private var pokemonIdMemoizedSerializedSize:Int32 = -1
    public private(set) var experienceAwarded:Array<Int32> = Array<Int32>()
    private var experienceAwardedMemoizedSerializedSize:Int32 = -1
    public private(set) var candyAwarded:Array<Int32> = Array<Int32>()
    private var candyAwardedMemoizedSerializedSize:Int32 = -1
    public private(set) var stardustAwarded:Array<Int32> = Array<Int32>()
    private var stardustAwardedMemoizedSerializedSize:Int32 = -1
    required public init() {
         super.init()
    }
    override public func isInitialized() -> Bool {
     return true
    }
    override public func writeToCodedOutputStream(output:CodedOutputStream) throws {
      if hasSuccess {
        try output.writeBool(1, value:success)
      }
      if !pokemonId.isEmpty {
        try output.writeRawVarint32(18)
        try output.writeRawVarint32(pokemonIdMemoizedSerializedSize)
        for oneValuepokemonId in pokemonId {
          try output.writeUInt64NoTag(oneValuepokemonId)
        }
      }
      if !experienceAwarded.isEmpty {
        try output.writeRawVarint32(26)
        try output.writeRawVarint32(experienceAwardedMemoizedSerializedSize)
        for oneValueexperienceAwarded in experienceAwarded {
          try output.writeInt32NoTag(oneValueexperienceAwarded)
        }
      }
      if !candyAwarded.isEmpty {
        try output.writeRawVarint32(34)
        try output.writeRawVarint32(candyAwardedMemoizedSerializedSize)
        for oneValuecandyAwarded in candyAwarded {
          try output.writeInt32NoTag(oneValuecandyAwarded)
        }
      }
      if !stardustAwarded.isEmpty {
        try output.writeRawVarint32(42)
        try output.writeRawVarint32(stardustAwardedMemoizedSerializedSize)
        for oneValuestardustAwarded in stardustAwarded {
          try output.writeInt32NoTag(oneValuestardustAwarded)
        }
      }
      try unknownFields.writeToCodedOutputStream(output)
    }
    override public func serializedSize() -> Int32 {
      var serialize_size:Int32 = memoizedSerializedSize
      if serialize_size != -1 {
       return serialize_size
      }

      serialize_size = 0
      if hasSuccess {
        serialize_size += success.computeBoolSize(1)
      }
      var dataSizePokemonId:Int32 = 0
      for oneValuepokemonId in pokemonId {
          dataSizePokemonId += oneValuepokemonId.computeUInt64SizeNoTag()
      }
      serialize_size += dataSizePokemonId
      if !pokemonId.isEmpty {
        serialize_size += 1
        serialize_size += dataSizePokemonId.computeInt32SizeNoTag()
      }
      pokemonIdMemoizedSerializedSize = dataSizePokemonId
      var dataSizeExperienceAwarded:Int32 = 0
      for oneValueexperienceAwarded in experienceAwarded {
          dataSizeExperienceAwarded += oneValueexperienceAwarded.computeInt32SizeNoTag()
      }
      serialize_size += dataSizeExperienceAwarded
      if !experienceAwarded.isEmpty {
        serialize_size += 1
        serialize_size += dataSizeExperienceAwarded.computeInt32SizeNoTag()
      }
      experienceAwardedMemoizedSerializedSize = dataSizeExperienceAwarded
      var dataSizeCandyAwarded:Int32 = 0
      for oneValuecandyAwarded in candyAwarded {
          dataSizeCandyAwarded += oneValuecandyAwarded.computeInt32SizeNoTag()
      }
      serialize_size += dataSizeCandyAwarded
      if !candyAwarded.isEmpty {
        serialize_size += 1
        serialize_size += dataSizeCandyAwarded.computeInt32SizeNoTag()
      }
      candyAwardedMemoizedSerializedSize = dataSizeCandyAwarded
      var dataSizeStardustAwarded:Int32 = 0
      for oneValuestardustAwarded in stardustAwarded {
          dataSizeStardustAwarded += oneValuestardustAwarded.computeInt32SizeNoTag()
      }
      serialize_size += dataSizeStardustAwarded
      if !stardustAwarded.isEmpty {
        serialize_size += 1
        serialize_size += dataSizeStardustAwarded.computeInt32SizeNoTag()
      }
      stardustAwardedMemoizedSerializedSize = dataSizeStardustAwarded
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    public class func parseArrayDelimitedFromInputStream(input:NSInputStream) throws -> Array<Pogoprotos.Networking.Responses.GetHatchedEggsResponse> {
      var mergedArray = Array<Pogoprotos.Networking.Responses.GetHatchedEggsResponse>()
      while let value = try parseFromDelimitedFromInputStream(input) {
        mergedArray += [value]
      }
      return mergedArray
    }
    public class func parseFromDelimitedFromInputStream(input:NSInputStream) throws -> Pogoprotos.Networking.Responses.GetHatchedEggsResponse? {
      return try Pogoprotos.Networking.Responses.GetHatchedEggsResponse.Builder().mergeDelimitedFromInputStream(input)?.build()
    }
    public class func parseFromData(data:NSData) throws -> Pogoprotos.Networking.Responses.GetHatchedEggsResponse {
      return try Pogoprotos.Networking.Responses.GetHatchedEggsResponse.Builder().mergeFromData(data, extensionRegistry:Pogoprotos.Networking.Responses.GetHatchedEggsResponseRoot.sharedInstance.extensionRegistry).build()
    }
    public class func parseFromData(data:NSData, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Responses.GetHatchedEggsResponse {
      return try Pogoprotos.Networking.Responses.GetHatchedEggsResponse.Builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromInputStream(input:NSInputStream) throws -> Pogoprotos.Networking.Responses.GetHatchedEggsResponse {
      return try Pogoprotos.Networking.Responses.GetHatchedEggsResponse.Builder().mergeFromInputStream(input).build()
    }
    public class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Responses.GetHatchedEggsResponse {
      return try Pogoprotos.Networking.Responses.GetHatchedEggsResponse.Builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Networking.Responses.GetHatchedEggsResponse {
      return try Pogoprotos.Networking.Responses.GetHatchedEggsResponse.Builder().mergeFromCodedInputStream(input).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Responses.GetHatchedEggsResponse {
      return try Pogoprotos.Networking.Responses.GetHatchedEggsResponse.Builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func getBuilder() -> Pogoprotos.Networking.Responses.GetHatchedEggsResponse.Builder {
      return Pogoprotos.Networking.Responses.GetHatchedEggsResponse.classBuilder() as! Pogoprotos.Networking.Responses.GetHatchedEggsResponse.Builder
    }
    public func getBuilder() -> Pogoprotos.Networking.Responses.GetHatchedEggsResponse.Builder {
      return classBuilder() as! Pogoprotos.Networking.Responses.GetHatchedEggsResponse.Builder
    }
    override public class func classBuilder() -> MessageBuilder {
      return Pogoprotos.Networking.Responses.GetHatchedEggsResponse.Builder()
    }
    override public func classBuilder() -> MessageBuilder {
      return Pogoprotos.Networking.Responses.GetHatchedEggsResponse.Builder()
    }
    public func toBuilder() throws -> Pogoprotos.Networking.Responses.GetHatchedEggsResponse.Builder {
      return try Pogoprotos.Networking.Responses.GetHatchedEggsResponse.builderWithPrototype(self)
    }
    public class func builderWithPrototype(prototype:Pogoprotos.Networking.Responses.GetHatchedEggsResponse) throws -> Pogoprotos.Networking.Responses.GetHatchedEggsResponse.Builder {
      return try Pogoprotos.Networking.Responses.GetHatchedEggsResponse.Builder().mergeFrom(prototype)
    }
    override public func encode() throws -> Dictionary<String,AnyObject> {
      guard isInitialized() else {
        throw ProtocolBuffersError.InvalidProtocolBuffer("Uninitialized Message")
      }

      var jsonMap:Dictionary<String,AnyObject> = Dictionary<String,AnyObject>()
      if hasSuccess {
        jsonMap["success"] = success
      }
      if !pokemonId.isEmpty {
        var jsonArrayPokemonId:Array<String> = []
          for oneValuePokemonId in pokemonId {
            jsonArrayPokemonId += ["\(oneValuePokemonId)"]
          }
        jsonMap["pokemonId"] = jsonArrayPokemonId
      }
      if !experienceAwarded.isEmpty {
        var jsonArrayExperienceAwarded:Array<NSNumber> = []
          for oneValueExperienceAwarded in experienceAwarded {
            jsonArrayExperienceAwarded += [NSNumber(int:oneValueExperienceAwarded)]
          }
        jsonMap["experienceAwarded"] = jsonArrayExperienceAwarded
      }
      if !candyAwarded.isEmpty {
        var jsonArrayCandyAwarded:Array<NSNumber> = []
          for oneValueCandyAwarded in candyAwarded {
            jsonArrayCandyAwarded += [NSNumber(int:oneValueCandyAwarded)]
          }
        jsonMap["candyAwarded"] = jsonArrayCandyAwarded
      }
      if !stardustAwarded.isEmpty {
        var jsonArrayStardustAwarded:Array<NSNumber> = []
          for oneValueStardustAwarded in stardustAwarded {
            jsonArrayStardustAwarded += [NSNumber(int:oneValueStardustAwarded)]
          }
        jsonMap["stardustAwarded"] = jsonArrayStardustAwarded
      }
      return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Networking.Responses.GetHatchedEggsResponse {
      return try Pogoprotos.Networking.Responses.GetHatchedEggsResponse.Builder.decodeToBuilder(jsonMap).build()
    }
    override class public func fromJSON(data:NSData) throws -> Pogoprotos.Networking.Responses.GetHatchedEggsResponse {
      return try Pogoprotos.Networking.Responses.GetHatchedEggsResponse.Builder.fromJSONToBuilder(data).build()
    }
    override public func getDescription(indent:String) throws -> String {
      var output = ""
      if hasSuccess {
        output += "\(indent) success: \(success) \n"
      }
      var pokemonIdElementIndex:Int = 0
      for oneValuePokemonId in pokemonId  {
          output += "\(indent) pokemonId[\(pokemonIdElementIndex)]: \(oneValuePokemonId)\n"
          pokemonIdElementIndex += 1
      }
      var experienceAwardedElementIndex:Int = 0
      for oneValueExperienceAwarded in experienceAwarded  {
          output += "\(indent) experienceAwarded[\(experienceAwardedElementIndex)]: \(oneValueExperienceAwarded)\n"
          experienceAwardedElementIndex += 1
      }
      var candyAwardedElementIndex:Int = 0
      for oneValueCandyAwarded in candyAwarded  {
          output += "\(indent) candyAwarded[\(candyAwardedElementIndex)]: \(oneValueCandyAwarded)\n"
          candyAwardedElementIndex += 1
      }
      var stardustAwardedElementIndex:Int = 0
      for oneValueStardustAwarded in stardustAwarded  {
          output += "\(indent) stardustAwarded[\(stardustAwardedElementIndex)]: \(oneValueStardustAwarded)\n"
          stardustAwardedElementIndex += 1
      }
      output += unknownFields.getDescription(indent)
      return output
    }
    override public var hashValue:Int {
        get {
            var hashCode:Int = 7
            if hasSuccess {
               hashCode = (hashCode &* 31) &+ success.hashValue
            }
            for oneValuePokemonId in pokemonId {
                hashCode = (hashCode &* 31) &+ oneValuePokemonId.hashValue
            }
            for oneValueExperienceAwarded in experienceAwarded {
                hashCode = (hashCode &* 31) &+ oneValueExperienceAwarded.hashValue
            }
            for oneValueCandyAwarded in candyAwarded {
                hashCode = (hashCode &* 31) &+ oneValueCandyAwarded.hashValue
            }
            for oneValueStardustAwarded in stardustAwarded {
                hashCode = (hashCode &* 31) &+ oneValueStardustAwarded.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "Pogoprotos.Networking.Responses.GetHatchedEggsResponse"
    }
    override public func className() -> String {
        return "Pogoprotos.Networking.Responses.GetHatchedEggsResponse"
    }
    override public func classMetaType() -> GeneratedMessage.Type {
        return Pogoprotos.Networking.Responses.GetHatchedEggsResponse.self
    }
    //Meta information declaration end

    final public class Builder : GeneratedMessageBuilder {
      private var builderResult:Pogoprotos.Networking.Responses.GetHatchedEggsResponse = Pogoprotos.Networking.Responses.GetHatchedEggsResponse()
      public func getMessage() -> Pogoprotos.Networking.Responses.GetHatchedEggsResponse {
          return builderResult
      }

      required override public init () {
         super.init()
      }
      public var hasSuccess:Bool {
           get {
                return builderResult.hasSuccess
           }
      }
      public var success:Bool {
           get {
                return builderResult.success
           }
           set (value) {
               builderResult.hasSuccess = true
               builderResult.success = value
           }
      }
      public func setSuccess(value:Bool) -> Pogoprotos.Networking.Responses.GetHatchedEggsResponse.Builder {
        self.success = value
        return self
      }
      public func clearSuccess() -> Pogoprotos.Networking.Responses.GetHatchedEggsResponse.Builder{
           builderResult.hasSuccess = false
           builderResult.success = false
           return self
      }
      public var pokemonId:Array<UInt64> {
           get {
               return builderResult.pokemonId
           }
           set (array) {
               builderResult.pokemonId = array
           }
      }
      public func setPokemonId(value:Array<UInt64>) -> Pogoprotos.Networking.Responses.GetHatchedEggsResponse.Builder {
        self.pokemonId = value
        return self
      }
      public func clearPokemonId() -> Pogoprotos.Networking.Responses.GetHatchedEggsResponse.Builder {
         builderResult.pokemonId.removeAll(keepCapacity: false)
         return self
      }
      public var experienceAwarded:Array<Int32> {
           get {
               return builderResult.experienceAwarded
           }
           set (array) {
               builderResult.experienceAwarded = array
           }
      }
      public func setExperienceAwarded(value:Array<Int32>) -> Pogoprotos.Networking.Responses.GetHatchedEggsResponse.Builder {
        self.experienceAwarded = value
        return self
      }
      public func clearExperienceAwarded() -> Pogoprotos.Networking.Responses.GetHatchedEggsResponse.Builder {
         builderResult.experienceAwarded.removeAll(keepCapacity: false)
         return self
      }
      public var candyAwarded:Array<Int32> {
           get {
               return builderResult.candyAwarded
           }
           set (array) {
               builderResult.candyAwarded = array
           }
      }
      public func setCandyAwarded(value:Array<Int32>) -> Pogoprotos.Networking.Responses.GetHatchedEggsResponse.Builder {
        self.candyAwarded = value
        return self
      }
      public func clearCandyAwarded() -> Pogoprotos.Networking.Responses.GetHatchedEggsResponse.Builder {
         builderResult.candyAwarded.removeAll(keepCapacity: false)
         return self
      }
      public var stardustAwarded:Array<Int32> {
           get {
               return builderResult.stardustAwarded
           }
           set (array) {
               builderResult.stardustAwarded = array
           }
      }
      public func setStardustAwarded(value:Array<Int32>) -> Pogoprotos.Networking.Responses.GetHatchedEggsResponse.Builder {
        self.stardustAwarded = value
        return self
      }
      public func clearStardustAwarded() -> Pogoprotos.Networking.Responses.GetHatchedEggsResponse.Builder {
         builderResult.stardustAwarded.removeAll(keepCapacity: false)
         return self
      }
      override public var internalGetResult:GeneratedMessage {
           get {
              return builderResult
           }
      }
      override public func clear() -> Pogoprotos.Networking.Responses.GetHatchedEggsResponse.Builder {
        builderResult = Pogoprotos.Networking.Responses.GetHatchedEggsResponse()
        return self
      }
      override public func clone() throws -> Pogoprotos.Networking.Responses.GetHatchedEggsResponse.Builder {
        return try Pogoprotos.Networking.Responses.GetHatchedEggsResponse.builderWithPrototype(builderResult)
      }
      override public func build() throws -> Pogoprotos.Networking.Responses.GetHatchedEggsResponse {
           try checkInitialized()
           return buildPartial()
      }
      public func buildPartial() -> Pogoprotos.Networking.Responses.GetHatchedEggsResponse {
        let returnMe:Pogoprotos.Networking.Responses.GetHatchedEggsResponse = builderResult
        return returnMe
      }
      public func mergeFrom(other:Pogoprotos.Networking.Responses.GetHatchedEggsResponse) throws -> Pogoprotos.Networking.Responses.GetHatchedEggsResponse.Builder {
        if other == Pogoprotos.Networking.Responses.GetHatchedEggsResponse() {
         return self
        }
        if other.hasSuccess {
             success = other.success
        }
        if !other.pokemonId.isEmpty {
            builderResult.pokemonId += other.pokemonId
        }
        if !other.experienceAwarded.isEmpty {
            builderResult.experienceAwarded += other.experienceAwarded
        }
        if !other.candyAwarded.isEmpty {
            builderResult.candyAwarded += other.candyAwarded
        }
        if !other.stardustAwarded.isEmpty {
            builderResult.stardustAwarded += other.stardustAwarded
        }
        try mergeUnknownFields(other.unknownFields)
        return self
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Networking.Responses.GetHatchedEggsResponse.Builder {
           return try mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Responses.GetHatchedEggsResponse.Builder {
        let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
        while (true) {
          let protobufTag = try input.readTag()
          switch protobufTag {
          case 0: 
            self.unknownFields = try unknownFieldsBuilder.build()
            return self

          case 8:
            success = try input.readBool()

          case 18:
            let length:Int32 = try input.readRawVarint32()
            let limit:Int32 = try input.pushLimit(length)
            while (input.bytesUntilLimit() > 0) {
              builderResult.pokemonId += [try input.readUInt64()]
            }
            input.popLimit(limit)

          case 26:
            let length:Int32 = try input.readRawVarint32()
            let limit:Int32 = try input.pushLimit(length)
            while (input.bytesUntilLimit() > 0) {
              builderResult.experienceAwarded += [try input.readInt32()]
            }
            input.popLimit(limit)

          case 34:
            let length:Int32 = try input.readRawVarint32()
            let limit:Int32 = try input.pushLimit(length)
            while (input.bytesUntilLimit() > 0) {
              builderResult.candyAwarded += [try input.readInt32()]
            }
            input.popLimit(limit)

          case 42:
            let length:Int32 = try input.readRawVarint32()
            let limit:Int32 = try input.pushLimit(length)
            while (input.bytesUntilLimit() > 0) {
              builderResult.stardustAwarded += [try input.readInt32()]
            }
            input.popLimit(limit)

          default:
            if (!(try parseUnknownField(input,unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
               unknownFields = try unknownFieldsBuilder.build()
               return self
            }
          }
        }
      }
      override class public func decodeToBuilder(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Networking.Responses.GetHatchedEggsResponse.Builder {
        let resultDecodedBuilder = Pogoprotos.Networking.Responses.GetHatchedEggsResponse.Builder()
        if let jsonValueSuccess = jsonMap["success"] as? Bool {
          resultDecodedBuilder.success = jsonValueSuccess
        }
        if let jsonValuePokemonId = jsonMap["pokemonId"] as? Array<String> {
          var jsonArrayPokemonId:Array<UInt64> = []
          for oneValuePokemonId in jsonValuePokemonId {
            jsonArrayPokemonId += [UInt64(oneValuePokemonId)!]
          }
          resultDecodedBuilder.pokemonId = jsonArrayPokemonId
        }
        if let jsonValueExperienceAwarded = jsonMap["experienceAwarded"] as? Array<NSNumber> {
          var jsonArrayExperienceAwarded:Array<Int32> = []
          for oneValueExperienceAwarded in jsonValueExperienceAwarded {
            jsonArrayExperienceAwarded += [oneValueExperienceAwarded.intValue]
          }
          resultDecodedBuilder.experienceAwarded = jsonArrayExperienceAwarded
        }
        if let jsonValueCandyAwarded = jsonMap["candyAwarded"] as? Array<NSNumber> {
          var jsonArrayCandyAwarded:Array<Int32> = []
          for oneValueCandyAwarded in jsonValueCandyAwarded {
            jsonArrayCandyAwarded += [oneValueCandyAwarded.intValue]
          }
          resultDecodedBuilder.candyAwarded = jsonArrayCandyAwarded
        }
        if let jsonValueStardustAwarded = jsonMap["stardustAwarded"] as? Array<NSNumber> {
          var jsonArrayStardustAwarded:Array<Int32> = []
          for oneValueStardustAwarded in jsonValueStardustAwarded {
            jsonArrayStardustAwarded += [oneValueStardustAwarded.intValue]
          }
          resultDecodedBuilder.stardustAwarded = jsonArrayStardustAwarded
        }
        return resultDecodedBuilder
      }
      override class public func fromJSONToBuilder(data:NSData) throws -> Pogoprotos.Networking.Responses.GetHatchedEggsResponse.Builder {
        let jsonData = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions(rawValue: 0))
        guard let jsDataCast = jsonData as? Dictionary<String,AnyObject> else {
          throw ProtocolBuffersError.InvalidProtocolBuffer("Invalid JSON data")
        }
        return try Pogoprotos.Networking.Responses.GetHatchedEggsResponse.Builder.decodeToBuilder(jsDataCast)
      }
    }

  }

}

// @@protoc_insertion_point(global_scope)
