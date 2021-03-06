// Generated by the Protocol Buffers 3.0 compiler.  DO NOT EDIT!
// Source file "StatsAttributes.proto"
// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct Pogoprotos { public struct Settings { public struct Master { public struct Pokemon { }}}}

public func == (lhs: Pogoprotos.Settings.Master.Pokemon.StatsAttributes, rhs: Pogoprotos.Settings.Master.Pokemon.StatsAttributes) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasBaseStamina == rhs.hasBaseStamina) && (!lhs.hasBaseStamina || lhs.baseStamina == rhs.baseStamina)
  fieldCheck = fieldCheck && (lhs.hasBaseAttack == rhs.hasBaseAttack) && (!lhs.hasBaseAttack || lhs.baseAttack == rhs.baseAttack)
  fieldCheck = fieldCheck && (lhs.hasBaseDefense == rhs.hasBaseDefense) && (!lhs.hasBaseDefense || lhs.baseDefense == rhs.baseDefense)
  fieldCheck = fieldCheck && (lhs.hasDodgeEnergyDelta == rhs.hasDodgeEnergyDelta) && (!lhs.hasDodgeEnergyDelta || lhs.dodgeEnergyDelta == rhs.dodgeEnergyDelta)
  fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
  return fieldCheck
}

public extension Pogoprotos.Settings.Master.Pokemon {
  public struct StatsAttributesRoot {
    public static var sharedInstance : StatsAttributesRoot {
     struct Static {
         static let instance : StatsAttributesRoot = StatsAttributesRoot()
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

  final public class StatsAttributes : GeneratedMessage, GeneratedMessageProtocol {
    public private(set) var hasBaseStamina:Bool = false
    public private(set) var baseStamina:Int32 = Int32(0)

    public private(set) var hasBaseAttack:Bool = false
    public private(set) var baseAttack:Int32 = Int32(0)

    public private(set) var hasBaseDefense:Bool = false
    public private(set) var baseDefense:Int32 = Int32(0)

    public private(set) var hasDodgeEnergyDelta:Bool = false
    public private(set) var dodgeEnergyDelta:Int32 = Int32(0)

    required public init() {
         super.init()
    }
    override public func isInitialized() -> Bool {
     return true
    }
    override public func writeToCodedOutputStream(output:CodedOutputStream) throws {
      if hasBaseStamina {
        try output.writeInt32(1, value:baseStamina)
      }
      if hasBaseAttack {
        try output.writeInt32(2, value:baseAttack)
      }
      if hasBaseDefense {
        try output.writeInt32(3, value:baseDefense)
      }
      if hasDodgeEnergyDelta {
        try output.writeInt32(8, value:dodgeEnergyDelta)
      }
      try unknownFields.writeToCodedOutputStream(output)
    }
    override public func serializedSize() -> Int32 {
      var serialize_size:Int32 = memoizedSerializedSize
      if serialize_size != -1 {
       return serialize_size
      }

      serialize_size = 0
      if hasBaseStamina {
        serialize_size += baseStamina.computeInt32Size(1)
      }
      if hasBaseAttack {
        serialize_size += baseAttack.computeInt32Size(2)
      }
      if hasBaseDefense {
        serialize_size += baseDefense.computeInt32Size(3)
      }
      if hasDodgeEnergyDelta {
        serialize_size += dodgeEnergyDelta.computeInt32Size(8)
      }
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    public class func parseArrayDelimitedFromInputStream(input:NSInputStream) throws -> Array<Pogoprotos.Settings.Master.Pokemon.StatsAttributes> {
      var mergedArray = Array<Pogoprotos.Settings.Master.Pokemon.StatsAttributes>()
      while let value = try parseFromDelimitedFromInputStream(input) {
        mergedArray += [value]
      }
      return mergedArray
    }
    public class func parseFromDelimitedFromInputStream(input:NSInputStream) throws -> Pogoprotos.Settings.Master.Pokemon.StatsAttributes? {
      return try Pogoprotos.Settings.Master.Pokemon.StatsAttributes.Builder().mergeDelimitedFromInputStream(input)?.build()
    }
    public class func parseFromData(data:NSData) throws -> Pogoprotos.Settings.Master.Pokemon.StatsAttributes {
      return try Pogoprotos.Settings.Master.Pokemon.StatsAttributes.Builder().mergeFromData(data, extensionRegistry:Pogoprotos.Settings.Master.Pokemon.StatsAttributesRoot.sharedInstance.extensionRegistry).build()
    }
    public class func parseFromData(data:NSData, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Settings.Master.Pokemon.StatsAttributes {
      return try Pogoprotos.Settings.Master.Pokemon.StatsAttributes.Builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromInputStream(input:NSInputStream) throws -> Pogoprotos.Settings.Master.Pokemon.StatsAttributes {
      return try Pogoprotos.Settings.Master.Pokemon.StatsAttributes.Builder().mergeFromInputStream(input).build()
    }
    public class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Settings.Master.Pokemon.StatsAttributes {
      return try Pogoprotos.Settings.Master.Pokemon.StatsAttributes.Builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Settings.Master.Pokemon.StatsAttributes {
      return try Pogoprotos.Settings.Master.Pokemon.StatsAttributes.Builder().mergeFromCodedInputStream(input).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Settings.Master.Pokemon.StatsAttributes {
      return try Pogoprotos.Settings.Master.Pokemon.StatsAttributes.Builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func getBuilder() -> Pogoprotos.Settings.Master.Pokemon.StatsAttributes.Builder {
      return Pogoprotos.Settings.Master.Pokemon.StatsAttributes.classBuilder() as! Pogoprotos.Settings.Master.Pokemon.StatsAttributes.Builder
    }
    public func getBuilder() -> Pogoprotos.Settings.Master.Pokemon.StatsAttributes.Builder {
      return classBuilder() as! Pogoprotos.Settings.Master.Pokemon.StatsAttributes.Builder
    }
    override public class func classBuilder() -> MessageBuilder {
      return Pogoprotos.Settings.Master.Pokemon.StatsAttributes.Builder()
    }
    override public func classBuilder() -> MessageBuilder {
      return Pogoprotos.Settings.Master.Pokemon.StatsAttributes.Builder()
    }
    public func toBuilder() throws -> Pogoprotos.Settings.Master.Pokemon.StatsAttributes.Builder {
      return try Pogoprotos.Settings.Master.Pokemon.StatsAttributes.builderWithPrototype(self)
    }
    public class func builderWithPrototype(prototype:Pogoprotos.Settings.Master.Pokemon.StatsAttributes) throws -> Pogoprotos.Settings.Master.Pokemon.StatsAttributes.Builder {
      return try Pogoprotos.Settings.Master.Pokemon.StatsAttributes.Builder().mergeFrom(prototype)
    }
    override public func encode() throws -> Dictionary<String,AnyObject> {
      guard isInitialized() else {
        throw ProtocolBuffersError.InvalidProtocolBuffer("Uninitialized Message")
      }

      var jsonMap:Dictionary<String,AnyObject> = Dictionary<String,AnyObject>()
      if hasBaseStamina {
        jsonMap["baseStamina"] = NSNumber(int:baseStamina)
      }
      if hasBaseAttack {
        jsonMap["baseAttack"] = NSNumber(int:baseAttack)
      }
      if hasBaseDefense {
        jsonMap["baseDefense"] = NSNumber(int:baseDefense)
      }
      if hasDodgeEnergyDelta {
        jsonMap["dodgeEnergyDelta"] = NSNumber(int:dodgeEnergyDelta)
      }
      return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Settings.Master.Pokemon.StatsAttributes {
      return try Pogoprotos.Settings.Master.Pokemon.StatsAttributes.Builder.decodeToBuilder(jsonMap).build()
    }
    override class public func fromJSON(data:NSData) throws -> Pogoprotos.Settings.Master.Pokemon.StatsAttributes {
      return try Pogoprotos.Settings.Master.Pokemon.StatsAttributes.Builder.fromJSONToBuilder(data).build()
    }
    override public func getDescription(indent:String) throws -> String {
      var output = ""
      if hasBaseStamina {
        output += "\(indent) baseStamina: \(baseStamina) \n"
      }
      if hasBaseAttack {
        output += "\(indent) baseAttack: \(baseAttack) \n"
      }
      if hasBaseDefense {
        output += "\(indent) baseDefense: \(baseDefense) \n"
      }
      if hasDodgeEnergyDelta {
        output += "\(indent) dodgeEnergyDelta: \(dodgeEnergyDelta) \n"
      }
      output += unknownFields.getDescription(indent)
      return output
    }
    override public var hashValue:Int {
        get {
            var hashCode:Int = 7
            if hasBaseStamina {
               hashCode = (hashCode &* 31) &+ baseStamina.hashValue
            }
            if hasBaseAttack {
               hashCode = (hashCode &* 31) &+ baseAttack.hashValue
            }
            if hasBaseDefense {
               hashCode = (hashCode &* 31) &+ baseDefense.hashValue
            }
            if hasDodgeEnergyDelta {
               hashCode = (hashCode &* 31) &+ dodgeEnergyDelta.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "Pogoprotos.Settings.Master.Pokemon.StatsAttributes"
    }
    override public func className() -> String {
        return "Pogoprotos.Settings.Master.Pokemon.StatsAttributes"
    }
    override public func classMetaType() -> GeneratedMessage.Type {
        return Pogoprotos.Settings.Master.Pokemon.StatsAttributes.self
    }
    //Meta information declaration end

    final public class Builder : GeneratedMessageBuilder {
      private var builderResult:Pogoprotos.Settings.Master.Pokemon.StatsAttributes = Pogoprotos.Settings.Master.Pokemon.StatsAttributes()
      public func getMessage() -> Pogoprotos.Settings.Master.Pokemon.StatsAttributes {
          return builderResult
      }

      required override public init () {
         super.init()
      }
      public var hasBaseStamina:Bool {
           get {
                return builderResult.hasBaseStamina
           }
      }
      public var baseStamina:Int32 {
           get {
                return builderResult.baseStamina
           }
           set (value) {
               builderResult.hasBaseStamina = true
               builderResult.baseStamina = value
           }
      }
      public func setBaseStamina(value:Int32) -> Pogoprotos.Settings.Master.Pokemon.StatsAttributes.Builder {
        self.baseStamina = value
        return self
      }
      public func clearBaseStamina() -> Pogoprotos.Settings.Master.Pokemon.StatsAttributes.Builder{
           builderResult.hasBaseStamina = false
           builderResult.baseStamina = Int32(0)
           return self
      }
      public var hasBaseAttack:Bool {
           get {
                return builderResult.hasBaseAttack
           }
      }
      public var baseAttack:Int32 {
           get {
                return builderResult.baseAttack
           }
           set (value) {
               builderResult.hasBaseAttack = true
               builderResult.baseAttack = value
           }
      }
      public func setBaseAttack(value:Int32) -> Pogoprotos.Settings.Master.Pokemon.StatsAttributes.Builder {
        self.baseAttack = value
        return self
      }
      public func clearBaseAttack() -> Pogoprotos.Settings.Master.Pokemon.StatsAttributes.Builder{
           builderResult.hasBaseAttack = false
           builderResult.baseAttack = Int32(0)
           return self
      }
      public var hasBaseDefense:Bool {
           get {
                return builderResult.hasBaseDefense
           }
      }
      public var baseDefense:Int32 {
           get {
                return builderResult.baseDefense
           }
           set (value) {
               builderResult.hasBaseDefense = true
               builderResult.baseDefense = value
           }
      }
      public func setBaseDefense(value:Int32) -> Pogoprotos.Settings.Master.Pokemon.StatsAttributes.Builder {
        self.baseDefense = value
        return self
      }
      public func clearBaseDefense() -> Pogoprotos.Settings.Master.Pokemon.StatsAttributes.Builder{
           builderResult.hasBaseDefense = false
           builderResult.baseDefense = Int32(0)
           return self
      }
      public var hasDodgeEnergyDelta:Bool {
           get {
                return builderResult.hasDodgeEnergyDelta
           }
      }
      public var dodgeEnergyDelta:Int32 {
           get {
                return builderResult.dodgeEnergyDelta
           }
           set (value) {
               builderResult.hasDodgeEnergyDelta = true
               builderResult.dodgeEnergyDelta = value
           }
      }
      public func setDodgeEnergyDelta(value:Int32) -> Pogoprotos.Settings.Master.Pokemon.StatsAttributes.Builder {
        self.dodgeEnergyDelta = value
        return self
      }
      public func clearDodgeEnergyDelta() -> Pogoprotos.Settings.Master.Pokemon.StatsAttributes.Builder{
           builderResult.hasDodgeEnergyDelta = false
           builderResult.dodgeEnergyDelta = Int32(0)
           return self
      }
      override public var internalGetResult:GeneratedMessage {
           get {
              return builderResult
           }
      }
      override public func clear() -> Pogoprotos.Settings.Master.Pokemon.StatsAttributes.Builder {
        builderResult = Pogoprotos.Settings.Master.Pokemon.StatsAttributes()
        return self
      }
      override public func clone() throws -> Pogoprotos.Settings.Master.Pokemon.StatsAttributes.Builder {
        return try Pogoprotos.Settings.Master.Pokemon.StatsAttributes.builderWithPrototype(builderResult)
      }
      override public func build() throws -> Pogoprotos.Settings.Master.Pokemon.StatsAttributes {
           try checkInitialized()
           return buildPartial()
      }
      public func buildPartial() -> Pogoprotos.Settings.Master.Pokemon.StatsAttributes {
        let returnMe:Pogoprotos.Settings.Master.Pokemon.StatsAttributes = builderResult
        return returnMe
      }
      public func mergeFrom(other:Pogoprotos.Settings.Master.Pokemon.StatsAttributes) throws -> Pogoprotos.Settings.Master.Pokemon.StatsAttributes.Builder {
        if other == Pogoprotos.Settings.Master.Pokemon.StatsAttributes() {
         return self
        }
        if other.hasBaseStamina {
             baseStamina = other.baseStamina
        }
        if other.hasBaseAttack {
             baseAttack = other.baseAttack
        }
        if other.hasBaseDefense {
             baseDefense = other.baseDefense
        }
        if other.hasDodgeEnergyDelta {
             dodgeEnergyDelta = other.dodgeEnergyDelta
        }
        try mergeUnknownFields(other.unknownFields)
        return self
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Settings.Master.Pokemon.StatsAttributes.Builder {
           return try mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Settings.Master.Pokemon.StatsAttributes.Builder {
        let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
        while (true) {
          let protobufTag = try input.readTag()
          switch protobufTag {
          case 0: 
            self.unknownFields = try unknownFieldsBuilder.build()
            return self

          case 8:
            baseStamina = try input.readInt32()

          case 16:
            baseAttack = try input.readInt32()

          case 24:
            baseDefense = try input.readInt32()

          case 64:
            dodgeEnergyDelta = try input.readInt32()

          default:
            if (!(try parseUnknownField(input,unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
               unknownFields = try unknownFieldsBuilder.build()
               return self
            }
          }
        }
      }
      override class public func decodeToBuilder(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Settings.Master.Pokemon.StatsAttributes.Builder {
        let resultDecodedBuilder = Pogoprotos.Settings.Master.Pokemon.StatsAttributes.Builder()
        if let jsonValueBaseStamina = jsonMap["baseStamina"] as? NSNumber {
          resultDecodedBuilder.baseStamina = jsonValueBaseStamina.intValue
        }
        if let jsonValueBaseAttack = jsonMap["baseAttack"] as? NSNumber {
          resultDecodedBuilder.baseAttack = jsonValueBaseAttack.intValue
        }
        if let jsonValueBaseDefense = jsonMap["baseDefense"] as? NSNumber {
          resultDecodedBuilder.baseDefense = jsonValueBaseDefense.intValue
        }
        if let jsonValueDodgeEnergyDelta = jsonMap["dodgeEnergyDelta"] as? NSNumber {
          resultDecodedBuilder.dodgeEnergyDelta = jsonValueDodgeEnergyDelta.intValue
        }
        return resultDecodedBuilder
      }
      override class public func fromJSONToBuilder(data:NSData) throws -> Pogoprotos.Settings.Master.Pokemon.StatsAttributes.Builder {
        let jsonData = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions(rawValue: 0))
        guard let jsDataCast = jsonData as? Dictionary<String,AnyObject> else {
          throw ProtocolBuffersError.InvalidProtocolBuffer("Invalid JSON data")
        }
        return try Pogoprotos.Settings.Master.Pokemon.StatsAttributes.Builder.decodeToBuilder(jsDataCast)
      }
    }

  }

}

// @@protoc_insertion_point(global_scope)
