// Generated by the Protocol Buffers 3.0 compiler.  DO NOT EDIT!
// Source file "IapSettings.proto"
// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct Pogoprotos { public struct Settings { public struct Master { }}}

public func == (lhs: Pogoprotos.Settings.Master.IapSettings, rhs: Pogoprotos.Settings.Master.IapSettings) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasDailyBonusCoins == rhs.hasDailyBonusCoins) && (!lhs.hasDailyBonusCoins || lhs.dailyBonusCoins == rhs.dailyBonusCoins)
  fieldCheck = fieldCheck && (lhs.dailyDefenderBonusPerPokemon == rhs.dailyDefenderBonusPerPokemon)
  fieldCheck = fieldCheck && (lhs.hasDailyDefenderBonusMaxDefenders == rhs.hasDailyDefenderBonusMaxDefenders) && (!lhs.hasDailyDefenderBonusMaxDefenders || lhs.dailyDefenderBonusMaxDefenders == rhs.dailyDefenderBonusMaxDefenders)
  fieldCheck = fieldCheck && (lhs.dailyDefenderBonusCurrency == rhs.dailyDefenderBonusCurrency)
  fieldCheck = fieldCheck && (lhs.hasMinTimeBetweenClaimsMs == rhs.hasMinTimeBetweenClaimsMs) && (!lhs.hasMinTimeBetweenClaimsMs || lhs.minTimeBetweenClaimsMs == rhs.minTimeBetweenClaimsMs)
  fieldCheck = fieldCheck && (lhs.hasDailyBonusEnabled == rhs.hasDailyBonusEnabled) && (!lhs.hasDailyBonusEnabled || lhs.dailyBonusEnabled == rhs.dailyBonusEnabled)
  fieldCheck = fieldCheck && (lhs.hasDailyDefenderBonusEnabled == rhs.hasDailyDefenderBonusEnabled) && (!lhs.hasDailyDefenderBonusEnabled || lhs.dailyDefenderBonusEnabled == rhs.dailyDefenderBonusEnabled)
  fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
  return fieldCheck
}

