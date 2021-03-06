// Generated by the Protocol Buffers 3.0 compiler.  DO NOT EDIT!
// Source file "EggIncubatorAttributes.proto"
// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct Pogoprotos { public struct Settings { public struct Master { public struct Item { }}}}

public func == (lhs: Pogoprotos.Settings.Master.Item.EggIncubatorAttributes, rhs: Pogoprotos.Settings.Master.Item.EggIncubatorAttributes) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasIncubatorType == rhs.hasIncubatorType) && (!lhs.hasIncubatorType || lhs.incubatorType == rhs.incubatorType)
  fieldCheck = fieldCheck && (lhs.hasUses == rhs.hasUses) && (!lhs.hasUses || lhs.uses == rhs.uses)
  fieldCheck = fieldCheck && (lhs.hasDistanceMultiplier == rhs.hasDistanceMultiplier) && (!lhs.hasDistanceMultiplier || lhs.distanceMultiplier == rhs.distanceMultiplier)
  fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
  return fieldCheck
}

public extension Pogoprotos.Settings.Master.Item {
  public struct EggIncubatorAttributesRoot {
    public static var sharedInstance : EggIncubatorAttributesRoot {
     struct Static {
         static let instance : EggIncubatorAttributesRoot = EggIncubatorAttributesRoot()
     }
     return Static.instance
    }
    public var extensionRegistry:ExtensionRegistry

    init() {
      extensionRegistry = ExtensionRegistry()
      registerAllExtensions(extensionRegistry)
      Pogoprotos.Inventory.EggIncubatorTypeRoot.sharedInstance.registerAllExtensions(extensionRegistry)
    }
    public func registerAllExtensions(registry:ExtensionRegistry) {
    }
  }

  final public class EggIncubatorAttributes : GeneratedMessage, GeneratedMessageProtocol {
    public private(set) var incubatorType:Pogoprotos.Inventory.EggIncubatorType = Pogoprotos.Inventory.EggIncubatorType.IncubatorUnset
    public private(set) var hasIncubatorType:Bool = false
    public private(set) var hasUses:Bool = false
    public private(set) var uses:Int32 = Int32(0)

    public private(set) var hasDistanceMultiplier:Bool = false
    public private(set) var distanceMultiplier:Float = Float(0)

