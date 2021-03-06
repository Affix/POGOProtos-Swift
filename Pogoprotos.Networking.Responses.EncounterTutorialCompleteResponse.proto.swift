// Generated by the Protocol Buffers 3.0 compiler.  DO NOT EDIT!
// Source file "EncounterTutorialCompleteResponse.proto"
// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct Pogoprotos { public struct Networking { public struct Responses { }}}

public func == (lhs: Pogoprotos.Networking.Responses.EncounterTutorialCompleteResponse, rhs: Pogoprotos.Networking.Responses.EncounterTutorialCompleteResponse) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasResult == rhs.hasResult) && (!lhs.hasResult || lhs.result == rhs.result)
  fieldCheck = fieldCheck && (lhs.hasPokemonData == rhs.hasPokemonData) && (!lhs.hasPokemonData || lhs.pokemonData == rhs.pokemonData)
  fieldCheck = fieldCheck && (lhs.hasCaptureAward == rhs.hasCaptureAward) && (!lhs.hasCaptureAward || lhs.captureAward == rhs.captureAward)
  fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
  return fieldCheck
}

public extension Pogoprotos.Networking.Responses {
  public struct EncounterTutorialCompleteResponseRoot {
    public static var sharedInstance : EncounterTutorialCompleteResponseRoot {
     struct Static {
         static let instance : EncounterTutorialCompleteResponseRoot = EncounterTutorialCompleteResponseRoot()
     }
     return Static.instance
    }
    public var extensionRegistry:ExtensionRegistry

    init() {
      extensionRegistry = ExtensionRegistry()
      registerAllExtensions(extensionRegistry)
      Pogoprotos.Data.PokemonDataRoot.sharedInstance.registerAllExtensions(extensionRegistry)
      Pogoprotos.Data.Capture.CaptureAwardRoot.sharedInstance.registerAllExtensions(extensionRegistry)
    }
    public func registerAllExtensions(registry:ExtensionRegistry) {
    }
  }

  final public class EncounterTutorialCompleteResponse : GeneratedMessage, GeneratedMessageProtocol {


      //Enum type declaration start 

      public enum Result:Int32, CustomDebugStringConvertible, CustomStringConvertible {
        case Unset = 0
        case Success = 1
        case ErrorInvalidPokemon = 2
        public func toString() -> String {
          switch self {
          case .Unset: return "UNSET"
          case .Success: return "SUCCESS"
          case .ErrorInvalidPokemon: return "ERROR_INVALID_POKEMON"
          }
        }
        public static func fromString(str:String) throws -> Pogoprotos.Networking.Responses.EncounterTutorialCompleteResponse.Result {
          switch str {
          case "UNSET":  return .Unset
          case "SUCCESS":  return .Success
          case "ERROR_INVALID_POKEMON":  return .ErrorInvalidPokemon
          default: throw ProtocolBuffersError.InvalidProtocolBuffer("Conversion String to Enum has failed.")
          }
        }
        public var debugDescription:String { return getDescription() }
        public var description:String { return getDescription() }
        private func getDescription() -> String { 
            switch self {
                case .Unset: return ".Unset"
                case .Success: return ".Success"
                case .ErrorInvalidPokemon: return ".ErrorInvalidPokemon"
            }
        }
      }

      //Enum type declaration end 