public extension Pogoprotos.Settings.Master {
  public struct IapSettingsRoot {
    public static var sharedInstance : IapSettingsRoot {
     struct Static {
         static let instance : IapSettingsRoot = IapSettingsRoot()
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

  final public class IapSettings : GeneratedMessage, GeneratedMessageProtocol {
    public private(set) var hasDailyBonusCoins:Bool = false
    public private(set) var dailyBonusCoins:Int32 = Int32(0)

    public private(set) var dailyDefenderBonusPerPokemon:Array<Int32> = Array<Int32>()
    private var dailyDefenderBonusPerPokemonMemoizedSerializedSize:Int32 = -1
    public private(set) var hasDailyDefenderBonusMaxDefenders:Bool = false
    public private(set) var dailyDefenderBonusMaxDefenders:Int32 = Int32(0)

    public private(set) var dailyDefenderBonusCurrency:Array<String> = Array<String>()
    public private(set) var hasMinTimeBetweenClaimsMs:Bool = false
    public private(set) var minTimeBetweenClaimsMs:Int64 = Int64(0)

    public private(set) var hasDailyBonusEnabled:Bool = false
    public private(set) var dailyBonusEnabled:Bool = false

    public private(set) var hasDailyDefenderBonusEnabled:Bool = false
    public private(set) var dailyDefenderBonusEnabled:Bool = false

    required public init() {
         super.init()
    }
    override public func isInitialized() -> Bool {
     return true
    }
    override public func writeToCodedOutputStream(output:CodedOutputStream) throws {
      if hasDailyBonusCoins {
        try output.writeInt32(1, value:dailyBonusCoins)
      }
      if !dailyDefenderBonusPerPokemon.isEmpty {
        try output.writeRawVarint32(18)
        try output.writeRawVarint32(dailyDefenderBonusPerPokemonMemoizedSerializedSize)
        for oneValuedailyDefenderBonusPerPokemon in dailyDefenderBonusPerPokemon {
          try output.writeInt32NoTag(oneValuedailyDefenderBonusPerPokemon)
        }
      }
      if hasDailyDefenderBonusMaxDefenders {
        try output.writeInt32(3, value:dailyDefenderBonusMaxDefenders)
      }
      if !dailyDefenderBonusCurrency.isEmpty {
        for oneValuedailyDefenderBonusCurrency in dailyDefenderBonusCurrency {
          try output.writeString(4, value:oneValuedailyDefenderBonusCurrency)
        }
      }
      if hasMinTimeBetweenClaimsMs {
        try output.writeInt64(5, value:minTimeBetweenClaimsMs)
      }
      if hasDailyBonusEnabled {
        try output.writeBool(6, value:dailyBonusEnabled)
      }
      if hasDailyDefenderBonusEnabled {
        try output.writeBool(7, value:dailyDefenderBonusEnabled)
      }
      try unknownFields.writeToCodedOutputStream(output)
    }
    override public func serializedSize() -> Int32 {
      var serialize_size:Int32 = memoizedSerializedSize
      if serialize_size != -1 {
       return serialize_size
      }

      serialize_size = 0
      if hasDailyBonusCoins {
        serialize_size += dailyBonusCoins.computeInt32Size(1)
      }
      var dataSizeDailyDefenderBonusPerPokemon:Int32 = 0
      for oneValuedailyDefenderBonusPerPokemon in dailyDefenderBonusPerPokemon {
          dataSizeDailyDefenderBonusPerPokemon += oneValuedailyDefenderBonusPerPokemon.computeInt32SizeNoTag()
      }
      serialize_size += dataSizeDailyDefenderBonusPerPokemon
      if !dailyDefenderBonusPerPokemon.isEmpty {
        serialize_size += 1
        serialize_size += dataSizeDailyDefenderBonusPerPokemon.computeInt32SizeNoTag()
      }
      dailyDefenderBonusPerPokemonMemoizedSerializedSize = dataSizeDailyDefenderBonusPerPokemon
      if hasDailyDefenderBonusMaxDefenders {
        serialize_size += dailyDefenderBonusMaxDefenders.computeInt32Size(3)
      }
      var dataSizeDailyDefenderBonusCurrency:Int32 = 0
      for oneValuedailyDefenderBonusCurrency in dailyDefenderBonusCurrency {
          dataSizeDailyDefenderBonusCurrency += oneValuedailyDefenderBonusCurrency.computeStringSizeNoTag()
      }
      serialize_size += dataSizeDailyDefenderBonusCurrency
      serialize_size += 1 * Int32(dailyDefenderBonusCurrency.count)
      if hasMinTimeBetweenClaimsMs {
        serialize_size += minTimeBetweenClaimsMs.computeInt64Size(5)
      }
      if hasDailyBonusEnabled {
        serialize_size += dailyBonusEnabled.computeBoolSize(6)
      }
      if hasDailyDefenderBonusEnabled {
        serialize_size += dailyDefenderBonusEnabled.computeBoolSize(7)
      }
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    public class func parseArrayDelimitedFromInputStream(input:NSInputStream) throws -> Array<Pogoprotos.Settings.Master.IapSettings> {
      var mergedArray = Array<Pogoprotos.Settings.Master.IapSettings>()
      while let value = try parseFromDelimitedFromInputStream(input) {
        mergedArray += [value]
      }
      return mergedArray
    }
    public class func parseFromDelimitedFromInputStream(input:NSInputStream) throws -> Pogoprotos.Settings.Master.IapSettings? {
      return try Pogoprotos.Settings.Master.IapSettings.Builder().mergeDelimitedFromInputStream(input)?.build()
    }
    public class func parseFromData(data:NSData) throws -> Pogoprotos.Settings.Master.IapSettings {
      return try Pogoprotos.Settings.Master.IapSettings.Builder().mergeFromData(data, extensionRegistry:Pogoprotos.Settings.Master.IapSettingsRoot.sharedInstance.extensionRegistry).build()
    }
    public class func parseFromData(data:NSData, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Settings.Master.IapSettings {
      return try Pogoprotos.Settings.Master.IapSettings.Builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromInputStream(input:NSInputStream) throws -> Pogoprotos.Settings.Master.IapSettings {
      return try Pogoprotos.Settings.Master.IapSettings.Builder().mergeFromInputStream(input).build()
    }
    public class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Settings.Master.IapSettings {
      return try Pogoprotos.Settings.Master.IapSettings.Builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Settings.Master.IapSettings {
      return try Pogoprotos.Settings.Master.IapSettings.Builder().mergeFromCodedInputStream(input).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Settings.Master.IapSettings {
      return try Pogoprotos.Settings.Master.IapSettings.Builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func getBuilder() -> Pogoprotos.Settings.Master.IapSettings.Builder {
      return Pogoprotos.Settings.Master.IapSettings.classBuilder() as! Pogoprotos.Settings.Master.IapSettings.Builder
    }
    public func getBuilder() -> Pogoprotos.Settings.Master.IapSettings.Builder {
      return classBuilder() as! Pogoprotos.Settings.Master.IapSettings.Builder
    }
    override public class func classBuilder() -> MessageBuilder {
      return Pogoprotos.Settings.Master.IapSettings.Builder()
    }
    override public func classBuilder() -> MessageBuilder {
      return Pogoprotos.Settings.Master.IapSettings.Builder()
    }
    public func toBuilder() throws -> Pogoprotos.Settings.Master.IapSettings.Builder {
      return try Pogoprotos.Settings.Master.IapSettings.builderWithPrototype(self)
    }
    public class func builderWithPrototype(prototype:Pogoprotos.Settings.Master.IapSettings) throws -> Pogoprotos.Settings.Master.IapSettings.Builder {
      return try Pogoprotos.Settings.Master.IapSettings.Builder().mergeFrom(prototype)
    }
    override public func encode() throws -> Dictionary<String,AnyObject> {
      guard isInitialized() else {
        throw ProtocolBuffersError.InvalidProtocolBuffer("Uninitialized Message")
      }

      var jsonMap:Dictionary<String,AnyObject> = Dictionary<String,AnyObject>()
      if hasDailyBonusCoins {
        jsonMap["dailyBonusCoins"] = NSNumber(int:dailyBonusCoins)
      }
      if !dailyDefenderBonusPerPokemon.isEmpty {
        var jsonArrayDailyDefenderBonusPerPokemon:Array<NSNumber> = []
          for oneValueDailyDefenderBonusPerPokemon in dailyDefenderBonusPerPokemon {
            jsonArrayDailyDefenderBonusPerPokemon += [NSNumber(int:oneValueDailyDefenderBonusPerPokemon)]
          }
        jsonMap["dailyDefenderBonusPerPokemon"] = jsonArrayDailyDefenderBonusPerPokemon
      }
      if hasDailyDefenderBonusMaxDefenders {
        jsonMap["dailyDefenderBonusMaxDefenders"] = NSNumber(int:dailyDefenderBonusMaxDefenders)
      }
      if !dailyDefenderBonusCurrency.isEmpty {
        jsonMap["dailyDefenderBonusCurrency"] = dailyDefenderBonusCurrency
      }
      if hasMinTimeBetweenClaimsMs {
        jsonMap["minTimeBetweenClaimsMs"] = "\(minTimeBetweenClaimsMs)"
      }
      if hasDailyBonusEnabled {
        jsonMap["dailyBonusEnabled"] = dailyBonusEnabled
      }
      if hasDailyDefenderBonusEnabled {
        jsonMap["dailyDefenderBonusEnabled"] = dailyDefenderBonusEnabled
      }
      return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Settings.Master.IapSettings {
      return try Pogoprotos.Settings.Master.IapSettings.Builder.decodeToBuilder(jsonMap).build()
    }
    override class public func fromJSON(data:NSData) throws -> Pogoprotos.Settings.Master.IapSettings {
      return try Pogoprotos.Settings.Master.IapSettings.Builder.fromJSONToBuilder(data).build()
    }
    override public func getDescription(indent:String) throws -> String {
      var output = ""
      if hasDailyBonusCoins {
        output += "\(indent) dailyBonusCoins: \(dailyBonusCoins) \n"
      }
      var dailyDefenderBonusPerPokemonElementIndex:Int = 0
      for oneValueDailyDefenderBonusPerPokemon in dailyDefenderBonusPerPokemon  {
          output += "\(indent) dailyDefenderBonusPerPokemon[\(dailyDefenderBonusPerPokemonElementIndex)]: \(oneValueDailyDefenderBonusPerPokemon)\n"
          dailyDefenderBonusPerPokemonElementIndex += 1
      }
      if hasDailyDefenderBonusMaxDefenders {
        output += "\(indent) dailyDefenderBonusMaxDefenders: \(dailyDefenderBonusMaxDefenders) \n"
      }
      var dailyDefenderBonusCurrencyElementIndex:Int = 0
      for oneValueDailyDefenderBonusCurrency in dailyDefenderBonusCurrency  {
          output += "\(indent) dailyDefenderBonusCurrency[\(dailyDefenderBonusCurrencyElementIndex)]: \(oneValueDailyDefenderBonusCurrency)\n"
          dailyDefenderBonusCurrencyElementIndex += 1
      }
      if hasMinTimeBetweenClaimsMs {
        output += "\(indent) minTimeBetweenClaimsMs: \(minTimeBetweenClaimsMs) \n"
      }
      if hasDailyBonusEnabled {
        output += "\(indent) dailyBonusEnabled: \(dailyBonusEnabled) \n"
      }
      if hasDailyDefenderBonusEnabled {
        output += "\(indent) dailyDefenderBonusEnabled: \(dailyDefenderBonusEnabled) \n"
      }
      output += unknownFields.getDescription(indent)
      return output
    }
    override public var hashValue:Int {
        get {
            var hashCode:Int = 7
            if hasDailyBonusCoins {
               hashCode = (hashCode &* 31) &+ dailyBonusCoins.hashValue
            }
            for oneValueDailyDefenderBonusPerPokemon in dailyDefenderBonusPerPokemon {
                hashCode = (hashCode &* 31) &+ oneValueDailyDefenderBonusPerPokemon.hashValue
            }
            if hasDailyDefenderBonusMaxDefenders {
               hashCode = (hashCode &* 31) &+ dailyDefenderBonusMaxDefenders.hashValue
            }
            for oneValueDailyDefenderBonusCurrency in dailyDefenderBonusCurrency {
                hashCode = (hashCode &* 31) &+ oneValueDailyDefenderBonusCurrency.hashValue
            }
            if hasMinTimeBetweenClaimsMs {
               hashCode = (hashCode &* 31) &+ minTimeBetweenClaimsMs.hashValue
            }
            if hasDailyBonusEnabled {
               hashCode = (hashCode &* 31) &+ dailyBonusEnabled.hashValue
            }
            if hasDailyDefenderBonusEnabled {
               hashCode = (hashCode &* 31) &+ dailyDefenderBonusEnabled.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "Pogoprotos.Settings.Master.IapSettings"
    }
    override public func className() -> String {
        return "Pogoprotos.Settings.Master.IapSettings"
    }
    override public func classMetaType() -> GeneratedMessage.Type {
        return Pogoprotos.Settings.Master.IapSettings.self
    }
    //Meta information declaration end

    final public class Builder : GeneratedMessageBuilder {
      private var builderResult:Pogoprotos.Settings.Master.IapSettings = Pogoprotos.Settings.Master.IapSettings()
      public func getMessage() -> Pogoprotos.Settings.Master.IapSettings {
          return builderResult
      }

      required override public init () {
         super.init()
      }
      public var hasDailyBonusCoins:Bool {
           get {
                return builderResult.hasDailyBonusCoins
           }
      }
      public var dailyBonusCoins:Int32 {
           get {
                return builderResult.dailyBonusCoins
           }
           set (value) {
               builderResult.hasDailyBonusCoins = true
               builderResult.dailyBonusCoins = value
           }
      }
      public func setDailyBonusCoins(value:Int32) -> Pogoprotos.Settings.Master.IapSettings.Builder {
        self.dailyBonusCoins = value
        return self
      }
      public func clearDailyBonusCoins() -> Pogoprotos.Settings.Master.IapSettings.Builder{
           builderResult.hasDailyBonusCoins = false
           builderResult.dailyBonusCoins = Int32(0)
           return self
      }
      public var dailyDefenderBonusPerPokemon:Array<Int32> {
           get {
               return builderResult.dailyDefenderBonusPerPokemon
           }
           set (array) {
               builderResult.dailyDefenderBonusPerPokemon = array
           }
      }
      public func setDailyDefenderBonusPerPokemon(value:Array<Int32>) -> Pogoprotos.Settings.Master.IapSettings.Builder {
        self.dailyDefenderBonusPerPokemon = value
        return self
      }
      public func clearDailyDefenderBonusPerPokemon() -> Pogoprotos.Settings.Master.IapSettings.Builder {
         builderResult.dailyDefenderBonusPerPokemon.removeAll(keepCapacity: false)
         return self
      }
      public var hasDailyDefenderBonusMaxDefenders:Bool {
           get {
                return builderResult.hasDailyDefenderBonusMaxDefenders
           }
      }
      public var dailyDefenderBonusMaxDefenders:Int32 {
           get {
                return builderResult.dailyDefenderBonusMaxDefenders
           }
           set (value) {
               builderResult.hasDailyDefenderBonusMaxDefenders = true
               builderResult.dailyDefenderBonusMaxDefenders = value
           }
      }
      public func setDailyDefenderBonusMaxDefenders(value:Int32) -> Pogoprotos.Settings.Master.IapSettings.Builder {
        self.dailyDefenderBonusMaxDefenders = value
        return self
      }
      public func clearDailyDefenderBonusMaxDefenders() -> Pogoprotos.Settings.Master.IapSettings.Builder{
           builderResult.hasDailyDefenderBonusMaxDefenders = false
           builderResult.dailyDefenderBonusMaxDefenders = Int32(0)
           return self
      }
      public var dailyDefenderBonusCurrency:Array<String> {
           get {
               return builderResult.dailyDefenderBonusCurrency
           }
           set (array) {
               builderResult.dailyDefenderBonusCurrency = array
           }
      }
      public func setDailyDefenderBonusCurrency(value:Array<String>) -> Pogoprotos.Settings.Master.IapSettings.Builder {
        self.dailyDefenderBonusCurrency = value
        return self
      }
      public func clearDailyDefenderBonusCurrency() -> Pogoprotos.Settings.Master.IapSettings.Builder {
         builderResult.dailyDefenderBonusCurrency.removeAll(keepCapacity: false)
         return self
      }
      public var hasMinTimeBetweenClaimsMs:Bool {
           get {
                return builderResult.hasMinTimeBetweenClaimsMs
           }
      }
      public var minTimeBetweenClaimsMs:Int64 {
           get {
                return builderResult.minTimeBetweenClaimsMs
           }
           set (value) {
               builderResult.hasMinTimeBetweenClaimsMs = true
               builderResult.minTimeBetweenClaimsMs = value
           }
      }
      public func setMinTimeBetweenClaimsMs(value:Int64) -> Pogoprotos.Settings.Master.IapSettings.Builder {
        self.minTimeBetweenClaimsMs = value
        return self
      }
      public func clearMinTimeBetweenClaimsMs() -> Pogoprotos.Settings.Master.IapSettings.Builder{
           builderResult.hasMinTimeBetweenClaimsMs = false
           builderResult.minTimeBetweenClaimsMs = Int64(0)
           return self
      }
      public var hasDailyBonusEnabled:Bool {
           get {
                return builderResult.hasDailyBonusEnabled
           }
      }
      public var dailyBonusEnabled:Bool {
           get {
                return builderResult.dailyBonusEnabled
           }
           set (value) {
               builderResult.hasDailyBonusEnabled = true
               builderResult.dailyBonusEnabled = value
           }
      }
      public func setDailyBonusEnabled(value:Bool) -> Pogoprotos.Settings.Master.IapSettings.Builder {
        self.dailyBonusEnabled = value
        return self
      }
      public func clearDailyBonusEnabled() -> Pogoprotos.Settings.Master.IapSettings.Builder{
           builderResult.hasDailyBonusEnabled = false
           builderResult.dailyBonusEnabled = false
           return self
      }
      public var hasDailyDefenderBonusEnabled:Bool {
           get {
                return builderResult.hasDailyDefenderBonusEnabled
           }
      }
      public var dailyDefenderBonusEnabled:Bool {
           get {
                return builderResult.dailyDefenderBonusEnabled
           }
           set (value) {
               builderResult.hasDailyDefenderBonusEnabled = true
               builderResult.dailyDefenderBonusEnabled = value
           }
      }
      public func setDailyDefenderBonusEnabled(value:Bool) -> Pogoprotos.Settings.Master.IapSettings.Builder {
        self.dailyDefenderBonusEnabled = value
        return self
      }
      public func clearDailyDefenderBonusEnabled() -> Pogoprotos.Settings.Master.IapSettings.Builder{
           builderResult.hasDailyDefenderBonusEnabled = false
           builderResult.dailyDefenderBonusEnabled = false
           return self
      }
      override public var internalGetResult:GeneratedMessage {
           get {
              return builderResult
           }
      }
      override public func clear() -> Pogoprotos.Settings.Master.IapSettings.Builder {
        builderResult = Pogoprotos.Settings.Master.IapSettings()
        return self
      }
      override public func clone() throws -> Pogoprotos.Settings.Master.IapSettings.Builder {
        return try Pogoprotos.Settings.Master.IapSettings.builderWithPrototype(builderResult)
      }
      override public func build() throws -> Pogoprotos.Settings.Master.IapSettings {
           try checkInitialized()
           return buildPartial()
      }
      public func buildPartial() -> Pogoprotos.Settings.Master.IapSettings {
        let returnMe:Pogoprotos.Settings.Master.IapSettings = builderResult
        return returnMe
      }
      public func mergeFrom(other:Pogoprotos.Settings.Master.IapSettings) throws -> Pogoprotos.Settings.Master.IapSettings.Builder {
        if other == Pogoprotos.Settings.Master.IapSettings() {
         return self
        }
        if other.hasDailyBonusCoins {
             dailyBonusCoins = other.dailyBonusCoins
        }
        if !other.dailyDefenderBonusPerPokemon.isEmpty {
            builderResult.dailyDefenderBonusPerPokemon += other.dailyDefenderBonusPerPokemon
        }
        if other.hasDailyDefenderBonusMaxDefenders {
             dailyDefenderBonusMaxDefenders = other.dailyDefenderBonusMaxDefenders
        }
        if !other.dailyDefenderBonusCurrency.isEmpty {
            builderResult.dailyDefenderBonusCurrency += other.dailyDefenderBonusCurrency
        }
        if other.hasMinTimeBetweenClaimsMs {
             minTimeBetweenClaimsMs = other.minTimeBetweenClaimsMs
        }
        if other.hasDailyBonusEnabled {
             dailyBonusEnabled = other.dailyBonusEnabled
        }
        if other.hasDailyDefenderBonusEnabled {
             dailyDefenderBonusEnabled = other.dailyDefenderBonusEnabled
        }
        try mergeUnknownFields(other.unknownFields)
        return self
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Settings.Master.IapSettings.Builder {
           return try mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Settings.Master.IapSettings.Builder {
        let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
        while (true) {
          let protobufTag = try input.readTag()
          switch protobufTag {
          case 0: 
            self.unknownFields = try unknownFieldsBuilder.build()
            return self

          case 8:
            dailyBonusCoins = try input.readInt32()

          case 18:
            let length:Int32 = try input.readRawVarint32()
            let limit:Int32 = try input.pushLimit(length)
            while (input.bytesUntilLimit() > 0) {
              builderResult.dailyDefenderBonusPerPokemon += [try input.readInt32()]
            }
            input.popLimit(limit)

          case 24:
            dailyDefenderBonusMaxDefenders = try input.readInt32()

          case 34:
            dailyDefenderBonusCurrency += [try input.readString()]

          case 40:
            minTimeBetweenClaimsMs = try input.readInt64()

          case 48:
            dailyBonusEnabled = try input.readBool()

          case 56:
            dailyDefenderBonusEnabled = try input.readBool()

          default:
            if (!(try parseUnknownField(input,unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
               unknownFields = try unknownFieldsBuilder.build()
               return self
            }
          }
        }
      }
      override class public func decodeToBuilder(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Settings.Master.IapSettings.Builder {
        let resultDecodedBuilder = Pogoprotos.Settings.Master.IapSettings.Builder()
        if let jsonValueDailyBonusCoins = jsonMap["dailyBonusCoins"] as? NSNumber {
          resultDecodedBuilder.dailyBonusCoins = jsonValueDailyBonusCoins.intValue
        }
        if let jsonValueDailyDefenderBonusPerPokemon = jsonMap["dailyDefenderBonusPerPokemon"] as? Array<NSNumber> {
          var jsonArrayDailyDefenderBonusPerPokemon:Array<Int32> = []
          for oneValueDailyDefenderBonusPerPokemon in jsonValueDailyDefenderBonusPerPokemon {
            jsonArrayDailyDefenderBonusPerPokemon += [oneValueDailyDefenderBonusPerPokemon.intValue]
          }
          resultDecodedBuilder.dailyDefenderBonusPerPokemon = jsonArrayDailyDefenderBonusPerPokemon
        }
        if let jsonValueDailyDefenderBonusMaxDefenders = jsonMap["dailyDefenderBonusMaxDefenders"] as? NSNumber {
          resultDecodedBuilder.dailyDefenderBonusMaxDefenders = jsonValueDailyDefenderBonusMaxDefenders.intValue
        }
        if let jsonValueDailyDefenderBonusCurrency = jsonMap["dailyDefenderBonusCurrency"] as? Array<String> {
          resultDecodedBuilder.dailyDefenderBonusCurrency = jsonValueDailyDefenderBonusCurrency
        }
        if let jsonValueMinTimeBetweenClaimsMs = jsonMap["minTimeBetweenClaimsMs"] as? String {
          resultDecodedBuilder.minTimeBetweenClaimsMs = Int64(jsonValueMinTimeBetweenClaimsMs)!
        }
        if let jsonValueDailyBonusEnabled = jsonMap["dailyBonusEnabled"] as? Bool {
          resultDecodedBuilder.dailyBonusEnabled = jsonValueDailyBonusEnabled
        }
        if let jsonValueDailyDefenderBonusEnabled = jsonMap["dailyDefenderBonusEnabled"] as? Bool {
          resultDecodedBuilder.dailyDefenderBonusEnabled = jsonValueDailyDefenderBonusEnabled
        }
        return resultDecodedBuilder
      }
      override class public func fromJSONToBuilder(data:NSData) throws -> Pogoprotos.Settings.Master.IapSettings.Builder {
        let jsonData = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions(rawValue: 0))
        guard let jsDataCast = jsonData as? Dictionary<String,AnyObject> else {
          throw ProtocolBuffersError.InvalidProtocolBuffer("Invalid JSON data")
        }
        return try Pogoprotos.Settings.Master.IapSettings.Builder.decodeToBuilder(jsDataCast)
      }
    }

  }

}

// @@protoc_insertion_point(global_scope)