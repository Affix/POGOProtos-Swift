// Generated by the Protocol Buffers 3.0 compiler.  DO NOT EDIT!
// Source file "BattleLog.proto"
// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct Pogoprotos { public struct Data { public struct Battle { }}}

public func == (lhs: Pogoprotos.Data.Battle.BattleLog, rhs: Pogoprotos.Data.Battle.BattleLog) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasState == rhs.hasState) && (!lhs.hasState || lhs.state == rhs.state)
  fieldCheck = fieldCheck && (lhs.hasBattleType == rhs.hasBattleType) && (!lhs.hasBattleType || lhs.battleType == rhs.battleType)
  fieldCheck = fieldCheck && (lhs.hasServerMs == rhs.hasServerMs) && (!lhs.hasServerMs || lhs.serverMs == rhs.serverMs)
  fieldCheck = fieldCheck && (lhs.battleActions == rhs.battleActions)
  fieldCheck = fieldCheck && (lhs.hasBattleStartTimestampMs == rhs.hasBattleStartTimestampMs) && (!lhs.hasBattleStartTimestampMs || lhs.battleStartTimestampMs == rhs.battleStartTimestampMs)
  fieldCheck = fieldCheck && (lhs.hasBattleEndTimestampMs == rhs.hasBattleEndTimestampMs) && (!lhs.hasBattleEndTimestampMs || lhs.battleEndTimestampMs == rhs.battleEndTimestampMs)
  fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
  return fieldCheck
}

public extension Pogoprotos.Data.Battle {
  public struct BattleLogRoot {
    public static var sharedInstance : BattleLogRoot {
     struct Static {
         static let instance : BattleLogRoot = BattleLogRoot()
     }
     return Static.instance
    }
    public var extensionRegistry:ExtensionRegistry

    init() {
      extensionRegistry = ExtensionRegistry()
      registerAllExtensions(extensionRegistry)
      Pogoprotos.Data.Battle.BattleStateRoot.sharedInstance.registerAllExtensions(extensionRegistry)
      Pogoprotos.Data.Battle.BattleTypeRoot.sharedInstance.registerAllExtensions(extensionRegistry)
      Pogoprotos.Data.Battle.BattleActionRoot.sharedInstance.registerAllExtensions(extensionRegistry)
    }
    public func registerAllExtensions(registry:ExtensionRegistry) {
    }
  }

  final public class BattleLog : GeneratedMessage, GeneratedMessageProtocol {
    public private(set) var state:Pogoprotos.Data.Battle.BattleState = Pogoprotos.Data.Battle.BattleState.StateUnset
    public private(set) var hasState:Bool = false
    public private(set) var battleType:Pogoprotos.Data.Battle.BattleType = Pogoprotos.Data.Battle.BattleType.BattleTypeUnset
    public private(set) var hasBattleType:Bool = false
    public private(set) var hasServerMs:Bool = false
    public private(set) var serverMs:Int64 = Int64(0)

    public private(set) var battleActions:Array<Pogoprotos.Data.Battle.BattleAction>  = Array<Pogoprotos.Data.Battle.BattleAction>()
    public private(set) var hasBattleStartTimestampMs:Bool = false
    public private(set) var battleStartTimestampMs:Int64 = Int64(0)

    public private(set) var hasBattleEndTimestampMs:Bool = false
    public private(set) var battleEndTimestampMs:Int64 = Int64(0)

