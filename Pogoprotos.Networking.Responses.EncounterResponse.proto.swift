// Generated by the Protocol Buffers 3.0 compiler.  DO NOT EDIT!
// Source file "EncounterResponse.proto"
// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct Pogoprotos { public struct Networking { public struct Responses { }}}

public func == (lhs: Pogoprotos.Networking.Responses.EncounterResponse, rhs: Pogoprotos.Networking.Responses.EncounterResponse) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasWildPokemon == rhs.hasWildPokemon) && (!lhs.hasWildPokemon || lhs.wildPokemon == rhs.wildPokemon)
  fieldCheck = fieldCheck && (lhs.hasBackground == rhs.hasBackground) && (!lhs.hasBackground || lhs.background == rhs.background)
  fieldCheck = fieldCheck && (lhs.hasStatus == rhs.hasStatus) && (!lhs.hasStatus || lhs.status == rhs.status)
  fieldCheck = fieldCheck && (lhs.hasCaptureProbability == rhs.hasCaptureProbability) && (!lhs.hasCaptureProbability || lhs.captureProbability == rhs.captureProbability)
  fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
  return fieldCheck
}

public extension Pogoprotos.Networking.Responses {
  public struct EncounterResponseRoot {
    public static var sharedInstance : EncounterResponseRoot {
     struct Static {
         static let instance : EncounterResponseRoot = EncounterResponseRoot()
     }
     return Static.instance
    }
    public var extensionRegistry:ExtensionRegistry

    init() {
      extensionRegistry = ExtensionRegistry()
      registerAllExtensions(extensionRegistry)
      Pogoprotos.Data.Capture.CaptureProbabilityRoot.sharedInstance.registerAllExtensions(extensionRegistry)
      Pogoprotos.Map.Pokemon.WildPokemonRoot.sharedInstance.registerAllExtensions(extensionRegistry)
    }
    public func registerAllExtensions(registry:ExtensionRegistry) {
    }
  }

  final public class EncounterResponse : GeneratedMessage, GeneratedMessageProtocol {


      //Enum type declaration start 

      public enum Background:Int32, CustomDebugStringConvertible, CustomStringConvertible {
        case Park = 0
        case Desert = 1
        public func toString() -> String {
          switch self {
          case .Park: return "PARK"
          case .Desert: return "DESERT"
          }
        }
        public static func fromString(str:String) throws -> Pogoprotos.Networking.Responses.EncounterResponse.Background {
          switch str {
          case "PARK":  return .Park
          case "DESERT":  return .Desert
          default: throw ProtocolBuffersError.InvalidProtocolBuffer("Conversion String to Enum has failed.")
          }
        }
        public var debugDescription:String { return getDescription() }
        public var description:String { return getDescription() }
        private func getDescription() -> String { 
            switch self {
                case .Park: return ".Park"
                case .Desert: return ".Desert"
            }
        }
      }

      //Enum type declaration end 



      //Enum type declaration start 

