// Generated by the Protocol Buffers 3.0 compiler.  DO NOT EDIT!
// Source file "StartGymBattleResponse.proto"
// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct Pogoprotos { public struct Networking { public struct Responses { }}}

public func == (lhs: Pogoprotos.Networking.Responses.StartGymBattleResponse, rhs: Pogoprotos.Networking.Responses.StartGymBattleResponse) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasResult == rhs.hasResult) && (!lhs.hasResult || lhs.result == rhs.result)
  fieldCheck = fieldCheck && (lhs.hasBattleStartTimestampMs == rhs.hasBattleStartTimestampMs) && (!lhs.hasBattleStartTimestampMs || lhs.battleStartTimestampMs == rhs.battleStartTimestampMs)
  fieldCheck = fieldCheck && (lhs.hasBattleEndTimestampMs == rhs.hasBattleEndTimestampMs) && (!lhs.hasBattleEndTimestampMs || lhs.battleEndTimestampMs == rhs.battleEndTimestampMs)
  fieldCheck = fieldCheck && (lhs.hasBattleId == rhs.hasBattleId) && (!lhs.hasBattleId || lhs.battleId == rhs.battleId)
  fieldCheck = fieldCheck && (lhs.hasDefender == rhs.hasDefender) && (!lhs.hasDefender || lhs.defender == rhs.defender)
  fieldCheck = fieldCheck && (lhs.hasBattleLog == rhs.hasBattleLog) && (!lhs.hasBattleLog || lhs.battleLog == rhs.battleLog)
  fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
  return fieldCheck
}

public extension Pogoprotos.Networking.Responses {
  public struct StartGymBattleResponseRoot {
    public static var sharedInstance : StartGymBattleResponseRoot {
     struct Static {
         static let instance : StartGymBattleResponseRoot = StartGymBattleResponseRoot()
     }
     return Static.instance
    }
    public var extensionRegistry:ExtensionRegistry

    init() {
      extensionRegistry = ExtensionRegistry()
      registerAllExtensions(extensionRegistry)
      Pogoprotos.Data.Battle.BattleLogRoot.sharedInstance.registerAllExtensions(extensionRegistry)
      Pogoprotos.Data.Battle.BattleParticipantRoot.sharedInstance.registerAllExtensions(extensionRegistry)
    }
    public func registerAllExtensions(registry:ExtensionRegistry) {
    }
  }

  final public class StartGymBattleResponse : GeneratedMessage, GeneratedMessageProtocol {


      //Enum type declaration start 

