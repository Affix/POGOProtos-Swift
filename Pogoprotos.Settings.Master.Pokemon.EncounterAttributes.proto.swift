// Generated by the Protocol Buffers 3.0 compiler.  DO NOT EDIT!
// Source file "EncounterAttributes.proto"
// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct Pogoprotos { public struct Settings { public struct Master { public struct Pokemon { }}}}

public func == (lhs: Pogoprotos.Settings.Master.Pokemon.EncounterAttributes, rhs: Pogoprotos.Settings.Master.Pokemon.EncounterAttributes) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasBaseCaptureRate == rhs.hasBaseCaptureRate) && (!lhs.hasBaseCaptureRate || lhs.baseCaptureRate == rhs.baseCaptureRate)
  fieldCheck = fieldCheck && (lhs.hasBaseFleeRate == rhs.hasBaseFleeRate) && (!lhs.hasBaseFleeRate || lhs.baseFleeRate == rhs.baseFleeRate)
  fieldCheck = fieldCheck && (lhs.hasCollisionRadiusM == rhs.hasCollisionRadiusM) && (!lhs.hasCollisionRadiusM || lhs.collisionRadiusM == rhs.collisionRadiusM)
  fieldCheck = fieldCheck && (lhs.hasCollisionHeightM == rhs.hasCollisionHeightM) && (!lhs.hasCollisionHeightM || lhs.collisionHeightM == rhs.collisionHeightM)
  fieldCheck = fieldCheck && (lhs.hasCollisionHeadRadiusM == rhs.hasCollisionHeadRadiusM) && (!lhs.hasCollisionHeadRadiusM || lhs.collisionHeadRadiusM == rhs.collisionHeadRadiusM)
  fieldCheck = fieldCheck && (lhs.hasMovementType == rhs.hasMovementType) && (!lhs.hasMovementType || lhs.movementType == rhs.movementType)
  fieldCheck = fieldCheck && (lhs.hasMovementTimerS == rhs.hasMovementTimerS) && (!lhs.hasMovementTimerS || lhs.movementTimerS == rhs.movementTimerS)
  fieldCheck = fieldCheck && (lhs.hasJumpTimeS == rhs.hasJumpTimeS) && (!lhs.hasJumpTimeS || lhs.jumpTimeS == rhs.jumpTimeS)
  fieldCheck = fieldCheck && (lhs.hasAttackTimerS == rhs.hasAttackTimerS) && (!lhs.hasAttackTimerS || lhs.attackTimerS == rhs.attackTimerS)
  fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
  return fieldCheck
}

public extension Pogoprotos.Settings.Master.Pokemon {
  public struct EncounterAttributesRoot {
    public static var sharedInstance : EncounterAttributesRoot {
     struct Static {
         static let instance : EncounterAttributesRoot = EncounterAttributesRoot()
     }
     return Static.instance
    }
    public var extensionRegistry:ExtensionRegistry

    init() {
      extensionRegistry = ExtensionRegistry()
      registerAllExtensions(extensionRegistry)
      Pogoprotos.Enums.PokemonMovementTypeRoot.sharedInstance.registerAllExtensions(extensionRegistry)
    }
    public func registerAllExtensions(registry:ExtensionRegistry) {
    }
  }

  final public class EncounterAttributes : GeneratedMessage, GeneratedMessageProtocol {
    public private(set) var hasBaseCaptureRate:Bool = false
    public private(set) var baseCaptureRate:Float = Float(0)

    public private(set) var hasBaseFleeRate:Bool = false
    public private(set) var baseFleeRate:Float = Float(0)

    public private(set) var hasCollisionRadiusM:Bool = false
    public private(set) var collisionRadiusM:Float = Float(0)

    public private(set) var hasCollisionHeightM:Bool = false
    public private(set) var collisionHeightM:Float = Float(0)

    public private(set) var hasCollisionHeadRadiusM:Bool = false
    public private(set) var collisionHeadRadiusM:Float = Float(0)