      public enum Status:Int32, CustomDebugStringConvertible, CustomStringConvertible {
        case EncounterError = 0
        case EncounterSuccess = 1
        case EncounterNotFound = 2
        case EncounterClosed = 3
        case EncounterPokemonFled = 4
        case EncounterNotInRange = 5
        case EncounterAlreadyHappened = 6
        case PokemonInventoryFull = 7
        public func toString() -> String {
          switch self {
          case .EncounterError: return "ENCOUNTER_ERROR"
          case .EncounterSuccess: return "ENCOUNTER_SUCCESS"
          case .EncounterNotFound: return "ENCOUNTER_NOT_FOUND"
          case .EncounterClosed: return "ENCOUNTER_CLOSED"
          case .EncounterPokemonFled: return "ENCOUNTER_POKEMON_FLED"
          case .EncounterNotInRange: return "ENCOUNTER_NOT_IN_RANGE"
          case .EncounterAlreadyHappened: return "ENCOUNTER_ALREADY_HAPPENED"
          case .PokemonInventoryFull: return "POKEMON_INVENTORY_FULL"
          }
        }
        public static func fromString(str:String) throws -> Pogoprotos.Networking.Responses.EncounterResponse.Status {
          switch str {
          case "ENCOUNTER_ERROR":  return .EncounterError
          case "ENCOUNTER_SUCCESS":  return .EncounterSuccess
          case "ENCOUNTER_NOT_FOUND":  return .EncounterNotFound
          case "ENCOUNTER_CLOSED":  return .EncounterClosed
          case "ENCOUNTER_POKEMON_FLED":  return .EncounterPokemonFled
          case "ENCOUNTER_NOT_IN_RANGE":  return .EncounterNotInRange
          case "ENCOUNTER_ALREADY_HAPPENED":  return .EncounterAlreadyHappened
          case "POKEMON_INVENTORY_FULL":  return .PokemonInventoryFull
          default: throw ProtocolBuffersError.InvalidProtocolBuffer("Conversion String to Enum has failed.")
          }
        }
        public var debugDescription:String { return getDescription() }
        public var description:String { return getDescription() }
        private func getDescription() -> String { 
            switch self {
                case .EncounterError: return ".EncounterError"
                case .EncounterSuccess: return ".EncounterSuccess"
                case .EncounterNotFound: return ".EncounterNotFound"
                case .EncounterClosed: return ".EncounterClosed"
                case .EncounterPokemonFled: return ".EncounterPokemonFled"
                case .EncounterNotInRange: return ".EncounterNotInRange"
                case .EncounterAlreadyHappened: return ".EncounterAlreadyHappened"
                case .PokemonInventoryFull: return ".PokemonInventoryFull"
            }
        }
      }

      //Enum type declaration end 