      public enum Result:Int32, CustomDebugStringConvertible, CustomStringConvertible {
        case Unset = 0
        case Success = 1
        case ErrorGymNotFound = 2
        case ErrorGymNeutral = 3
        case ErrorGymWrongTeam = 4
        case ErrorGymEmpty = 5
        case ErrorInvalidDefender = 6
        case ErrorTrainingInvalidAttackerCount = 7
        case ErrorAllPokemonFainted = 8
        case ErrorTooManyBattles = 9
        case ErrorTooManyPlayers = 10
        case ErrorGymBattleLockout = 11
        case ErrorPlayerBelowMinimumLevel = 12
        case ErrorNotInRange = 13
        public func toString() -> String {
          switch self {
          case .Unset: return "UNSET"
          case .Success: return "SUCCESS"
          case .ErrorGymNotFound: return "ERROR_GYM_NOT_FOUND"
          case .ErrorGymNeutral: return "ERROR_GYM_NEUTRAL"
          case .ErrorGymWrongTeam: return "ERROR_GYM_WRONG_TEAM"
          case .ErrorGymEmpty: return "ERROR_GYM_EMPTY"
          case .ErrorInvalidDefender: return "ERROR_INVALID_DEFENDER"
          case .ErrorTrainingInvalidAttackerCount: return "ERROR_TRAINING_INVALID_ATTACKER_COUNT"
          case .ErrorAllPokemonFainted: return "ERROR_ALL_POKEMON_FAINTED"
          case .ErrorTooManyBattles: return "ERROR_TOO_MANY_BATTLES"
          case .ErrorTooManyPlayers: return "ERROR_TOO_MANY_PLAYERS"
          case .ErrorGymBattleLockout: return "ERROR_GYM_BATTLE_LOCKOUT"
          case .ErrorPlayerBelowMinimumLevel: return "ERROR_PLAYER_BELOW_MINIMUM_LEVEL"
          case .ErrorNotInRange: return "ERROR_NOT_IN_RANGE"
          }
        }
        public static func fromString(str:String) throws -> Pogoprotos.Networking.Responses.StartGymBattleResponse.Result {
          switch str {
          case "UNSET":  return .Unset
          case "SUCCESS":  return .Success
          case "ERROR_GYM_NOT_FOUND":  return .ErrorGymNotFound
          case "ERROR_GYM_NEUTRAL":  return .ErrorGymNeutral
          case "ERROR_GYM_WRONG_TEAM":  return .ErrorGymWrongTeam
          case "ERROR_GYM_EMPTY":  return .ErrorGymEmpty
          case "ERROR_INVALID_DEFENDER":  return .ErrorInvalidDefender
          case "ERROR_TRAINING_INVALID_ATTACKER_COUNT":  return .ErrorTrainingInvalidAttackerCount
          case "ERROR_ALL_POKEMON_FAINTED":  return .ErrorAllPokemonFainted
          case "ERROR_TOO_MANY_BATTLES":  return .ErrorTooManyBattles
          case "ERROR_TOO_MANY_PLAYERS":  return .ErrorTooManyPlayers
          case "ERROR_GYM_BATTLE_LOCKOUT":  return .ErrorGymBattleLockout
          case "ERROR_PLAYER_BELOW_MINIMUM_LEVEL":  return .ErrorPlayerBelowMinimumLevel
          case "ERROR_NOT_IN_RANGE":  return .ErrorNotInRange
          default: throw ProtocolBuffersError.InvalidProtocolBuffer("Conversion String to Enum has failed.")
          }
        }
        public var debugDescription:String { return getDescription() }
        public var description:String { return getDescription() }
        private func getDescription() -> String { 
            switch self {
                case .Unset: return ".Unset"
                case .Success: return ".Success"
                case .ErrorGymNotFound: return ".ErrorGymNotFound"
                case .ErrorGymNeutral: return ".ErrorGymNeutral"
                case .ErrorGymWrongTeam: return ".ErrorGymWrongTeam"
                case .ErrorGymEmpty: return ".ErrorGymEmpty"
                case .ErrorInvalidDefender: return ".ErrorInvalidDefender"
                case .ErrorTrainingInvalidAttackerCount: return ".ErrorTrainingInvalidAttackerCount"
                case .ErrorAllPokemonFainted: return ".ErrorAllPokemonFainted"
                case .ErrorTooManyBattles: return ".ErrorTooManyBattles"
                case .ErrorTooManyPlayers: return ".ErrorTooManyPlayers"
                case .ErrorGymBattleLockout: return ".ErrorGymBattleLockout"
                case .ErrorPlayerBelowMinimumLevel: return ".ErrorPlayerBelowMinimumLevel"
                case .ErrorNotInRange: return ".ErrorNotInRange"
            }
        }
      }

      //Enum type declaration end 

    public private(set) var result:Pogoprotos.Networking.Responses.StartGymBattleResponse.Result = Pogoprotos.Networking.Responses.StartGymBattleResponse.Result.Unset
    public private(set) var hasResult:Bool = false
    public private(set) var hasBattleStartTimestampMs:Bool = false
    public private(set) var battleStartTimestampMs:Int64 = Int64(0)

    public private(set) var hasBattleEndTimestampMs:Bool = false
    public private(set) var battleEndTimestampMs:Int64 = Int64(0)

    public private(set) var hasBattleId:Bool = false
    public private(set) var battleId:String = ""