    required public init() {
         super.init()
    }
    override public func isInitialized() -> Bool {
     return true
    }
    override public func writeToCodedOutputStream(output:CodedOutputStream) throws {
      if hasState {
        try output.writeEnum(1, value:state.rawValue)
      }
      if hasBattleType {
        try output.writeEnum(2, value:battleType.rawValue)
      }
      if hasServerMs {
        try output.writeInt64(3, value:serverMs)
      }
      for oneElementBattleActions in battleActions {
          try output.writeMessage(4, value:oneElementBattleActions)
      }
      if hasBattleStartTimestampMs {
        try output.writeInt64(5, value:battleStartTimestampMs)
      }
      if hasBattleEndTimestampMs {
        try output.writeInt64(6, value:battleEndTimestampMs)
      }
      try unknownFields.writeToCodedOutputStream(output)
    }
    override public func serializedSize() -> Int32 {
      var serialize_size:Int32 = memoizedSerializedSize
      if serialize_size != -1 {
       return serialize_size
      }

      serialize_size = 0
      if (hasState) {
        serialize_size += state.rawValue.computeEnumSize(1)
      }
      if (hasBattleType) {
        serialize_size += battleType.rawValue.computeEnumSize(2)
      }
      if hasServerMs {
        serialize_size += serverMs.computeInt64Size(3)
      }
      for oneElementBattleActions in battleActions {
          serialize_size += oneElementBattleActions.computeMessageSize(4)
      }
      if hasBattleStartTimestampMs {
        serialize_size += battleStartTimestampMs.computeInt64Size(5)
      }
      if hasBattleEndTimestampMs {
        serialize_size += battleEndTimestampMs.computeInt64Size(6)
      }
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    public class func parseArrayDelimitedFromInputStream(input:NSInputStream) throws -> Array<Pogoprotos.Data.Battle.BattleLog> {
      var mergedArray = Array<Pogoprotos.Data.Battle.BattleLog>()
      while let value = try parseFromDelimitedFromInputStream(input) {
        mergedArray += [value]
      }
      return mergedArray
    }
    public class func parseFromDelimitedFromInputStream(input:NSInputStream) throws -> Pogoprotos.Data.Battle.BattleLog? {
      return try Pogoprotos.Data.Battle.BattleLog.Builder().mergeDelimitedFromInputStream(input)?.build()
    }
    public class func parseFromData(data:NSData) throws -> Pogoprotos.Data.Battle.BattleLog {
      return try Pogoprotos.Data.Battle.BattleLog.Builder().mergeFromData(data, extensionRegistry:Pogoprotos.Data.Battle.BattleLogRoot.sharedInstance.extensionRegistry).build()
    }
    public class func parseFromData(data:NSData, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Data.Battle.BattleLog {
      return try Pogoprotos.Data.Battle.BattleLog.Builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromInputStream(input:NSInputStream) throws -> Pogoprotos.Data.Battle.BattleLog {
      return try Pogoprotos.Data.Battle.BattleLog.Builder().mergeFromInputStream(input).build()
    }
    public class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Data.Battle.BattleLog {
      return try Pogoprotos.Data.Battle.BattleLog.Builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Data.Battle.BattleLog {
      return try Pogoprotos.Data.Battle.BattleLog.Builder().mergeFromCodedInputStream(input).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Data.Battle.BattleLog {
      return try Pogoprotos.Data.Battle.BattleLog.Builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func getBuilder() -> Pogoprotos.Data.Battle.BattleLog.Builder {
      return Pogoprotos.Data.Battle.BattleLog.classBuilder() as! Pogoprotos.Data.Battle.BattleLog.Builder
    }
    public func getBuilder() -> Pogoprotos.Data.Battle.BattleLog.Builder {
      return classBuilder() as! Pogoprotos.Data.Battle.BattleLog.Builder
    }
    override public class func classBuilder() -> MessageBuilder {
      return Pogoprotos.Data.Battle.BattleLog.Builder()
    }
    override public func classBuilder() -> MessageBuilder {
      return Pogoprotos.Data.Battle.BattleLog.Builder()
    }
    public func toBuilder() throws -> Pogoprotos.Data.Battle.BattleLog.Builder {
      return try Pogoprotos.Data.Battle.BattleLog.builderWithPrototype(self)
    }
    public class func builderWithPrototype(prototype:Pogoprotos.Data.Battle.BattleLog) throws -> Pogoprotos.Data.Battle.BattleLog.Builder {
      return try Pogoprotos.Data.Battle.BattleLog.Builder().mergeFrom(prototype)
    }
    override public func encode() throws -> Dictionary<String,AnyObject> {
      guard isInitialized() else {
        throw ProtocolBuffersError.InvalidProtocolBuffer("Uninitialized Message")
      }

      var jsonMap:Dictionary<String,AnyObject> = Dictionary<String,AnyObject>()
      if hasState {
        jsonMap["state"] = state.toString()
      }
      if hasBattleType {
        jsonMap["battleType"] = battleType.toString()
      }
      if hasServerMs {
        jsonMap["serverMs"] = "\(serverMs)"
      }
      if !battleActions.isEmpty {
        var jsonArrayBattleActions:Array<Dictionary<String,AnyObject>> = []
          for oneValueBattleActions in battleActions {
            let ecodedMessageBattleActions = try oneValueBattleActions.encode()
            jsonArrayBattleActions += [ecodedMessageBattleActions]
          }
        jsonMap["battleActions"] = jsonArrayBattleActions
      }
      if hasBattleStartTimestampMs {
        jsonMap["battleStartTimestampMs"] = "\(battleStartTimestampMs)"
      }
      if hasBattleEndTimestampMs {
        jsonMap["battleEndTimestampMs"] = "\(battleEndTimestampMs)"
      }
      return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Data.Battle.BattleLog {
      return try Pogoprotos.Data.Battle.BattleLog.Builder.decodeToBuilder(jsonMap).build()
    }
    override class public func fromJSON(data:NSData) throws -> Pogoprotos.Data.Battle.BattleLog {
      return try Pogoprotos.Data.Battle.BattleLog.Builder.fromJSONToBuilder(data).build()
    }
    override public func getDescription(indent:String) throws -> String {
      var output = ""
      if (hasState) {
        output += "\(indent) state: \(state.description)\n"
      }
      if (hasBattleType) {
        output += "\(indent) battleType: \(battleType.description)\n"
      }
      if hasServerMs {
        output += "\(indent) serverMs: \(serverMs) \n"
      }
      var battleActionsElementIndex:Int = 0
      for oneElementBattleActions in battleActions {
          output += "\(indent) battleActions[\(battleActionsElementIndex)] {\n"
          output += try oneElementBattleActions.getDescription("\(indent)  ")
          output += "\(indent)}\n"
          battleActionsElementIndex += 1
      }
      if hasBattleStartTimestampMs {
        output += "\(indent) battleStartTimestampMs: \(battleStartTimestampMs) \n"
      }
      if hasBattleEndTimestampMs {
        output += "\(indent) battleEndTimestampMs: \(battleEndTimestampMs) \n"
      }
      output += unknownFields.getDescription(indent)
      return output
    }
    override public var hashValue:Int {
        get {
            var hashCode:Int = 7
            if hasState {
               hashCode = (hashCode &* 31) &+ Int(state.rawValue)
            }
            if hasBattleType {
               hashCode = (hashCode &* 31) &+ Int(battleType.rawValue)
            }
            if hasServerMs {
               hashCode = (hashCode &* 31) &+ serverMs.hashValue
            }
            for oneElementBattleActions in battleActions {
                hashCode = (hashCode &* 31) &+ oneElementBattleActions.hashValue
            }
            if hasBattleStartTimestampMs {
               hashCode = (hashCode &* 31) &+ battleStartTimestampMs.hashValue
            }
            if hasBattleEndTimestampMs {
               hashCode = (hashCode &* 31) &+ battleEndTimestampMs.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "Pogoprotos.Data.Battle.BattleLog"
    }
    override public func className() -> String {
        return "Pogoprotos.Data.Battle.BattleLog"
    }
    override public func classMetaType() -> GeneratedMessage.Type {
        return Pogoprotos.Data.Battle.BattleLog.self
    }
    //Meta information declaration end

    final public class Builder : GeneratedMessageBuilder {
      private var builderResult:Pogoprotos.Data.Battle.BattleLog = Pogoprotos.Data.Battle.BattleLog()
      public func getMessage() -> Pogoprotos.Data.Battle.BattleLog {
          return builderResult
      }

      required override public init () {
         super.init()
      }
        public var hasState:Bool{
            get {
                return builderResult.hasState
            }
        }
        public var state:Pogoprotos.Data.Battle.BattleState {
            get {
                return builderResult.state
            }
            set (value) {
                builderResult.hasState = true
                builderResult.state = value
            }
        }
        public func setState(value:Pogoprotos.Data.Battle.BattleState) -> Pogoprotos.Data.Battle.BattleLog.Builder {
          self.state = value
          return self
        }
        public func clearState() -> Pogoprotos.Data.Battle.BattleLog.Builder {
           builderResult.hasState = false
           builderResult.state = .StateUnset
           return self
        }
        public var hasBattleType:Bool{
            get {
                return builderResult.hasBattleType
            }
        }
        public var battleType:Pogoprotos.Data.Battle.BattleType {
            get {
                return builderResult.battleType
            }
            set (value) {
                builderResult.hasBattleType = true
                builderResult.battleType = value
            }
        }
        public func setBattleType(value:Pogoprotos.Data.Battle.BattleType) -> Pogoprotos.Data.Battle.BattleLog.Builder {
          self.battleType = value
          return self
        }
        public func clearBattleType() -> Pogoprotos.Data.Battle.BattleLog.Builder {
           builderResult.hasBattleType = false
           builderResult.battleType = .BattleTypeUnset
           return self
        }
      public var hasServerMs:Bool {
           get {
                return builderResult.hasServerMs
           }
      }
      public var serverMs:Int64 {
           get {
                return builderResult.serverMs
           }
           set (value) {
               builderResult.hasServerMs = true
               builderResult.serverMs = value
           }
      }
      public func setServerMs(value:Int64) -> Pogoprotos.Data.Battle.BattleLog.Builder {
        self.serverMs = value
        return self
      }
      public func clearServerMs() -> Pogoprotos.Data.Battle.BattleLog.Builder{
           builderResult.hasServerMs = false
           builderResult.serverMs = Int64(0)
           return self
      }
      public var battleActions:Array<Pogoprotos.Data.Battle.BattleAction> {
           get {
               return builderResult.battleActions
           }
           set (value) {
               builderResult.battleActions = value
           }
      }
      public func setBattleActions(value:Array<Pogoprotos.Data.Battle.BattleAction>) -> Pogoprotos.Data.Battle.BattleLog.Builder {
        self.battleActions = value
        return self
      }
      public func clearBattleActions() -> Pogoprotos.Data.Battle.BattleLog.Builder {
        builderResult.battleActions.removeAll(keepCapacity: false)
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
      public func setBattleStartTimestampMs(value:Int64) -> Pogoprotos.Data.Battle.BattleLog.Builder {
        self.battleStartTimestampMs = value
        return self
      }
      public func clearBattleStartTimestampMs() -> Pogoprotos.Data.Battle.BattleLog.Builder{
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
      public func setBattleEndTimestampMs(value:Int64) -> Pogoprotos.Data.Battle.BattleLog.Builder {
        self.battleEndTimestampMs = value
        return self
      }
      public func clearBattleEndTimestampMs() -> Pogoprotos.Data.Battle.BattleLog.Builder{
           builderResult.hasBattleEndTimestampMs = false
           builderResult.battleEndTimestampMs = Int64(0)
           return self
      }
      override public var internalGetResult:GeneratedMessage {
           get {
              return builderResult
           }
      }
      override public func clear() -> Pogoprotos.Data.Battle.BattleLog.Builder {
        builderResult = Pogoprotos.Data.Battle.BattleLog()
        return self
      }
      override public func clone() throws -> Pogoprotos.Data.Battle.BattleLog.Builder {
        return try Pogoprotos.Data.Battle.BattleLog.builderWithPrototype(builderResult)
      }
      override public func build() throws -> Pogoprotos.Data.Battle.BattleLog {
           try checkInitialized()
           return buildPartial()
      }
      public func buildPartial() -> Pogoprotos.Data.Battle.BattleLog {
        let returnMe:Pogoprotos.Data.Battle.BattleLog = builderResult
        return returnMe
      }
      public func mergeFrom(other:Pogoprotos.Data.Battle.BattleLog) throws -> Pogoprotos.Data.Battle.BattleLog.Builder {
        if other == Pogoprotos.Data.Battle.BattleLog() {
         return self
        }
        if other.hasState {
             state = other.state
        }
        if other.hasBattleType {
             battleType = other.battleType
        }
        if other.hasServerMs {
             serverMs = other.serverMs
        }
        if !other.battleActions.isEmpty  {
           builderResult.battleActions += other.battleActions
        }
        if other.hasBattleStartTimestampMs {
             battleStartTimestampMs = other.battleStartTimestampMs
        }
        if other.hasBattleEndTimestampMs {
             battleEndTimestampMs = other.battleEndTimestampMs
        }
        try mergeUnknownFields(other.unknownFields)
        return self
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Data.Battle.BattleLog.Builder {
           return try mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Data.Battle.BattleLog.Builder {
        let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
        while (true) {
          let protobufTag = try input.readTag()
          switch protobufTag {
          case 0: 
            self.unknownFields = try unknownFieldsBuilder.build()
            return self

          case 8:
            let valueIntstate = try input.readEnum()
            if let enumsstate = Pogoprotos.Data.Battle.BattleState(rawValue:valueIntstate){
                 state = enumsstate
            } else {
                 try unknownFieldsBuilder.mergeVarintField(1, value:Int64(valueIntstate))
            }

          case 16:
            let valueIntbattleType = try input.readEnum()
            if let enumsbattleType = Pogoprotos.Data.Battle.BattleType(rawValue:valueIntbattleType){
                 battleType = enumsbattleType
            } else {
                 try unknownFieldsBuilder.mergeVarintField(2, value:Int64(valueIntbattleType))
            }

          case 24:
            serverMs = try input.readInt64()

          case 34:
            let subBuilder = Pogoprotos.Data.Battle.BattleAction.Builder()
            try input.readMessage(subBuilder,extensionRegistry:extensionRegistry)
            battleActions += [subBuilder.buildPartial()]

          case 40:
            battleStartTimestampMs = try input.readInt64()

          case 48:
            battleEndTimestampMs = try input.readInt64()

          default:
            if (!(try parseUnknownField(input,unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
               unknownFields = try unknownFieldsBuilder.build()
               return self
            }
          }
        }
      }
      override class public func decodeToBuilder(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Data.Battle.BattleLog.Builder {
        let resultDecodedBuilder = Pogoprotos.Data.Battle.BattleLog.Builder()
        if let jsonValueState = jsonMap["state"] as? String {
          resultDecodedBuilder.state = try Pogoprotos.Data.Battle.BattleState.fromString(jsonValueState)
        }
        if let jsonValueBattleType = jsonMap["battleType"] as? String {
          resultDecodedBuilder.battleType = try Pogoprotos.Data.Battle.BattleType.fromString(jsonValueBattleType)
        }
        if let jsonValueServerMs = jsonMap["serverMs"] as? String {
          resultDecodedBuilder.serverMs = Int64(jsonValueServerMs)!
        }
        if let jsonValueBattleActions = jsonMap["battleActions"] as? Array<Dictionary<String,AnyObject>> {
          var jsonArrayBattleActions:Array<Pogoprotos.Data.Battle.BattleAction> = []
          for oneValueBattleActions in jsonValueBattleActions {
            let messageFromStringBattleActions = try Pogoprotos.Data.Battle.BattleAction.Builder.decodeToBuilder(oneValueBattleActions).build()

            jsonArrayBattleActions += [messageFromStringBattleActions]
          }
          resultDecodedBuilder.battleActions = jsonArrayBattleActions
        }
        if let jsonValueBattleStartTimestampMs = jsonMap["battleStartTimestampMs"] as? String {
          resultDecodedBuilder.battleStartTimestampMs = Int64(jsonValueBattleStartTimestampMs)!
        }
        if let jsonValueBattleEndTimestampMs = jsonMap["battleEndTimestampMs"] as? String {
          resultDecodedBuilder.battleEndTimestampMs = Int64(jsonValueBattleEndTimestampMs)!
        }
        return resultDecodedBuilder
      }
      override class public func fromJSONToBuilder(data:NSData) throws -> Pogoprotos.Data.Battle.BattleLog.Builder {
        let jsonData = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions(rawValue: 0))
        guard let jsDataCast = jsonData as? Dictionary<String,AnyObject> else {
          throw ProtocolBuffersError.InvalidProtocolBuffer("Invalid JSON data")
        }
        return try Pogoprotos.Data.Battle.BattleLog.Builder.decodeToBuilder(jsDataCast)
      }
    }

  }

}

// @@protoc_insertion_point(global_scope)