    public private(set) var hasWildPokemon:Bool = false
    public private(set) var wildPokemon:Pogoprotos.Map.Pokemon.WildPokemon!
    public private(set) var background:Pogoprotos.Networking.Responses.EncounterResponse.Background = Pogoprotos.Networking.Responses.EncounterResponse.Background.Park
    public private(set) var hasBackground:Bool = false
    public private(set) var status:Pogoprotos.Networking.Responses.EncounterResponse.Status = Pogoprotos.Networking.Responses.EncounterResponse.Status.EncounterError
    public private(set) var hasStatus:Bool = false
    public private(set) var hasCaptureProbability:Bool = false
    public private(set) var captureProbability:Pogoprotos.Data.Capture.CaptureProbability!
    required public init() {
         super.init()
    }
    override public func isInitialized() -> Bool {
     return true
    }
    override public func writeToCodedOutputStream(output:CodedOutputStream) throws {
      if hasWildPokemon {
        try output.writeMessage(1, value:wildPokemon)
      }
      if hasBackground {
        try output.writeEnum(2, value:background.rawValue)
      }
      if hasStatus {
        try output.writeEnum(3, value:status.rawValue)
      }
      if hasCaptureProbability {
        try output.writeMessage(4, value:captureProbability)
      }
      try unknownFields.writeToCodedOutputStream(output)
    }
    override public func serializedSize() -> Int32 {
      var serialize_size:Int32 = memoizedSerializedSize
      if serialize_size != -1 {
       return serialize_size
      }

      serialize_size = 0
      if hasWildPokemon {
          if let varSizewildPokemon = wildPokemon?.computeMessageSize(1) {
              serialize_size += varSizewildPokemon
          }
      }
      if (hasBackground) {
        serialize_size += background.rawValue.computeEnumSize(2)
      }
      if (hasStatus) {
        serialize_size += status.rawValue.computeEnumSize(3)
      }
      if hasCaptureProbability {
          if let varSizecaptureProbability = captureProbability?.computeMessageSize(4) {
              serialize_size += varSizecaptureProbability
          }
      }
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    public class func parseArrayDelimitedFromInputStream(input:NSInputStream) throws -> Array<Pogoprotos.Networking.Responses.EncounterResponse> {
      var mergedArray = Array<Pogoprotos.Networking.Responses.EncounterResponse>()
      while let value = try parseFromDelimitedFromInputStream(input) {
        mergedArray += [value]
      }
      return mergedArray
    }
    public class func parseFromDelimitedFromInputStream(input:NSInputStream) throws -> Pogoprotos.Networking.Responses.EncounterResponse? {
      return try Pogoprotos.Networking.Responses.EncounterResponse.Builder().mergeDelimitedFromInputStream(input)?.build()
    }
    public class func parseFromData(data:NSData) throws -> Pogoprotos.Networking.Responses.EncounterResponse {
      return try Pogoprotos.Networking.Responses.EncounterResponse.Builder().mergeFromData(data, extensionRegistry:Pogoprotos.Networking.Responses.EncounterResponseRoot.sharedInstance.extensionRegistry).build()
    }
    public class func parseFromData(data:NSData, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Responses.EncounterResponse {
      return try Pogoprotos.Networking.Responses.EncounterResponse.Builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromInputStream(input:NSInputStream) throws -> Pogoprotos.Networking.Responses.EncounterResponse {
      return try Pogoprotos.Networking.Responses.EncounterResponse.Builder().mergeFromInputStream(input).build()
    }
    public class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Responses.EncounterResponse {
      return try Pogoprotos.Networking.Responses.EncounterResponse.Builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Networking.Responses.EncounterResponse {
      return try Pogoprotos.Networking.Responses.EncounterResponse.Builder().mergeFromCodedInputStream(input).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Responses.EncounterResponse {
      return try Pogoprotos.Networking.Responses.EncounterResponse.Builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func getBuilder() -> Pogoprotos.Networking.Responses.EncounterResponse.Builder {
      return Pogoprotos.Networking.Responses.EncounterResponse.classBuilder() as! Pogoprotos.Networking.Responses.EncounterResponse.Builder
    }
    public func getBuilder() -> Pogoprotos.Networking.Responses.EncounterResponse.Builder {
      return classBuilder() as! Pogoprotos.Networking.Responses.EncounterResponse.Builder
    }
    override public class func classBuilder() -> MessageBuilder {
      return Pogoprotos.Networking.Responses.EncounterResponse.Builder()
    }
    override public func classBuilder() -> MessageBuilder {
      return Pogoprotos.Networking.Responses.EncounterResponse.Builder()
    }
    public func toBuilder() throws -> Pogoprotos.Networking.Responses.EncounterResponse.Builder {
      return try Pogoprotos.Networking.Responses.EncounterResponse.builderWithPrototype(self)
    }
    public class func builderWithPrototype(prototype:Pogoprotos.Networking.Responses.EncounterResponse) throws -> Pogoprotos.Networking.Responses.EncounterResponse.Builder {
      return try Pogoprotos.Networking.Responses.EncounterResponse.Builder().mergeFrom(prototype)
    }
    override public func encode() throws -> Dictionary<String,AnyObject> {
      guard isInitialized() else {
        throw ProtocolBuffersError.InvalidProtocolBuffer("Uninitialized Message")
      }

      var jsonMap:Dictionary<String,AnyObject> = Dictionary<String,AnyObject>()
      if hasWildPokemon {
        jsonMap["wildPokemon"] = try wildPokemon.encode()
      }
      if hasBackground {
        jsonMap["background"] = background.toString()
      }
      if hasStatus {
        jsonMap["status"] = status.toString()
      }
      if hasCaptureProbability {
        jsonMap["captureProbability"] = try captureProbability.encode()
      }
      return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Networking.Responses.EncounterResponse {
      return try Pogoprotos.Networking.Responses.EncounterResponse.Builder.decodeToBuilder(jsonMap).build()
    }
    override class public func fromJSON(data:NSData) throws -> Pogoprotos.Networking.Responses.EncounterResponse {
      return try Pogoprotos.Networking.Responses.EncounterResponse.Builder.fromJSONToBuilder(data).build()
    }
    override public func getDescription(indent:String) throws -> String {
      var output = ""
      if hasWildPokemon {
        output += "\(indent) wildPokemon {\n"
        if let outDescWildPokemon = wildPokemon {
          output += try outDescWildPokemon.getDescription("\(indent)  ")
        }
        output += "\(indent) }\n"
      }
      if (hasBackground) {
        output += "\(indent) background: \(background.description)\n"
      }
      if (hasStatus) {
        output += "\(indent) status: \(status.description)\n"
      }
      if hasCaptureProbability {
        output += "\(indent) captureProbability {\n"
        if let outDescCaptureProbability = captureProbability {
          output += try outDescCaptureProbability.getDescription("\(indent)  ")
        }
        output += "\(indent) }\n"
      }
      output += unknownFields.getDescription(indent)
      return output
    }
    override public var hashValue:Int {
        get {
            var hashCode:Int = 7
            if hasWildPokemon {
                if let hashValuewildPokemon = wildPokemon?.hashValue {
                    hashCode = (hashCode &* 31) &+ hashValuewildPokemon
                }
            }
            if hasBackground {
               hashCode = (hashCode &* 31) &+ Int(background.rawValue)
            }
            if hasStatus {
               hashCode = (hashCode &* 31) &+ Int(status.rawValue)
            }
            if hasCaptureProbability {
                if let hashValuecaptureProbability = captureProbability?.hashValue {
                    hashCode = (hashCode &* 31) &+ hashValuecaptureProbability
                }
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "Pogoprotos.Networking.Responses.EncounterResponse"
    }
    override public func className() -> String {
        return "Pogoprotos.Networking.Responses.EncounterResponse"
    }
    override public func classMetaType() -> GeneratedMessage.Type {
        return Pogoprotos.Networking.Responses.EncounterResponse.self
    }
    //Meta information declaration end

    final public class Builder : GeneratedMessageBuilder {
      private var builderResult:Pogoprotos.Networking.Responses.EncounterResponse = Pogoprotos.Networking.Responses.EncounterResponse()
      public func getMessage() -> Pogoprotos.Networking.Responses.EncounterResponse {
          return builderResult
      }

      required override public init () {
         super.init()
      }
      public var hasWildPokemon:Bool {
           get {
               return builderResult.hasWildPokemon
           }
      }
      public var wildPokemon:Pogoprotos.Map.Pokemon.WildPokemon! {
           get {
               if wildPokemonBuilder_ != nil {
                  builderResult.wildPokemon = wildPokemonBuilder_.getMessage()
               }
               return builderResult.wildPokemon
           }
           set (value) {
               builderResult.hasWildPokemon = true
               builderResult.wildPokemon = value
           }
      }
      private var wildPokemonBuilder_:Pogoprotos.Map.Pokemon.WildPokemon.Builder! {
           didSet {
              builderResult.hasWildPokemon = true
           }
      }
      public func getWildPokemonBuilder() -> Pogoprotos.Map.Pokemon.WildPokemon.Builder {
        if wildPokemonBuilder_ == nil {
           wildPokemonBuilder_ = Pogoprotos.Map.Pokemon.WildPokemon.Builder()
           builderResult.wildPokemon = wildPokemonBuilder_.getMessage()
           if wildPokemon != nil {
              try! wildPokemonBuilder_.mergeFrom(wildPokemon)
           }
        }
        return wildPokemonBuilder_
      }
      public func setWildPokemon(value:Pogoprotos.Map.Pokemon.WildPokemon!) -> Pogoprotos.Networking.Responses.EncounterResponse.Builder {
        self.wildPokemon = value
        return self
      }
      public func mergeWildPokemon(value:Pogoprotos.Map.Pokemon.WildPokemon) throws -> Pogoprotos.Networking.Responses.EncounterResponse.Builder {
        if builderResult.hasWildPokemon {
          builderResult.wildPokemon = try Pogoprotos.Map.Pokemon.WildPokemon.builderWithPrototype(builderResult.wildPokemon).mergeFrom(value).buildPartial()
        } else {
          builderResult.wildPokemon = value
        }
        builderResult.hasWildPokemon = true
        return self
      }
      public func clearWildPokemon() -> Pogoprotos.Networking.Responses.EncounterResponse.Builder {
        wildPokemonBuilder_ = nil
        builderResult.hasWildPokemon = false
        builderResult.wildPokemon = nil
        return self
      }
        public var hasBackground:Bool{
            get {
                return builderResult.hasBackground
            }
        }
        public var background:Pogoprotos.Networking.Responses.EncounterResponse.Background {
            get {
                return builderResult.background
            }
            set (value) {
                builderResult.hasBackground = true
                builderResult.background = value
            }
        }
        public func setBackground(value:Pogoprotos.Networking.Responses.EncounterResponse.Background) -> Pogoprotos.Networking.Responses.EncounterResponse.Builder {
          self.background = value
          return self
        }
        public func clearBackground() -> Pogoprotos.Networking.Responses.EncounterResponse.Builder {
           builderResult.hasBackground = false
           builderResult.background = .Park
           return self
        }
        public var hasStatus:Bool{
            get {
                return builderResult.hasStatus
            }
        }
        public var status:Pogoprotos.Networking.Responses.EncounterResponse.Status {
            get {
                return builderResult.status
            }
            set (value) {
                builderResult.hasStatus = true
                builderResult.status = value
            }
        }
        public func setStatus(value:Pogoprotos.Networking.Responses.EncounterResponse.Status) -> Pogoprotos.Networking.Responses.EncounterResponse.Builder {
          self.status = value
          return self
        }
        public func clearStatus() -> Pogoprotos.Networking.Responses.EncounterResponse.Builder {
           builderResult.hasStatus = false
           builderResult.status = .EncounterError
           return self
        }
      public var hasCaptureProbability:Bool {
           get {
               return builderResult.hasCaptureProbability
           }
      }
      public var captureProbability:Pogoprotos.Data.Capture.CaptureProbability! {
           get {
               if captureProbabilityBuilder_ != nil {
                  builderResult.captureProbability = captureProbabilityBuilder_.getMessage()
               }
               return builderResult.captureProbability
           }
           set (value) {
               builderResult.hasCaptureProbability = true
               builderResult.captureProbability = value
           }
      }
      private var captureProbabilityBuilder_:Pogoprotos.Data.Capture.CaptureProbability.Builder! {
           didSet {
              builderResult.hasCaptureProbability = true
           }
      }
      public func getCaptureProbabilityBuilder() -> Pogoprotos.Data.Capture.CaptureProbability.Builder {
        if captureProbabilityBuilder_ == nil {
           captureProbabilityBuilder_ = Pogoprotos.Data.Capture.CaptureProbability.Builder()
           builderResult.captureProbability = captureProbabilityBuilder_.getMessage()
           if captureProbability != nil {
              try! captureProbabilityBuilder_.mergeFrom(captureProbability)
           }
        }
        return captureProbabilityBuilder_
      }
      public func setCaptureProbability(value:Pogoprotos.Data.Capture.CaptureProbability!) -> Pogoprotos.Networking.Responses.EncounterResponse.Builder {
        self.captureProbability = value
        return self
      }
      public func mergeCaptureProbability(value:Pogoprotos.Data.Capture.CaptureProbability) throws -> Pogoprotos.Networking.Responses.EncounterResponse.Builder {
        if builderResult.hasCaptureProbability {
          builderResult.captureProbability = try Pogoprotos.Data.Capture.CaptureProbability.builderWithPrototype(builderResult.captureProbability).mergeFrom(value).buildPartial()
        } else {
          builderResult.captureProbability = value
        }
        builderResult.hasCaptureProbability = true
        return self
      }
      public func clearCaptureProbability() -> Pogoprotos.Networking.Responses.EncounterResponse.Builder {
        captureProbabilityBuilder_ = nil
        builderResult.hasCaptureProbability = false
        builderResult.captureProbability = nil
        return self
      }
      override public var internalGetResult:GeneratedMessage {
           get {
              return builderResult
           }
      }
      override public func clear() -> Pogoprotos.Networking.Responses.EncounterResponse.Builder {
        builderResult = Pogoprotos.Networking.Responses.EncounterResponse()
        return self
      }
      override public func clone() throws -> Pogoprotos.Networking.Responses.EncounterResponse.Builder {
        return try Pogoprotos.Networking.Responses.EncounterResponse.builderWithPrototype(builderResult)
      }
      override public func build() throws -> Pogoprotos.Networking.Responses.EncounterResponse {
           try checkInitialized()
           return buildPartial()
      }
      public func buildPartial() -> Pogoprotos.Networking.Responses.EncounterResponse {
        let returnMe:Pogoprotos.Networking.Responses.EncounterResponse = builderResult
        return returnMe
      }
      public func mergeFrom(other:Pogoprotos.Networking.Responses.EncounterResponse) throws -> Pogoprotos.Networking.Responses.EncounterResponse.Builder {
        if other == Pogoprotos.Networking.Responses.EncounterResponse() {
         return self
        }
        if (other.hasWildPokemon) {
            try mergeWildPokemon(other.wildPokemon)
        }
        if other.hasBackground {
             background = other.background
        }
        if other.hasStatus {
             status = other.status
        }
        if (other.hasCaptureProbability) {
            try mergeCaptureProbability(other.captureProbability)
        }
        try mergeUnknownFields(other.unknownFields)
        return self
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Networking.Responses.EncounterResponse.Builder {
           return try mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Responses.EncounterResponse.Builder {
        let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
        while (true) {
          let protobufTag = try input.readTag()
          switch protobufTag {
          case 0: 
            self.unknownFields = try unknownFieldsBuilder.build()
            return self

          case 10:
            let subBuilder:Pogoprotos.Map.Pokemon.WildPokemon.Builder = Pogoprotos.Map.Pokemon.WildPokemon.Builder()
            if hasWildPokemon {
              try subBuilder.mergeFrom(wildPokemon)
            }
            try input.readMessage(subBuilder, extensionRegistry:extensionRegistry)
            wildPokemon = subBuilder.buildPartial()

          case 16:
            let valueIntbackground = try input.readEnum()
            if let enumsbackground = Pogoprotos.Networking.Responses.EncounterResponse.Background(rawValue:valueIntbackground){
                 background = enumsbackground
            } else {
                 try unknownFieldsBuilder.mergeVarintField(2, value:Int64(valueIntbackground))
            }

          case 24:
            let valueIntstatus = try input.readEnum()
            if let enumsstatus = Pogoprotos.Networking.Responses.EncounterResponse.Status(rawValue:valueIntstatus){
                 status = enumsstatus
            } else {
                 try unknownFieldsBuilder.mergeVarintField(3, value:Int64(valueIntstatus))
            }

          case 34:
            let subBuilder:Pogoprotos.Data.Capture.CaptureProbability.Builder = Pogoprotos.Data.Capture.CaptureProbability.Builder()
            if hasCaptureProbability {
              try subBuilder.mergeFrom(captureProbability)
            }
            try input.readMessage(subBuilder, extensionRegistry:extensionRegistry)
            captureProbability = subBuilder.buildPartial()

          default:
            if (!(try parseUnknownField(input,unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
               unknownFields = try unknownFieldsBuilder.build()
               return self
            }
          }
        }
      }
      override class public func decodeToBuilder(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Networking.Responses.EncounterResponse.Builder {
        let resultDecodedBuilder = Pogoprotos.Networking.Responses.EncounterResponse.Builder()
        if let jsonValueWildPokemon = jsonMap["wildPokemon"] as? Dictionary<String,AnyObject> {
          resultDecodedBuilder.wildPokemon = try Pogoprotos.Map.Pokemon.WildPokemon.Builder.decodeToBuilder(jsonValueWildPokemon).build()

        }
        if let jsonValueBackground = jsonMap["background"] as? String {
          resultDecodedBuilder.background = try Pogoprotos.Networking.Responses.EncounterResponse.Background.fromString(jsonValueBackground)
        }
        if let jsonValueStatus = jsonMap["status"] as? String {
          resultDecodedBuilder.status = try Pogoprotos.Networking.Responses.EncounterResponse.Status.fromString(jsonValueStatus)
        }
        if let jsonValueCaptureProbability = jsonMap["captureProbability"] as? Dictionary<String,AnyObject> {
          resultDecodedBuilder.captureProbability = try Pogoprotos.Data.Capture.CaptureProbability.Builder.decodeToBuilder(jsonValueCaptureProbability).build()

        }
        return resultDecodedBuilder
      }
      override class public func fromJSONToBuilder(data:NSData) throws -> Pogoprotos.Networking.Responses.EncounterResponse.Builder {
        let jsonData = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions(rawValue: 0))
        guard let jsDataCast = jsonData as? Dictionary<String,AnyObject> else {
          throw ProtocolBuffersError.InvalidProtocolBuffer("Invalid JSON data")
        }
        return try Pogoprotos.Networking.Responses.EncounterResponse.Builder.decodeToBuilder(jsDataCast)
      }
    }

  }

}

// @@protoc_insertion_point(global_scope)