    public private(set) var hasDefender:Bool = false
    public private(set) var defender:Pogoprotos.Data.Battle.BattleParticipant!
    public private(set) var hasBattleLog:Bool = false
    public private(set) var battleLog:Pogoprotos.Data.Battle.BattleLog!
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
      if hasBattleStartTimestampMs {
        try output.writeInt64(2, value:battleStartTimestampMs)
      }
      if hasBattleEndTimestampMs {
        try output.writeInt64(3, value:battleEndTimestampMs)
      }
      if hasBattleId {
        try output.writeString(4, value:battleId)
      }
      if hasDefender {
        try output.writeMessage(5, value:defender)
      }
      if hasBattleLog {
        try output.writeMessage(6, value:battleLog)
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
      if hasBattleStartTimestampMs {
        serialize_size += battleStartTimestampMs.computeInt64Size(2)
      }
      if hasBattleEndTimestampMs {
        serialize_size += battleEndTimestampMs.computeInt64Size(3)
      }
      if hasBattleId {
        serialize_size += battleId.computeStringSize(4)
      }
      if hasDefender {
          if let varSizedefender = defender?.computeMessageSize(5) {
              serialize_size += varSizedefender
          }
      }
      if hasBattleLog {
          if let varSizebattleLog = battleLog?.computeMessageSize(6) {
              serialize_size += varSizebattleLog
          }
      }
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    public class func parseArrayDelimitedFromInputStream(input:NSInputStream) throws -> Array<Pogoprotos.Networking.Responses.StartGymBattleResponse> {
      var mergedArray = Array<Pogoprotos.Networking.Responses.StartGymBattleResponse>()
      while let value = try parseFromDelimitedFromInputStream(input) {
        mergedArray += [value]
      }
      return mergedArray
    }
    public class func parseFromDelimitedFromInputStream(input:NSInputStream) throws -> Pogoprotos.Networking.Responses.StartGymBattleResponse? {
      return try Pogoprotos.Networking.Responses.StartGymBattleResponse.Builder().mergeDelimitedFromInputStream(input)?.build()
    }
    public class func parseFromData(data:NSData) throws -> Pogoprotos.Networking.Responses.StartGymBattleResponse {
      return try Pogoprotos.Networking.Responses.StartGymBattleResponse.Builder().mergeFromData(data, extensionRegistry:Pogoprotos.Networking.Responses.StartGymBattleResponseRoot.sharedInstance.extensionRegistry).build()
    }
    public class func parseFromData(data:NSData, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Responses.StartGymBattleResponse {
      return try Pogoprotos.Networking.Responses.StartGymBattleResponse.Builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromInputStream(input:NSInputStream) throws -> Pogoprotos.Networking.Responses.StartGymBattleResponse {
      return try Pogoprotos.Networking.Responses.StartGymBattleResponse.Builder().mergeFromInputStream(input).build()
    }
    public class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Responses.StartGymBattleResponse {
      return try Pogoprotos.Networking.Responses.StartGymBattleResponse.Builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Networking.Responses.StartGymBattleResponse {
      return try Pogoprotos.Networking.Responses.StartGymBattleResponse.Builder().mergeFromCodedInputStream(input).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Responses.StartGymBattleResponse {
      return try Pogoprotos.Networking.Responses.StartGymBattleResponse.Builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func getBuilder() -> Pogoprotos.Networking.Responses.StartGymBattleResponse.Builder {
      return Pogoprotos.Networking.Responses.StartGymBattleResponse.classBuilder() as! Pogoprotos.Networking.Responses.StartGymBattleResponse.Builder
    }
    public func getBuilder() -> Pogoprotos.Networking.Responses.StartGymBattleResponse.Builder {
      return classBuilder() as! Pogoprotos.Networking.Responses.StartGymBattleResponse.Builder
    }
    override public class func classBuilder() -> MessageBuilder {
      return Pogoprotos.Networking.Responses.StartGymBattleResponse.Builder()
    }
    override public func classBuilder() -> MessageBuilder {
      return Pogoprotos.Networking.Responses.StartGymBattleResponse.Builder()
    }
    public func toBuilder() throws -> Pogoprotos.Networking.Responses.StartGymBattleResponse.Builder {
      return try Pogoprotos.Networking.Responses.StartGymBattleResponse.builderWithPrototype(self)
    }
    public class func builderWithPrototype(prototype:Pogoprotos.Networking.Responses.StartGymBattleResponse) throws -> Pogoprotos.Networking.Responses.StartGymBattleResponse.Builder {
      return try Pogoprotos.Networking.Responses.StartGymBattleResponse.Builder().mergeFrom(prototype)
    }
    override public func encode() throws -> Dictionary<String,AnyObject> {
      guard isInitialized() else {
        throw ProtocolBuffersError.InvalidProtocolBuffer("Uninitialized Message")
      }

      var jsonMap:Dictionary<String,AnyObject> = Dictionary<String,AnyObject>()
      if hasResult {
        jsonMap["result"] = result.toString()
      }
      if hasBattleStartTimestampMs {
        jsonMap["battleStartTimestampMs"] = "\(battleStartTimestampMs)"
      }
      if hasBattleEndTimestampMs {
        jsonMap["battleEndTimestampMs"] = "\(battleEndTimestampMs)"
      }
      if hasBattleId {
        jsonMap["battleId"] = battleId
      }
      if hasDefender {
        jsonMap["defender"] = try defender.encode()
      }
      if hasBattleLog {
        jsonMap["battleLog"] = try battleLog.encode()
      }
      return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Networking.Responses.StartGymBattleResponse {
      return try Pogoprotos.Networking.Responses.StartGymBattleResponse.Builder.decodeToBuilder(jsonMap).build()
    }
    override class public func fromJSON(data:NSData) throws -> Pogoprotos.Networking.Responses.StartGymBattleResponse {
      return try Pogoprotos.Networking.Responses.StartGymBattleResponse.Builder.fromJSONToBuilder(data).build()
    }
    override public func getDescription(indent:String) throws -> String {
      var output = ""
      if (hasResult) {
        output += "\(indent) result: \(result.description)\n"
      }
      if hasBattleStartTimestampMs {
        output += "\(indent) battleStartTimestampMs: \(battleStartTimestampMs) \n"
      }
      if hasBattleEndTimestampMs {
        output += "\(indent) battleEndTimestampMs: \(battleEndTimestampMs) \n"
      }
      if hasBattleId {
        output += "\(indent) battleId: \(battleId) \n"
      }
      if hasDefender {
        output += "\(indent) defender {\n"
        if let outDescDefender = defender {
          output += try outDescDefender.getDescription("\(indent)  ")
        }
        output += "\(indent) }\n"
      }
      if hasBattleLog {
        output += "\(indent) battleLog {\n"
        if let outDescBattleLog = battleLog {
          output += try outDescBattleLog.getDescription("\(indent)  ")
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
            if hasBattleStartTimestampMs {
               hashCode = (hashCode &* 31) &+ battleStartTimestampMs.hashValue
            }
            if hasBattleEndTimestampMs {
               hashCode = (hashCode &* 31) &+ battleEndTimestampMs.hashValue
            }
            if hasBattleId {
               hashCode = (hashCode &* 31) &+ battleId.hashValue
            }
            if hasDefender {
                if let hashValuedefender = defender?.hashValue {
                    hashCode = (hashCode &* 31) &+ hashValuedefender
                }
            }
            if hasBattleLog {
                if let hashValuebattleLog = battleLog?.hashValue {
                    hashCode = (hashCode &* 31) &+ hashValuebattleLog
                }
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "Pogoprotos.Networking.Responses.StartGymBattleResponse"
    }
    override public func className() -> String {
        return "Pogoprotos.Networking.Responses.StartGymBattleResponse"
    }
    override public func classMetaType() -> GeneratedMessage.Type {
        return Pogoprotos.Networking.Responses.StartGymBattleResponse.self
    }
    //Meta information declaration end

    final public class Builder : GeneratedMessageBuilder {
      private var builderResult:Pogoprotos.Networking.Responses.StartGymBattleResponse = Pogoprotos.Networking.Responses.StartGymBattleResponse()
      public func getMessage() -> Pogoprotos.Networking.Responses.StartGymBattleResponse {
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
        public var result:Pogoprotos.Networking.Responses.StartGymBattleResponse.Result {
            get {
                return builderResult.result
            }
            set (value) {
                builderResult.hasResult = true
                builderResult.result = value
            }
        }
        public func setResult(value:Pogoprotos.Networking.Responses.StartGymBattleResponse.Result) -> Pogoprotos.Networking.Responses.StartGymBattleResponse.Builder {
          self.result = value
          return self
        }
        public func clearResult() -> Pogoprotos.Networking.Responses.StartGymBattleResponse.Builder {
           builderResult.hasResult = false
           builderResult.result = .Unset
           return self
        }
      public var hasBattleStartTimestampMs:Bool {
           get {
                return builderResult.hasBattleStartTimestampMs
           }
      }
      public var battleStartTimestampMs:Int64 {
           get {
                return builderResult.battleStartTimestampMs
           }
           set (value) {
               builderResult.hasBattleStartTimestampMs = true
               builderResult.battleStartTimestampMs = value
           }
      }
      public func setBattleStartTimestampMs(value:Int64) -> Pogoprotos.Networking.Responses.StartGymBattleResponse.Builder {
        self.battleStartTimestampMs = value
        return self
      }
      public func clearBattleStartTimestampMs() -> Pogoprotos.Networking.Responses.StartGymBattleResponse.Builder{
           builderResult.hasBattleStartTimestampMs = false
           builderResult.battleStartTimestampMs = Int64(0)
           return self
      }
      public var hasBattleEndTimestampMs:Bool {
           get {
                return builderResult.hasBattleEndTimestampMs
           }
      }
      public var battleEndTimestampMs:Int64 {
           get {
                return builderResult.battleEndTimestampMs
           }
           set (value) {
               builderResult.hasBattleEndTimestampMs = true
               builderResult.battleEndTimestampMs = value
           }
      }
      public func setBattleEndTimestampMs(value:Int64) -> Pogoprotos.Networking.Responses.StartGymBattleResponse.Builder {
        self.battleEndTimestampMs = value
        return self
      }
      public func clearBattleEndTimestampMs() -> Pogoprotos.Networking.Responses.StartGymBattleResponse.Builder{
           builderResult.hasBattleEndTimestampMs = false
           builderResult.battleEndTimestampMs = Int64(0)
           return self
      }
      public var hasBattleId:Bool {
           get {
                return builderResult.hasBattleId
           }
      }
      public var battleId:String {
           get {
                return builderResult.battleId
           }
           set (value) {
               builderResult.hasBattleId = true
               builderResult.battleId = value
           }
      }
      public func setBattleId(value:String) -> Pogoprotos.Networking.Responses.StartGymBattleResponse.Builder {
        self.battleId = value
        return self
      }
      public func clearBattleId() -> Pogoprotos.Networking.Responses.StartGymBattleResponse.Builder{
           builderResult.hasBattleId = false
           builderResult.battleId = ""
           return self
      }
      public var hasDefender:Bool {
           get {
               return builderResult.hasDefender
           }
      }
      public var defender:Pogoprotos.Data.Battle.BattleParticipant! {
           get {
               if defenderBuilder_ != nil {
                  builderResult.defender = defenderBuilder_.getMessage()
               }
               return builderResult.defender
           }
           set (value) {
               builderResult.hasDefender = true
               builderResult.defender = value
           }
      }
      private var defenderBuilder_:Pogoprotos.Data.Battle.BattleParticipant.Builder! {
           didSet {
              builderResult.hasDefender = true
           }
      }
      public func getDefenderBuilder() -> Pogoprotos.Data.Battle.BattleParticipant.Builder {
        if defenderBuilder_ == nil {
           defenderBuilder_ = Pogoprotos.Data.Battle.BattleParticipant.Builder()
           builderResult.defender = defenderBuilder_.getMessage()
           if defender != nil {
              try! defenderBuilder_.mergeFrom(defender)
           }
        }
        return defenderBuilder_
      }
      public func setDefender(value:Pogoprotos.Data.Battle.BattleParticipant!) -> Pogoprotos.Networking.Responses.StartGymBattleResponse.Builder {
        self.defender = value
        return self
      }
      public func mergeDefender(value:Pogoprotos.Data.Battle.BattleParticipant) throws -> Pogoprotos.Networking.Responses.StartGymBattleResponse.Builder {
        if builderResult.hasDefender {
          builderResult.defender = try Pogoprotos.Data.Battle.BattleParticipant.builderWithPrototype(builderResult.defender).mergeFrom(value).buildPartial()
        } else {
          builderResult.defender = value
        }
        builderResult.hasDefender = true
        return self
      }
      public func clearDefender() -> Pogoprotos.Networking.Responses.StartGymBattleResponse.Builder {
        defenderBuilder_ = nil
        builderResult.hasDefender = false
        builderResult.defender = nil
        return self
      }
      public var hasBattleLog:Bool {
           get {
               return builderResult.hasBattleLog
           }
      }
      public var battleLog:Pogoprotos.Data.Battle.BattleLog! {
           get {
               if battleLogBuilder_ != nil {
                  builderResult.battleLog = battleLogBuilder_.getMessage()
               }
               return builderResult.battleLog
           }
           set (value) {
               builderResult.hasBattleLog = true
               builderResult.battleLog = value
           }
      }
      private var battleLogBuilder_:Pogoprotos.Data.Battle.BattleLog.Builder! {
           didSet {
              builderResult.hasBattleLog = true
           }
      }
      public func getBattleLogBuilder() -> Pogoprotos.Data.Battle.BattleLog.Builder {
        if battleLogBuilder_ == nil {
           battleLogBuilder_ = Pogoprotos.Data.Battle.BattleLog.Builder()
           builderResult.battleLog = battleLogBuilder_.getMessage()
           if battleLog != nil {
              try! battleLogBuilder_.mergeFrom(battleLog)
           }
        }
        return battleLogBuilder_
      }
      public func setBattleLog(value:Pogoprotos.Data.Battle.BattleLog!) -> Pogoprotos.Networking.Responses.StartGymBattleResponse.Builder {
        self.battleLog = value
        return self
      }
      public func mergeBattleLog(value:Pogoprotos.Data.Battle.BattleLog) throws -> Pogoprotos.Networking.Responses.StartGymBattleResponse.Builder {
        if builderResult.hasBattleLog {
          builderResult.battleLog = try Pogoprotos.Data.Battle.BattleLog.builderWithPrototype(builderResult.battleLog).mergeFrom(value).buildPartial()
        } else {
          builderResult.battleLog = value
        }
        builderResult.hasBattleLog = true
        return self
      }
      public func clearBattleLog() -> Pogoprotos.Networking.Responses.StartGymBattleResponse.Builder {
        battleLogBuilder_ = nil
        builderResult.hasBattleLog = false
        builderResult.battleLog = nil
        return self
      }
      override public var internalGetResult:GeneratedMessage {
           get {
              return builderResult
           }
      }
      override public func clear() -> Pogoprotos.Networking.Responses.StartGymBattleResponse.Builder {
        builderResult = Pogoprotos.Networking.Responses.StartGymBattleResponse()
        return self
      }
      override public func clone() throws -> Pogoprotos.Networking.Responses.StartGymBattleResponse.Builder {
        return try Pogoprotos.Networking.Responses.StartGymBattleResponse.builderWithPrototype(builderResult)
      }
      override public func build() throws -> Pogoprotos.Networking.Responses.StartGymBattleResponse {
           try checkInitialized()
           return buildPartial()
      }
      public func buildPartial() -> Pogoprotos.Networking.Responses.StartGymBattleResponse {
        let returnMe:Pogoprotos.Networking.Responses.StartGymBattleResponse = builderResult
        return returnMe
      }
      public func mergeFrom(other:Pogoprotos.Networking.Responses.StartGymBattleResponse) throws -> Pogoprotos.Networking.Responses.StartGymBattleResponse.Builder {
        if other == Pogoprotos.Networking.Responses.StartGymBattleResponse() {
         return self
        }
        if other.hasResult {
             result = other.result
        }
        if other.hasBattleStartTimestampMs {
             battleStartTimestampMs = other.battleStartTimestampMs
        }
        if other.hasBattleEndTimestampMs {
             battleEndTimestampMs = other.battleEndTimestampMs
        }
        if other.hasBattleId {
             battleId = other.battleId
        }
        if (other.hasDefender) {
            try mergeDefender(other.defender)
        }
        if (other.hasBattleLog) {
            try mergeBattleLog(other.battleLog)
        }
        try mergeUnknownFields(other.unknownFields)
        return self
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Networking.Responses.StartGymBattleResponse.Builder {
           return try mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Responses.StartGymBattleResponse.Builder {
        let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
        while (true) {
          let protobufTag = try input.readTag()
          switch protobufTag {
          case 0: 
            self.unknownFields = try unknownFieldsBuilder.build()
            return self

          case 8:
            let valueIntresult = try input.readEnum()
            if let enumsresult = Pogoprotos.Networking.Responses.StartGymBattleResponse.Result(rawValue:valueIntresult){
                 result = enumsresult
            } else {
                 try unknownFieldsBuilder.mergeVarintField(1, value:Int64(valueIntresult))
            }

          case 16:
            battleStartTimestampMs = try input.readInt64()

          case 24:
            battleEndTimestampMs = try input.readInt64()

          case 34:
            battleId = try input.readString()

          case 42:
            let subBuilder:Pogoprotos.Data.Battle.BattleParticipant.Builder = Pogoprotos.Data.Battle.BattleParticipant.Builder()
            if hasDefender {
              try subBuilder.mergeFrom(defender)
            }
            try input.readMessage(subBuilder, extensionRegistry:extensionRegistry)
            defender = subBuilder.buildPartial()

          case 50:
            let subBuilder:Pogoprotos.Data.Battle.BattleLog.Builder = Pogoprotos.Data.Battle.BattleLog.Builder()
            if hasBattleLog {
              try subBuilder.mergeFrom(battleLog)
            }
            try input.readMessage(subBuilder, extensionRegistry:extensionRegistry)
            battleLog = subBuilder.buildPartial()

          default:
            if (!(try parseUnknownField(input,unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
               unknownFields = try unknownFieldsBuilder.build()
               return self
            }
          }
        }
      }
      override class public func decodeToBuilder(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Networking.Responses.StartGymBattleResponse.Builder {
        let resultDecodedBuilder = Pogoprotos.Networking.Responses.StartGymBattleResponse.Builder()
        if let jsonValueResult = jsonMap["result"] as? String {
          resultDecodedBuilder.result = try Pogoprotos.Networking.Responses.StartGymBattleResponse.Result.fromString(jsonValueResult)
        }
        if let jsonValueBattleStartTimestampMs = jsonMap["battleStartTimestampMs"] as? String {
          resultDecodedBuilder.battleStartTimestampMs = Int64(jsonValueBattleStartTimestampMs)!
        }
        if let jsonValueBattleEndTimestampMs = jsonMap["battleEndTimestampMs"] as? String {
          resultDecodedBuilder.battleEndTimestampMs = Int64(jsonValueBattleEndTimestampMs)!
        }
        if let jsonValueBattleId = jsonMap["battleId"] as? String {
          resultDecodedBuilder.battleId = jsonValueBattleId
        }
        if let jsonValueDefender = jsonMap["defender"] as? Dictionary<String,AnyObject> {
          resultDecodedBuilder.defender = try Pogoprotos.Data.Battle.BattleParticipant.Builder.decodeToBuilder(jsonValueDefender).build()

        }
        if let jsonValueBattleLog = jsonMap["battleLog"] as? Dictionary<String,AnyObject> {
          resultDecodedBuilder.battleLog = try Pogoprotos.Data.Battle.BattleLog.Builder.decodeToBuilder(jsonValueBattleLog).build()

        }
        return resultDecodedBuilder
      }
      override class public func fromJSONToBuilder(data:NSData) throws -> Pogoprotos.Networking.Responses.StartGymBattleResponse.Builder {
        let jsonData = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions(rawValue: 0))
        guard let jsDataCast = jsonData as? Dictionary<String,AnyObject> else {
          throw ProtocolBuffersError.InvalidProtocolBuffer("Invalid JSON data")
        }
        return try Pogoprotos.Networking.Responses.StartGymBattleResponse.Builder.decodeToBuilder(jsDataCast)
      }
    }

  }

}

// @@protoc_insertion_point(global_scope)