    required public init() {
         super.init()
    }
    override public func isInitialized() -> Bool {
     return true
    }
    override public func writeToCodedOutputStream(output:CodedOutputStream) throws {
      if hasIncubatorType {
        try output.writeEnum(1, value:incubatorType.rawValue)
      }
      if hasUses {
        try output.writeInt32(2, value:uses)
      }
      if hasDistanceMultiplier {
        try output.writeFloat(3, value:distanceMultiplier)
      }
      try unknownFields.writeToCodedOutputStream(output)
    }
    override public func serializedSize() -> Int32 {
      var serialize_size:Int32 = memoizedSerializedSize
      if serialize_size != -1 {
       return serialize_size
      }

      serialize_size = 0
      if (hasIncubatorType) {
        serialize_size += incubatorType.rawValue.computeEnumSize(1)
      }
      if hasUses {
        serialize_size += uses.computeInt32Size(2)
      }
      if hasDistanceMultiplier {
        serialize_size += distanceMultiplier.computeFloatSize(3)
      }
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    public class func parseArrayDelimitedFromInputStream(input:NSInputStream) throws -> Array<Pogoprotos.Settings.Master.Item.EggIncubatorAttributes> {
      var mergedArray = Array<Pogoprotos.Settings.Master.Item.EggIncubatorAttributes>()
      while let value = try parseFromDelimitedFromInputStream(input) {
        mergedArray += [value]
      }
      return mergedArray
    }
    public class func parseFromDelimitedFromInputStream(input:NSInputStream) throws -> Pogoprotos.Settings.Master.Item.EggIncubatorAttributes? {
      return try Pogoprotos.Settings.Master.Item.EggIncubatorAttributes.Builder().mergeDelimitedFromInputStream(input)?.build()
    }
    public class func parseFromData(data:NSData) throws -> Pogoprotos.Settings.Master.Item.EggIncubatorAttributes {
      return try Pogoprotos.Settings.Master.Item.EggIncubatorAttributes.Builder().mergeFromData(data, extensionRegistry:Pogoprotos.Settings.Master.Item.EggIncubatorAttributesRoot.sharedInstance.extensionRegistry).build()
    }
    public class func parseFromData(data:NSData, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Settings.Master.Item.EggIncubatorAttributes {
      return try Pogoprotos.Settings.Master.Item.EggIncubatorAttributes.Builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromInputStream(input:NSInputStream) throws -> Pogoprotos.Settings.Master.Item.EggIncubatorAttributes {
      return try Pogoprotos.Settings.Master.Item.EggIncubatorAttributes.Builder().mergeFromInputStream(input).build()
    }
    public class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Settings.Master.Item.EggIncubatorAttributes {
      return try Pogoprotos.Settings.Master.Item.EggIncubatorAttributes.Builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Settings.Master.Item.EggIncubatorAttributes {
      return try Pogoprotos.Settings.Master.Item.EggIncubatorAttributes.Builder().mergeFromCodedInputStream(input).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Settings.Master.Item.EggIncubatorAttributes {
      return try Pogoprotos.Settings.Master.Item.EggIncubatorAttributes.Builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func getBuilder() -> Pogoprotos.Settings.Master.Item.EggIncubatorAttributes.Builder {
      return Pogoprotos.Settings.Master.Item.EggIncubatorAttributes.classBuilder() as! Pogoprotos.Settings.Master.Item.EggIncubatorAttributes.Builder
    }
    public func getBuilder() -> Pogoprotos.Settings.Master.Item.EggIncubatorAttributes.Builder {
      return classBuilder() as! Pogoprotos.Settings.Master.Item.EggIncubatorAttributes.Builder
    }
    override public class func classBuilder() -> MessageBuilder {
      return Pogoprotos.Settings.Master.Item.EggIncubatorAttributes.Builder()
    }
    override public func classBuilder() -> MessageBuilder {
      return Pogoprotos.Settings.Master.Item.EggIncubatorAttributes.Builder()
    }
    public func toBuilder() throws -> Pogoprotos.Settings.Master.Item.EggIncubatorAttributes.Builder {
      return try Pogoprotos.Settings.Master.Item.EggIncubatorAttributes.builderWithPrototype(self)
    }
    public class func builderWithPrototype(prototype:Pogoprotos.Settings.Master.Item.EggIncubatorAttributes) throws -> Pogoprotos.Settings.Master.Item.EggIncubatorAttributes.Builder {
      return try Pogoprotos.Settings.Master.Item.EggIncubatorAttributes.Builder().mergeFrom(prototype)
    }
    override public func encode() throws -> Dictionary<String,AnyObject> {
      guard isInitialized() else {
        throw ProtocolBuffersError.InvalidProtocolBuffer("Uninitialized Message")
      }

      var jsonMap:Dictionary<String,AnyObject> = Dictionary<String,AnyObject>()
      if hasIncubatorType {
        jsonMap["incubatorType"] = incubatorType.toString()
      }
      if hasUses {
        jsonMap["uses"] = NSNumber(int:uses)
      }
      if hasDistanceMultiplier {
        jsonMap["distanceMultiplier"] = NSNumber(float:distanceMultiplier)
      }
      return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Settings.Master.Item.EggIncubatorAttributes {
      return try Pogoprotos.Settings.Master.Item.EggIncubatorAttributes.Builder.decodeToBuilder(jsonMap).build()
    }
    override class public func fromJSON(data:NSData) throws -> Pogoprotos.Settings.Master.Item.EggIncubatorAttributes {
      return try Pogoprotos.Settings.Master.Item.EggIncubatorAttributes.Builder.fromJSONToBuilder(data).build()
    }
    override public func getDescription(indent:String) throws -> String {
      var output = ""
      if (hasIncubatorType) {
        output += "\(indent) incubatorType: \(incubatorType.description)\n"
      }
      if hasUses {
        output += "\(indent) uses: \(uses) \n"
      }
      if hasDistanceMultiplier {
        output += "\(indent) distanceMultiplier: \(distanceMultiplier) \n"
      }
      output += unknownFields.getDescription(indent)
      return output
    }
    override public var hashValue:Int {
        get {
            var hashCode:Int = 7
            if hasIncubatorType {
               hashCode = (hashCode &* 31) &+ Int(incubatorType.rawValue)
            }
            if hasUses {
               hashCode = (hashCode &* 31) &+ uses.hashValue
            }
            if hasDistanceMultiplier {
               hashCode = (hashCode &* 31) &+ distanceMultiplier.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "Pogoprotos.Settings.Master.Item.EggIncubatorAttributes"
    }
    override public func className() -> String {
        return "Pogoprotos.Settings.Master.Item.EggIncubatorAttributes"
    }
    override public func classMetaType() -> GeneratedMessage.Type {
        return Pogoprotos.Settings.Master.Item.EggIncubatorAttributes.self
    }
    //Meta information declaration end

    final public class Builder : GeneratedMessageBuilder {
      private var builderResult:Pogoprotos.Settings.Master.Item.EggIncubatorAttributes = Pogoprotos.Settings.Master.Item.EggIncubatorAttributes()
      public func getMessage() -> Pogoprotos.Settings.Master.Item.EggIncubatorAttributes {
          return builderResult
      }

      required override public init () {
         super.init()
      }
        public var hasIncubatorType:Bool{
            get {
                return builderResult.hasIncubatorType
            }
        }
        public var incubatorType:Pogoprotos.Inventory.EggIncubatorType {
            get {
                return builderResult.incubatorType
            }
            set (value) {
                builderResult.hasIncubatorType = true
                builderResult.incubatorType = value
            }
        }
        public func setIncubatorType(value:Pogoprotos.Inventory.EggIncubatorType) -> Pogoprotos.Settings.Master.Item.EggIncubatorAttributes.Builder {
          self.incubatorType = value
          return self
        }
        public func clearIncubatorType() -> Pogoprotos.Settings.Master.Item.EggIncubatorAttributes.Builder {
           builderResult.hasIncubatorType = false
           builderResult.incubatorType = .IncubatorUnset
           return self
        }
      public var hasUses:Bool {
           get {
                return builderResult.hasUses
           }
      }
      public var uses:Int32 {
           get {
                return builderResult.uses
           }
           set (value) {
               builderResult.hasUses = true
               builderResult.uses = value
           }
      }
      public func setUses(value:Int32) -> Pogoprotos.Settings.Master.Item.EggIncubatorAttributes.Builder {
        self.uses = value
        return self
      }
      public func clearUses() -> Pogoprotos.Settings.Master.Item.EggIncubatorAttributes.Builder{
           builderResult.hasUses = false
           builderResult.uses = Int32(0)
           return self
      }
      public var hasDistanceMultiplier:Bool {
           get {
                return builderResult.hasDistanceMultiplier
           }
      }
      public var distanceMultiplier:Float {
           get {
                return builderResult.distanceMultiplier
           }
           set (value) {
               builderResult.hasDistanceMultiplier = true
               builderResult.distanceMultiplier = value
           }
      }
      public func setDistanceMultiplier(value:Float) -> Pogoprotos.Settings.Master.Item.EggIncubatorAttributes.Builder {
        self.distanceMultiplier = value
        return self
      }
      public func clearDistanceMultiplier() -> Pogoprotos.Settings.Master.Item.EggIncubatorAttributes.Builder{
           builderResult.hasDistanceMultiplier = false
           builderResult.distanceMultiplier = Float(0)
           return self
      }
      override public var internalGetResult:GeneratedMessage {
           get {
              return builderResult
           }
      }
      override public func clear() -> Pogoprotos.Settings.Master.Item.EggIncubatorAttributes.Builder {
        builderResult = Pogoprotos.Settings.Master.Item.EggIncubatorAttributes()
        return self
      }
      override public func clone() throws -> Pogoprotos.Settings.Master.Item.EggIncubatorAttributes.Builder {
        return try Pogoprotos.Settings.Master.Item.EggIncubatorAttributes.builderWithPrototype(builderResult)
      }
      override public func build() throws -> Pogoprotos.Settings.Master.Item.EggIncubatorAttributes {
           try checkInitialized()
           return buildPartial()
      }
      public func buildPartial() -> Pogoprotos.Settings.Master.Item.EggIncubatorAttributes {
        let returnMe:Pogoprotos.Settings.Master.Item.EggIncubatorAttributes = builderResult
        return returnMe
      }
      public func mergeFrom(other:Pogoprotos.Settings.Master.Item.EggIncubatorAttributes) throws -> Pogoprotos.Settings.Master.Item.EggIncubatorAttributes.Builder {
        if other == Pogoprotos.Settings.Master.Item.EggIncubatorAttributes() {
         return self
        }
        if other.hasIncubatorType {
             incubatorType = other.incubatorType
        }
        if other.hasUses {
             uses = other.uses
        }
        if other.hasDistanceMultiplier {
             distanceMultiplier = other.distanceMultiplier
        }
        try mergeUnknownFields(other.unknownFields)
        return self
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Settings.Master.Item.EggIncubatorAttributes.Builder {
           return try mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Settings.Master.Item.EggIncubatorAttributes.Builder {
        let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
        while (true) {
          let protobufTag = try input.readTag()
          switch protobufTag {
          case 0: 
            self.unknownFields = try unknownFieldsBuilder.build()
            return self

          case 8:
            let valueIntincubatorType = try input.readEnum()
            if let enumsincubatorType = Pogoprotos.Inventory.EggIncubatorType(rawValue:valueIntincubatorType){
                 incubatorType = enumsincubatorType
            } else {
                 try unknownFieldsBuilder.mergeVarintField(1, value:Int64(valueIntincubatorType))
            }

          case 16:
            uses = try input.readInt32()

          case 29:
            distanceMultiplier = try input.readFloat()

          default:
            if (!(try parseUnknownField(input,unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
               unknownFields = try unknownFieldsBuilder.build()
               return self
            }
          }
        }
      }
      override class public func decodeToBuilder(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Settings.Master.Item.EggIncubatorAttributes.Builder {
        let resultDecodedBuilder = Pogoprotos.Settings.Master.Item.EggIncubatorAttributes.Builder()
        if let jsonValueIncubatorType = jsonMap["incubatorType"] as? String {
          resultDecodedBuilder.incubatorType = try Pogoprotos.Inventory.EggIncubatorType.fromString(jsonValueIncubatorType)
        }
        if let jsonValueUses = jsonMap["uses"] as? NSNumber {
          resultDecodedBuilder.uses = jsonValueUses.intValue
        }
        if let jsonValueDistanceMultiplier = jsonMap["distanceMultiplier"] as? NSNumber {
          resultDecodedBuilder.distanceMultiplier = jsonValueDistanceMultiplier.floatValue
        }
        return resultDecodedBuilder
      }
      override class public func fromJSONToBuilder(data:NSData) throws -> Pogoprotos.Settings.Master.Item.EggIncubatorAttributes.Builder {
        let jsonData = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions(rawValue: 0))
        guard let jsDataCast = jsonData as? Dictionary<String,AnyObject> else {
          throw ProtocolBuffersError.InvalidProtocolBuffer("Invalid JSON data")
        }
        return try Pogoprotos.Settings.Master.Item.EggIncubatorAttributes.Builder.decodeToBuilder(jsDataCast)
      }
    }

  }

}

// @@protoc_insertion_point(global_scope)