    public private(set) var result:Pogoprotos.Networking.Responses.EncounterTutorialCompleteResponse.Result = Pogoprotos.Networking.Responses.EncounterTutorialCompleteResponse.Result.Unset
    public private(set) var hasResult:Bool = false
    public private(set) var hasPokemonData:Bool = false
    public private(set) var pokemonData:Pogoprotos.Data.PokemonData!
    public private(set) var hasCaptureAward:Bool = false
    public private(set) var captureAward:Pogoprotos.Data.Capture.CaptureAward!
    required public init() {
         super.init()
    }
    override public func isInitialized() -> Bool {
     return true
    }
    override public func writeToCodedOutputStream(output:CodedOutputStream) throws {
      if hasResult {
        try output.writeEnum(1, value:result.rawValue)
      }
      if hasPokemonData {
        try output.writeMessage(2, value:pokemonData)
      }
      if hasCaptureAward {
        try output.writeMessage(3, value:captureAward)
      }
      try unknownFields.writeToCodedOutputStream(output)
    }
    override public func serializedSize() -> Int32 {
      var serialize_size:Int32 = memoizedSerializedSize
      if serialize_size != -1 {
       return serialize_size
      }

      serialize_size = 0
      if (hasResult) {
        serialize_size += result.rawValue.computeEnumSize(1)
      }
      if hasPokemonData {
          if let varSizepokemonData = pokemonData?.computeMessageSize(2) {
              serialize_size += varSizepokemonData
          }
      }
      if hasCaptureAward {
          if let varSizecaptureAward = captureAward?.computeMessageSize(3) {
              serialize_size += varSizecaptureAward
          }
      }
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    public class func parseArrayDelimitedFromInputStream(input:NSInputStream) throws -> Array<Pogoprotos.Networking.Responses.EncounterTutorialCompleteResponse> {
      var mergedArray = Array<Pogoprotos.Networking.Responses.EncounterTutorialCompleteResponse>()
      while let value = try parseFromDelimitedFromInputStream(input) {
        mergedArray += [value]
      }
      return mergedArray
    }
    public class func parseFromDelimitedFromInputStream(input:NSInputStream) throws -> Pogoprotos.Networking.Responses.EncounterTutorialCompleteResponse? {
      return try Pogoprotos.Networking.Responses.EncounterTutorialCompleteResponse.Builder().mergeDelimitedFromInputStream(input)?.build()
    }
    public class func parseFromData(data:NSData) throws -> Pogoprotos.Networking.Responses.EncounterTutorialCompleteResponse {
      return try Pogoprotos.Networking.Responses.EncounterTutorialCompleteResponse.Builder().mergeFromData(data, extensionRegistry:Pogoprotos.Networking.Responses.EncounterTutorialCompleteResponseRoot.sharedInstance.extensionRegistry).build()
    }
    public class func parseFromData(data:NSData, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Responses.EncounterTutorialCompleteResponse {
      return try Pogoprotos.Networking.Responses.EncounterTutorialCompleteResponse.Builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromInputStream(input:NSInputStream) throws -> Pogoprotos.Networking.Responses.EncounterTutorialCompleteResponse {
      return try Pogoprotos.Networking.Responses.EncounterTutorialCompleteResponse.Builder().mergeFromInputStream(input).build()
    }
    public class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Responses.EncounterTutorialCompleteResponse {
      return try Pogoprotos.Networking.Responses.EncounterTutorialCompleteResponse.Builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Networking.Responses.EncounterTutorialCompleteResponse {
      return try Pogoprotos.Networking.Responses.EncounterTutorialCompleteResponse.Builder().mergeFromCodedInputStream(input).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Responses.EncounterTutorialCompleteResponse {
      return try Pogoprotos.Networking.Responses.EncounterTutorialCompleteResponse.Builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func getBuilder() -> Pogoprotos.Networking.Responses.EncounterTutorialCompleteResponse.Builder {
      return Pogoprotos.Networking.Responses.EncounterTutorialCompleteResponse.classBuilder() as! Pogoprotos.Networking.Responses.EncounterTutorialCompleteResponse.Builder
    }
    public func getBuilder() -> Pogoprotos.Networking.Responses.EncounterTutorialCompleteResponse.Builder {
      return classBuilder() as! Pogoprotos.Networking.Responses.EncounterTutorialCompleteResponse.Builder
    }
    override public class func classBuilder() -> MessageBuilder {
      return Pogoprotos.Networking.Responses.EncounterTutorialCompleteResponse.Builder()
    }
    override public func classBuilder() -> MessageBuilder {
      return Pogoprotos.Networking.Responses.EncounterTutorialCompleteResponse.Builder()
    }
    public func toBuilder() throws -> Pogoprotos.Networking.Responses.EncounterTutorialCompleteResponse.Builder {
      return try Pogoprotos.Networking.Responses.EncounterTutorialCompleteResponse.builderWithPrototype(self)
    }
    public class func builderWithPrototype(prototype:Pogoprotos.Networking.Responses.EncounterTutorialCompleteResponse) throws -> Pogoprotos.Networking.Responses.EncounterTutorialCompleteResponse.Builder {
      return try Pogoprotos.Networking.Responses.EncounterTutorialCompleteResponse.Builder().mergeFrom(prototype)
    }
    override public func encode() throws -> Dictionary<String,AnyObject> {
      guard isInitialized() else {
        throw ProtocolBuffersError.InvalidProtocolBuffer("Uninitialized Message")
      }

      var jsonMap:Dictionary<String,AnyObject> = Dictionary<String,AnyObject>()
      if hasResult {
        jsonMap["result"] = result.toString()
      }
      if hasPokemonData {
        jsonMap["pokemonData"] = try pokemonData.encode()
      }
      if hasCaptureAward {
        jsonMap["captureAward"] = try captureAward.encode()
      }
      return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Networking.Responses.EncounterTutorialCompleteResponse {
      return try Pogoprotos.Networking.Responses.EncounterTutorialCompleteResponse.Builder.decodeToBuilder(jsonMap).build()
    }
    override class public func fromJSON(data:NSData) throws -> Pogoprotos.Networking.Responses.EncounterTutorialCompleteResponse {
      return try Pogoprotos.Networking.Responses.EncounterTutorialCompleteResponse.Builder.fromJSONToBuilder(data).build()
    }
    override public func getDescription(indent:String) throws -> String {
      var output = ""
      if (hasResult) {
        output += "\(indent) result: \(result.description)\n"
      }
      if hasPokemonData {
        output += "\(indent) pokemonData {\n"
        if let outDescPokemonData = pokemonData {
          output += try outDescPokemonData.getDescription("\(indent)  ")
        }
        output += "\(indent) }\n"
      }
      if hasCaptureAward {
        output += "\(indent) captureAward {\n"
        if let outDescCaptureAward = captureAward {
          output += try outDescCaptureAward.getDescription("\(indent)  ")
        }
        output += "\(indent) }\n"
      }
      output += unknownFields.getDescription(indent)
      return output
    }
    override public var hashValue:Int {
        get {
            var hashCode:Int = 7
            if hasResult {
               hashCode = (hashCode &* 31) &+ Int(result.rawValue)
            }
            if hasPokemonData {
                if let hashValuepokemonData = pokemonData?.hashValue {
                    hashCode = (hashCode &* 31) &+ hashValuepokemonData
                }
            }
            if hasCaptureAward {
                if let hashValuecaptureAward = captureAward?.hashValue {
                    hashCode = (hashCode &* 31) &+ hashValuecaptureAward
                }
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "Pogoprotos.Networking.Responses.EncounterTutorialCompleteResponse"
    }
    override public func className() -> String {
        return "Pogoprotos.Networking.Responses.EncounterTutorialCompleteResponse"
    }
    override public func classMetaType() -> GeneratedMessage.Type {
        return Pogoprotos.Networking.Responses.EncounterTutorialCompleteResponse.self
    }
    //Meta information declaration end

    final public class Builder : GeneratedMessageBuilder {
      private var builderResult:Pogoprotos.Networking.Responses.EncounterTutorialCompleteResponse = Pogoprotos.Networking.Responses.EncounterTutorialCompleteResponse()
      public func getMessage() -> Pogoprotos.Networking.Responses.EncounterTutorialCompleteResponse {
          return builderResult
      }

      required override public init () {
         super.init()
      }
        public var hasResult:Bool{
            get {
                return builderResult.hasResult
            }
        }
        public var result:Pogoprotos.Networking.Responses.EncounterTutorialCompleteResponse.Result {
            get {
                return builderResult.result
            }
            set (value) {
                builderResult.hasResult = true
                builderResult.result = value
            }
        }
        public func setResult(value:Pogoprotos.Networking.Responses.EncounterTutorialCompleteResponse.Result) -> Pogoprotos.Networking.Responses.EncounterTutorialCompleteResponse.Builder {
          self.result = value
          return self
        }
        public func clearResult() -> Pogoprotos.Networking.Responses.EncounterTutorialCompleteResponse.Builder {
           builderResult.hasResult = false
           builderResult.result = .Unset
           return self
        }
      public var hasPokemonData:Bool {
           get {
               return builderResult.hasPokemonData
           }
      }
      public var pokemonData:Pogoprotos.Data.PokemonData! {
           get {
               if pokemonDataBuilder_ != nil {
                  builderResult.pokemonData = pokemonDataBuilder_.getMessage()
               }
               return builderResult.pokemonData
           }
           set (value) {
               builderResult.hasPokemonData = true
               builderResult.pokemonData = value
           }
      }
      private var pokemonDataBuilder_:Pogoprotos.Data.PokemonData.Builder! {
           didSet {
              builderResult.hasPokemonData = true
           }
      }
      public func getPokemonDataBuilder() -> Pogoprotos.Data.PokemonData.Builder {
        if pokemonDataBuilder_ == nil {
           pokemonDataBuilder_ = Pogoprotos.Data.PokemonData.Builder()
           builderResult.pokemonData = pokemonDataBuilder_.getMessage()
           if pokemonData != nil {
              try! pokemonDataBuilder_.mergeFrom(pokemonData)
           }
        }
        return pokemonDataBuilder_
      }
      public func setPokemonData(value:Pogoprotos.Data.PokemonData!) -> Pogoprotos.Networking.Responses.EncounterTutorialCompleteResponse.Builder {
        self.pokemonData = value
        return self
      }
      public func mergePokemonData(value:Pogoprotos.Data.PokemonData) throws -> Pogoprotos.Networking.Responses.EncounterTutorialCompleteResponse.Builder {
        if builderResult.hasPokemonData {
          builderResult.pokemonData = try Pogoprotos.Data.PokemonData.builderWithPrototype(builderResult.pokemonData).mergeFrom(value).buildPartial()
        } else {
          builderResult.pokemonData = value
        }
        builderResult.hasPokemonData = true
        return self
      }
      public func clearPokemonData() -> Pogoprotos.Networking.Responses.EncounterTutorialCompleteResponse.Builder {
        pokemonDataBuilder_ = nil
        builderResult.hasPokemonData = false
        builderResult.pokemonData = nil
        return self
      }
      public var hasCaptureAward:Bool {
           get {
               return builderResult.hasCaptureAward
           }
      }
      public var captureAward:Pogoprotos.Data.Capture.CaptureAward! {
           get {
               if captureAwardBuilder_ != nil {
                  builderResult.captureAward = captureAwardBuilder_.getMessage()
               }
               return builderResult.captureAward
           }
           set (value) {
               builderResult.hasCaptureAward = true
               builderResult.captureAward = value
           }
      }
      private var captureAwardBuilder_:Pogoprotos.Data.Capture.CaptureAward.Builder! {
           didSet {
              builderResult.hasCaptureAward = true
           }
      }
      public func getCaptureAwardBuilder() -> Pogoprotos.Data.Capture.CaptureAward.Builder {
        if captureAwardBuilder_ == nil {
           captureAwardBuilder_ = Pogoprotos.Data.Capture.CaptureAward.Builder()
           builderResult.captureAward = captureAwardBuilder_.getMessage()
           if captureAward != nil {
              try! captureAwardBuilder_.mergeFrom(captureAward)
           }
        }
        return captureAwardBuilder_
      }
      public func setCaptureAward(value:Pogoprotos.Data.Capture.CaptureAward!) -> Pogoprotos.Networking.Responses.EncounterTutorialCompleteResponse.Builder {
        self.captureAward = value
        return self
      }
      public func mergeCaptureAward(value:Pogoprotos.Data.Capture.CaptureAward) throws -> Pogoprotos.Networking.Responses.EncounterTutorialCompleteResponse.Builder {
        if builderResult.hasCaptureAward {
          builderResult.captureAward = try Pogoprotos.Data.Capture.CaptureAward.builderWithPrototype(builderResult.captureAward).mergeFrom(value).buildPartial()
        } else {
          builderResult.captureAward = value
        }
        builderResult.hasCaptureAward = true
        return self
      }
      public func clearCaptureAward() -> Pogoprotos.Networking.Responses.EncounterTutorialCompleteResponse.Builder {
        captureAwardBuilder_ = nil
        builderResult.hasCaptureAward = false
        builderResult.captureAward = nil
        return self
      }
      override public var internalGetResult:GeneratedMessage {
           get {
              return builderResult
           }
      }
      override public func clear() -> Pogoprotos.Networking.Responses.EncounterTutorialCompleteResponse.Builder {
        builderResult = Pogoprotos.Networking.Responses.EncounterTutorialCompleteResponse()
        return self
      }
      override public func clone() throws -> Pogoprotos.Networking.Responses.EncounterTutorialCompleteResponse.Builder {
        return try Pogoprotos.Networking.Responses.EncounterTutorialCompleteResponse.builderWithPrototype(builderResult)
      }
      override public func build() throws -> Pogoprotos.Networking.Responses.EncounterTutorialCompleteResponse {
           try checkInitialized()
           return buildPartial()
      }
      public func buildPartial() -> Pogoprotos.Networking.Responses.EncounterTutorialCompleteResponse {
        let returnMe:Pogoprotos.Networking.Responses.EncounterTutorialCompleteResponse = builderResult
        return returnMe
      }
      public func mergeFrom(other:Pogoprotos.Networking.Responses.EncounterTutorialCompleteResponse) throws -> Pogoprotos.Networking.Responses.EncounterTutorialCompleteResponse.Builder {
        if other == Pogoprotos.Networking.Responses.EncounterTutorialCompleteResponse() {
         return self
        }
        if other.hasResult {
             result = other.result
        }
        if (other.hasPokemonData) {
            try mergePokemonData(other.pokemonData)
        }
        if (other.hasCaptureAward) {
            try mergeCaptureAward(other.captureAward)
        }
        try mergeUnknownFields(other.unknownFields)
        return self
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Networking.Responses.EncounterTutorialCompleteResponse.Builder {
           return try mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Responses.EncounterTutorialCompleteResponse.Builder {
        let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
        while (true) {
          let protobufTag = try input.readTag()
          switch protobufTag {
          case 0: 
            self.unknownFields = try unknownFieldsBuilder.build()
            return self

          case 8:
            let valueIntresult = try input.readEnum()
            if let enumsresult = Pogoprotos.Networking.Responses.EncounterTutorialCompleteResponse.Result(rawValue:valueIntresult){
                 result = enumsresult
            } else {
                 try unknownFieldsBuilder.mergeVarintField(1, value:Int64(valueIntresult))
            }

          case 18:
            let subBuilder:Pogoprotos.Data.PokemonData.Builder = Pogoprotos.Data.PokemonData.Builder()
            if hasPokemonData {
              try subBuilder.mergeFrom(pokemonData)
            }
            try input.readMessage(subBuilder, extensionRegistry:extensionRegistry)
            pokemonData = subBuilder.buildPartial()

          case 26:
            let subBuilder:Pogoprotos.Data.Capture.CaptureAward.Builder = Pogoprotos.Data.Capture.CaptureAward.Builder()
            if hasCaptureAward {
              try subBuilder.mergeFrom(captureAward)
            }
            try input.readMessage(subBuilder, extensionRegistry:extensionRegistry)
            captureAward = subBuilder.buildPartial()

          default:
            if (!(try parseUnknownField(input,unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
               unknownFields = try unknownFieldsBuilder.build()
               return self
            }
          }
        }
      }
      override class public func decodeToBuilder(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Networking.Responses.EncounterTutorialCompleteResponse.Builder {
        let resultDecodedBuilder = Pogoprotos.Networking.Responses.EncounterTutorialCompleteResponse.Builder()
        if let jsonValueResult = jsonMap["result"] as? String {
          resultDecodedBuilder.result = try Pogoprotos.Networking.Responses.EncounterTutorialCompleteResponse.Result.fromString(jsonValueResult)
        }
        if let jsonValuePokemonData = jsonMap["pokemonData"] as? Dictionary<String,AnyObject> {
          resultDecodedBuilder.pokemonData = try Pogoprotos.Data.PokemonData.Builder.decodeToBuilder(jsonValuePokemonData).build()

        }
        if let jsonValueCaptureAward = jsonMap["captureAward"] as? Dictionary<String,AnyObject> {
          resultDecodedBuilder.captureAward = try Pogoprotos.Data.Capture.CaptureAward.Builder.decodeToBuilder(jsonValueCaptureAward).build()

        }
        return resultDecodedBuilder
      }
      override class public func fromJSONToBuilder(data:NSData) throws -> Pogoprotos.Networking.Responses.EncounterTutorialCompleteResponse.Builder {
        let jsonData = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions(rawValue: 0))
        guard let jsDataCast = jsonData as? Dictionary<String,AnyObject> else {
          throw ProtocolBuffersError.InvalidProtocolBuffer("Invalid JSON data")
        }
        return try Pogoprotos.Networking.Responses.EncounterTutorialCompleteResponse.Builder.decodeToBuilder(jsDataCast)
      }
    }

  }

}

// @@protoc_insertion_point(global_scope)