    public private(set) var movementType:Pogoprotos.Enums.PokemonMovementType = Pogoprotos.Enums.PokemonMovementType.MovementStatic
    public private(set) var hasMovementType:Bool = false
    public private(set) var hasMovementTimerS:Bool = false
    public private(set) var movementTimerS:Float = Float(0)

    public private(set) var hasJumpTimeS:Bool = false
    public private(set) var jumpTimeS:Float = Float(0)

    public private(set) var hasAttackTimerS:Bool = false
    public private(set) var attackTimerS:Float = Float(0)

    required public init() {
         super.init()
    }
    override public func isInitialized() -> Bool {
     return true
    }
    override public func writeToCodedOutputStream(output:CodedOutputStream) throws {
      if hasBaseCaptureRate {
        try output.writeFloat(1, value:baseCaptureRate)
      }
      if hasBaseFleeRate {
        try output.writeFloat(2, value:baseFleeRate)
      }
      if hasCollisionRadiusM {
        try output.writeFloat(3, value:collisionRadiusM)
      }
      if hasCollisionHeightM {
        try output.writeFloat(4, value:collisionHeightM)
      }
      if hasCollisionHeadRadiusM {
        try output.writeFloat(5, value:collisionHeadRadiusM)
      }
      if hasMovementType {
        try output.writeEnum(6, value:movementType.rawValue)
      }
      if hasMovementTimerS {
        try output.writeFloat(7, value:movementTimerS)
      }
      if hasJumpTimeS {
        try output.writeFloat(8, value:jumpTimeS)
      }
      if hasAttackTimerS {
        try output.writeFloat(9, value:attackTimerS)
      }
      try unknownFields.writeToCodedOutputStream(output)
    }
    override public func serializedSize() -> Int32 {
      var serialize_size:Int32 = memoizedSerializedSize
      if serialize_size != -1 {
       return serialize_size
      }

      serialize_size = 0
      if hasBaseCaptureRate {
        serialize_size += baseCaptureRate.computeFloatSize(1)
      }
      if hasBaseFleeRate {
        serialize_size += baseFleeRate.computeFloatSize(2)
      }
      if hasCollisionRadiusM {
        serialize_size += collisionRadiusM.computeFloatSize(3)
      }
      if hasCollisionHeightM {
        serialize_size += collisionHeightM.computeFloatSize(4)
      }
      if hasCollisionHeadRadiusM {
        serialize_size += collisionHeadRadiusM.computeFloatSize(5)
      }
      if (hasMovementType) {
        serialize_size += movementType.rawValue.computeEnumSize(6)
      }
      if hasMovementTimerS {
        serialize_size += movementTimerS.computeFloatSize(7)
      }
      if hasJumpTimeS {
        serialize_size += jumpTimeS.computeFloatSize(8)
      }
      if hasAttackTimerS {
        serialize_size += attackTimerS.computeFloatSize(9)
      }
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    public class func parseArrayDelimitedFromInputStream(input:NSInputStream) throws -> Array<Pogoprotos.Settings.Master.Pokemon.EncounterAttributes> {
      var mergedArray = Array<Pogoprotos.Settings.Master.Pokemon.EncounterAttributes>()
      while let value = try parseFromDelimitedFromInputStream(input) {
        mergedArray += [value]
      }
      return mergedArray
    }
    public class func parseFromDelimitedFromInputStream(input:NSInputStream) throws -> Pogoprotos.Settings.Master.Pokemon.EncounterAttributes? {
      return try Pogoprotos.Settings.Master.Pokemon.EncounterAttributes.Builder().mergeDelimitedFromInputStream(input)?.build()
    }
    public class func parseFromData(data:NSData) throws -> Pogoprotos.Settings.Master.Pokemon.EncounterAttributes {
      return try Pogoprotos.Settings.Master.Pokemon.EncounterAttributes.Builder().mergeFromData(data, extensionRegistry:Pogoprotos.Settings.Master.Pokemon.EncounterAttributesRoot.sharedInstance.extensionRegistry).build()
    }
    public class func parseFromData(data:NSData, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Settings.Master.Pokemon.EncounterAttributes {
      return try Pogoprotos.Settings.Master.Pokemon.EncounterAttributes.Builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromInputStream(input:NSInputStream) throws -> Pogoprotos.Settings.Master.Pokemon.EncounterAttributes {
      return try Pogoprotos.Settings.Master.Pokemon.EncounterAttributes.Builder().mergeFromInputStream(input).build()
    }
    public class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Settings.Master.Pokemon.EncounterAttributes {
      return try Pogoprotos.Settings.Master.Pokemon.EncounterAttributes.Builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Settings.Master.Pokemon.EncounterAttributes {
      return try Pogoprotos.Settings.Master.Pokemon.EncounterAttributes.Builder().mergeFromCodedInputStream(input).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Settings.Master.Pokemon.EncounterAttributes {
      return try Pogoprotos.Settings.Master.Pokemon.EncounterAttributes.Builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func getBuilder() -> Pogoprotos.Settings.Master.Pokemon.EncounterAttributes.Builder {
      return Pogoprotos.Settings.Master.Pokemon.EncounterAttributes.classBuilder() as! Pogoprotos.Settings.Master.Pokemon.EncounterAttributes.Builder
    }
    public func getBuilder() -> Pogoprotos.Settings.Master.Pokemon.EncounterAttributes.Builder {
      return classBuilder() as! Pogoprotos.Settings.Master.Pokemon.EncounterAttributes.Builder
    }
    override public class func classBuilder() -> MessageBuilder {
      return Pogoprotos.Settings.Master.Pokemon.EncounterAttributes.Builder()
    }
    override public func classBuilder() -> MessageBuilder {
      return Pogoprotos.Settings.Master.Pokemon.EncounterAttributes.Builder()
    }
    public func toBuilder() throws -> Pogoprotos.Settings.Master.Pokemon.EncounterAttributes.Builder {
      return try Pogoprotos.Settings.Master.Pokemon.EncounterAttributes.builderWithPrototype(self)
    }
    public class func builderWithPrototype(prototype:Pogoprotos.Settings.Master.Pokemon.EncounterAttributes) throws -> Pogoprotos.Settings.Master.Pokemon.EncounterAttributes.Builder {
      return try Pogoprotos.Settings.Master.Pokemon.EncounterAttributes.Builder().mergeFrom(prototype)
    }
    override public func encode() throws -> Dictionary<String,AnyObject> {
      guard isInitialized() else {
        throw ProtocolBuffersError.InvalidProtocolBuffer("Uninitialized Message")
      }

      var jsonMap:Dictionary<String,AnyObject> = Dictionary<String,AnyObject>()
      if hasBaseCaptureRate {
        jsonMap["baseCaptureRate"] = NSNumber(float:baseCaptureRate)
      }
      if hasBaseFleeRate {
        jsonMap["baseFleeRate"] = NSNumber(float:baseFleeRate)
      }
      if hasCollisionRadiusM {
        jsonMap["collisionRadiusM"] = NSNumber(float:collisionRadiusM)
      }
      if hasCollisionHeightM {
        jsonMap["collisionHeightM"] = NSNumber(float:collisionHeightM)
      }
      if hasCollisionHeadRadiusM {
        jsonMap["collisionHeadRadiusM"] = NSNumber(float:collisionHeadRadiusM)
      }
      if hasMovementType {
        jsonMap["movementType"] = movementType.toString()
      }
      if hasMovementTimerS {
        jsonMap["movementTimerS"] = NSNumber(float:movementTimerS)
      }
      if hasJumpTimeS {
        jsonMap["jumpTimeS"] = NSNumber(float:jumpTimeS)
      }
      if hasAttackTimerS {
        jsonMap["attackTimerS"] = NSNumber(float:attackTimerS)
      }
      return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Settings.Master.Pokemon.EncounterAttributes {
      return try Pogoprotos.Settings.Master.Pokemon.EncounterAttributes.Builder.decodeToBuilder(jsonMap).build()
    }
    override class public func fromJSON(data:NSData) throws -> Pogoprotos.Settings.Master.Pokemon.EncounterAttributes {
      return try Pogoprotos.Settings.Master.Pokemon.EncounterAttributes.Builder.fromJSONToBuilder(data).build()
    }
    override public func getDescription(indent:String) throws -> String {
      var output = ""
      if hasBaseCaptureRate {
        output += "\(indent) baseCaptureRate: \(baseCaptureRate) \n"
      }
      if hasBaseFleeRate {
        output += "\(indent) baseFleeRate: \(baseFleeRate) \n"
      }
      if hasCollisionRadiusM {
        output += "\(indent) collisionRadiusM: \(collisionRadiusM) \n"
      }
      if hasCollisionHeightM {
        output += "\(indent) collisionHeightM: \(collisionHeightM) \n"
      }
      if hasCollisionHeadRadiusM {
        output += "\(indent) collisionHeadRadiusM: \(collisionHeadRadiusM) \n"
      }
      if (hasMovementType) {
        output += "\(indent) movementType: \(movementType.description)\n"
      }
      if hasMovementTimerS {
        output += "\(indent) movementTimerS: \(movementTimerS) \n"
      }
      if hasJumpTimeS {
        output += "\(indent) jumpTimeS: \(jumpTimeS) \n"
      }
      if hasAttackTimerS {
        output += "\(indent) attackTimerS: \(attackTimerS) \n"
      }
      output += unknownFields.getDescription(indent)
      return output
    }
    override public var hashValue:Int {
        get {
            var hashCode:Int = 7
            if hasBaseCaptureRate {
               hashCode = (hashCode &* 31) &+ baseCaptureRate.hashValue
            }
            if hasBaseFleeRate {
               hashCode = (hashCode &* 31) &+ baseFleeRate.hashValue
            }
            if hasCollisionRadiusM {
               hashCode = (hashCode &* 31) &+ collisionRadiusM.hashValue
            }
            if hasCollisionHeightM {
               hashCode = (hashCode &* 31) &+ collisionHeightM.hashValue
            }
            if hasCollisionHeadRadiusM {
               hashCode = (hashCode &* 31) &+ collisionHeadRadiusM.hashValue
            }
            if hasMovementType {
               hashCode = (hashCode &* 31) &+ Int(movementType.rawValue)
            }
            if hasMovementTimerS {
               hashCode = (hashCode &* 31) &+ movementTimerS.hashValue
            }
            if hasJumpTimeS {
               hashCode = (hashCode &* 31) &+ jumpTimeS.hashValue
            }
            if hasAttackTimerS {
               hashCode = (hashCode &* 31) &+ attackTimerS.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "Pogoprotos.Settings.Master.Pokemon.EncounterAttributes"
    }
    override public func className() -> String {
        return "Pogoprotos.Settings.Master.Pokemon.EncounterAttributes"
    }
    override public func classMetaType() -> GeneratedMessage.Type {
        return Pogoprotos.Settings.Master.Pokemon.EncounterAttributes.self
    }
    //Meta information declaration end

    final public class Builder : GeneratedMessageBuilder {
      private var builderResult:Pogoprotos.Settings.Master.Pokemon.EncounterAttributes = Pogoprotos.Settings.Master.Pokemon.EncounterAttributes()
      public func getMessage() -> Pogoprotos.Settings.Master.Pokemon.EncounterAttributes {
          return builderResult
      }

      required override public init () {
         super.init()
      }
      public var hasBaseCaptureRate:Bool {
           get {
                return builderResult.hasBaseCaptureRate
           }
      }
      public var baseCaptureRate:Float {
           get {
                return builderResult.baseCaptureRate
           }
           set (value) {
               builderResult.hasBaseCaptureRate = true
               builderResult.baseCaptureRate = value
           }
      }
      public func setBaseCaptureRate(value:Float) -> Pogoprotos.Settings.Master.Pokemon.EncounterAttributes.Builder {
        self.baseCaptureRate = value
        return self
      }
      public func clearBaseCaptureRate() -> Pogoprotos.Settings.Master.Pokemon.EncounterAttributes.Builder{
           builderResult.hasBaseCaptureRate = false
           builderResult.baseCaptureRate = Float(0)
           return self
      }
      public var hasBaseFleeRate:Bool {
           get {
                return builderResult.hasBaseFleeRate
           }
      }
      public var baseFleeRate:Float {
           get {
                return builderResult.baseFleeRate
           }
           set (value) {
               builderResult.hasBaseFleeRate = true
               builderResult.baseFleeRate = value
           }
      }
      public func setBaseFleeRate(value:Float) -> Pogoprotos.Settings.Master.Pokemon.EncounterAttributes.Builder {
        self.baseFleeRate = value
        return self
      }
      public func clearBaseFleeRate() -> Pogoprotos.Settings.Master.Pokemon.EncounterAttributes.Builder{
           builderResult.hasBaseFleeRate = false
           builderResult.baseFleeRate = Float(0)
           return self
      }
      public var hasCollisionRadiusM:Bool {
           get {
                return builderResult.hasCollisionRadiusM
           }
      }
      public var collisionRadiusM:Float {
           get {
                return builderResult.collisionRadiusM
           }
           set (value) {
               builderResult.hasCollisionRadiusM = true
               builderResult.collisionRadiusM = value
           }
      }
      public func setCollisionRadiusM(value:Float) -> Pogoprotos.Settings.Master.Pokemon.EncounterAttributes.Builder {
        self.collisionRadiusM = value
        return self
      }
      public func clearCollisionRadiusM() -> Pogoprotos.Settings.Master.Pokemon.EncounterAttributes.Builder{
           builderResult.hasCollisionRadiusM = false
           builderResult.collisionRadiusM = Float(0)
           return self
      }
      public var hasCollisionHeightM:Bool {
           get {
                return builderResult.hasCollisionHeightM
           }
      }
      public var collisionHeightM:Float {
           get {
                return builderResult.collisionHeightM
           }
           set (value) {
               builderResult.hasCollisionHeightM = true
               builderResult.collisionHeightM = value
           }
      }
      public func setCollisionHeightM(value:Float) -> Pogoprotos.Settings.Master.Pokemon.EncounterAttributes.Builder {
        self.collisionHeightM = value
        return self
      }
      public func clearCollisionHeightM() -> Pogoprotos.Settings.Master.Pokemon.EncounterAttributes.Builder{
           builderResult.hasCollisionHeightM = false
           builderResult.collisionHeightM = Float(0)
           return self
      }
      public var hasCollisionHeadRadiusM:Bool {
           get {
                return builderResult.hasCollisionHeadRadiusM
           }
      }
      public var collisionHeadRadiusM:Float {
           get {
                return builderResult.collisionHeadRadiusM
           }
           set (value) {
               builderResult.hasCollisionHeadRadiusM = true
               builderResult.collisionHeadRadiusM = value
           }
      }
      public func setCollisionHeadRadiusM(value:Float) -> Pogoprotos.Settings.Master.Pokemon.EncounterAttributes.Builder {
        self.collisionHeadRadiusM = value
        return self
      }
      public func clearCollisionHeadRadiusM() -> Pogoprotos.Settings.Master.Pokemon.EncounterAttributes.Builder{
           builderResult.hasCollisionHeadRadiusM = false
           builderResult.collisionHeadRadiusM = Float(0)
           return self
      }
        public var hasMovementType:Bool{
            get {
                return builderResult.hasMovementType
            }
        }
        public var movementType:Pogoprotos.Enums.PokemonMovementType {
            get {
                return builderResult.movementType
            }
            set (value) {
                builderResult.hasMovementType = true
                builderResult.movementType = value
            }
        }
        public func setMovementType(value:Pogoprotos.Enums.PokemonMovementType) -> Pogoprotos.Settings.Master.Pokemon.EncounterAttributes.Builder {
          self.movementType = value
          return self
        }
        public func clearMovementType() -> Pogoprotos.Settings.Master.Pokemon.EncounterAttributes.Builder {
           builderResult.hasMovementType = false
           builderResult.movementType = .MovementStatic
           return self
        }
      public var hasMovementTimerS:Bool {
           get {
                return builderResult.hasMovementTimerS
           }
      }
      public var movementTimerS:Float {
           get {
                return builderResult.movementTimerS
           }
           set (value) {
               builderResult.hasMovementTimerS = true
               builderResult.movementTimerS = value
           }
      }
      public func setMovementTimerS(value:Float) -> Pogoprotos.Settings.Master.Pokemon.EncounterAttributes.Builder {
        self.movementTimerS = value
        return self
      }
      public func clearMovementTimerS() -> Pogoprotos.Settings.Master.Pokemon.EncounterAttributes.Builder{
           builderResult.hasMovementTimerS = false
           builderResult.movementTimerS = Float(0)
           return self
      }
      public var hasJumpTimeS:Bool {
           get {
                return builderResult.hasJumpTimeS
           }
      }
      public var jumpTimeS:Float {
           get {
                return builderResult.jumpTimeS
           }
           set (value) {
               builderResult.hasJumpTimeS = true
               builderResult.jumpTimeS = value
           }
      }
      public func setJumpTimeS(value:Float) -> Pogoprotos.Settings.Master.Pokemon.EncounterAttributes.Builder {
        self.jumpTimeS = value
        return self
      }
      public func clearJumpTimeS() -> Pogoprotos.Settings.Master.Pokemon.EncounterAttributes.Builder{
           builderResult.hasJumpTimeS = false
           builderResult.jumpTimeS = Float(0)
           return self
      }
      public var hasAttackTimerS:Bool {
           get {
                return builderResult.hasAttackTimerS
           }
      }
      public var attackTimerS:Float {
           get {
                return builderResult.attackTimerS
           }
           set (value) {
               builderResult.hasAttackTimerS = true
               builderResult.attackTimerS = value
           }
      }
      public func setAttackTimerS(value:Float) -> Pogoprotos.Settings.Master.Pokemon.EncounterAttributes.Builder {
        self.attackTimerS = value
        return self
      }
      public func clearAttackTimerS() -> Pogoprotos.Settings.Master.Pokemon.EncounterAttributes.Builder{
           builderResult.hasAttackTimerS = false
           builderResult.attackTimerS = Float(0)
           return self
      }
      override public var internalGetResult:GeneratedMessage {
           get {
              return builderResult
           }
      }
      override public func clear() -> Pogoprotos.Settings.Master.Pokemon.EncounterAttributes.Builder {
        builderResult = Pogoprotos.Settings.Master.Pokemon.EncounterAttributes()
        return self
      }
      override public func clone() throws -> Pogoprotos.Settings.Master.Pokemon.EncounterAttributes.Builder {
        return try Pogoprotos.Settings.Master.Pokemon.EncounterAttributes.builderWithPrototype(builderResult)
      }
      override public func build() throws -> Pogoprotos.Settings.Master.Pokemon.EncounterAttributes {
           try checkInitialized()
           return buildPartial()
      }
      public func buildPartial() -> Pogoprotos.Settings.Master.Pokemon.EncounterAttributes {
        let returnMe:Pogoprotos.Settings.Master.Pokemon.EncounterAttributes = builderResult
        return returnMe
      }
      public func mergeFrom(other:Pogoprotos.Settings.Master.Pokemon.EncounterAttributes) throws -> Pogoprotos.Settings.Master.Pokemon.EncounterAttributes.Builder {
        if other == Pogoprotos.Settings.Master.Pokemon.EncounterAttributes() {
         return self
        }
        if other.hasBaseCaptureRate {
             baseCaptureRate = other.baseCaptureRate
        }
        if other.hasBaseFleeRate {
             baseFleeRate = other.baseFleeRate
        }
        if other.hasCollisionRadiusM {
             collisionRadiusM = other.collisionRadiusM
        }
        if other.hasCollisionHeightM {
             collisionHeightM = other.collisionHeightM
        }
        if other.hasCollisionHeadRadiusM {
             collisionHeadRadiusM = other.collisionHeadRadiusM
        }
        if other.hasMovementType {
             movementType = other.movementType
        }
        if other.hasMovementTimerS {
             movementTimerS = other.movementTimerS
        }
        if other.hasJumpTimeS {
             jumpTimeS = other.jumpTimeS
        }
        if other.hasAttackTimerS {
             attackTimerS = other.attackTimerS
        }
        try mergeUnknownFields(other.unknownFields)
        return self
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Settings.Master.Pokemon.EncounterAttributes.Builder {
           return try mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Settings.Master.Pokemon.EncounterAttributes.Builder {
        let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
        while (true) {
          let protobufTag = try input.readTag()
          switch protobufTag {
          case 0: 
            self.unknownFields = try unknownFieldsBuilder.build()
            return self

          case 13:
            baseCaptureRate = try input.readFloat()

          case 21:
            baseFleeRate = try input.readFloat()

          case 29:
            collisionRadiusM = try input.readFloat()

          case 37:
            collisionHeightM = try input.readFloat()

          case 45:
            collisionHeadRadiusM = try input.readFloat()

          case 48:
            let valueIntmovementType = try input.readEnum()
            if let enumsmovementType = Pogoprotos.Enums.PokemonMovementType(rawValue:valueIntmovementType){
                 movementType = enumsmovementType
            } else {
                 try unknownFieldsBuilder.mergeVarintField(6, value:Int64(valueIntmovementType))
            }

          case 61:
            movementTimerS = try input.readFloat()

          case 69:
            jumpTimeS = try input.readFloat()

          case 77:
            attackTimerS = try input.readFloat()

          default:
            if (!(try parseUnknownField(input,unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
               unknownFields = try unknownFieldsBuilder.build()
               return self
            }
          }
        }
      }
      override class public func decodeToBuilder(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Settings.Master.Pokemon.EncounterAttributes.Builder {
        let resultDecodedBuilder = Pogoprotos.Settings.Master.Pokemon.EncounterAttributes.Builder()
        if let jsonValueBaseCaptureRate = jsonMap["baseCaptureRate"] as? NSNumber {
          resultDecodedBuilder.baseCaptureRate = jsonValueBaseCaptureRate.floatValue
        }
        if let jsonValueBaseFleeRate = jsonMap["baseFleeRate"] as? NSNumber {
          resultDecodedBuilder.baseFleeRate = jsonValueBaseFleeRate.floatValue
        }
        if let jsonValueCollisionRadiusM = jsonMap["collisionRadiusM"] as? NSNumber {
          resultDecodedBuilder.collisionRadiusM = jsonValueCollisionRadiusM.floatValue
        }
        if let jsonValueCollisionHeightM = jsonMap["collisionHeightM"] as? NSNumber {
          resultDecodedBuilder.collisionHeightM = jsonValueCollisionHeightM.floatValue
        }
        if let jsonValueCollisionHeadRadiusM = jsonMap["collisionHeadRadiusM"] as? NSNumber {
          resultDecodedBuilder.collisionHeadRadiusM = jsonValueCollisionHeadRadiusM.floatValue
        }
        if let jsonValueMovementType = jsonMap["movementType"] as? String {
          resultDecodedBuilder.movementType = try Pogoprotos.Enums.PokemonMovementType.fromString(jsonValueMovementType)
        }
        if let jsonValueMovementTimerS = jsonMap["movementTimerS"] as? NSNumber {
          resultDecodedBuilder.movementTimerS = jsonValueMovementTimerS.floatValue
        }
        if let jsonValueJumpTimeS = jsonMap["jumpTimeS"] as? NSNumber {
          resultDecodedBuilder.jumpTimeS = jsonValueJumpTimeS.floatValue
        }
        if let jsonValueAttackTimerS = jsonMap["attackTimerS"] as? NSNumber {
          resultDecodedBuilder.attackTimerS = jsonValueAttackTimerS.floatValue
        }
        return resultDecodedBuilder
      }
      override class public func fromJSONToBuilder(data:NSData) throws -> Pogoprotos.Settings.Master.Pokemon.EncounterAttributes.Builder {
        let jsonData = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions(rawValue: 0))
        guard let jsDataCast = jsonData as? Dictionary<String,AnyObject> else {
          throw ProtocolBuffersError.InvalidProtocolBuffer("Invalid JSON data")
        }
        return try Pogoprotos.Settings.Master.Pokemon.EncounterAttributes.Builder.decodeToBuilder(jsDataCast)
      }
    }

  }

}

// @@protoc_insertion_point(global_scope)
