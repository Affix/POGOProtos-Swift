// Generated by the Protocol Buffers 3.0 compiler.  DO NOT EDIT!
// Source file "AppliedItem.proto"
// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct Pogoprotos { public struct Inventory { }}

public func == (lhs: Pogoprotos.Inventory.AppliedItem, rhs: Pogoprotos.Inventory.AppliedItem) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasItemId == rhs.hasItemId) && (!lhs.hasItemId || lhs.itemId == rhs.itemId)
  fieldCheck = fieldCheck && (lhs.hasItemType == rhs.hasItemType) && (!lhs.hasItemType || lhs.itemType == rhs.itemType)
  fieldCheck = fieldCheck && (lhs.hasExpireMs == rhs.hasExpireMs) && (!lhs.hasExpireMs || lhs.expireMs == rhs.expireMs)
  fieldCheck = fieldCheck && (lhs.hasAppliedMs == rhs.hasAppliedMs) && (!lhs.hasAppliedMs || lhs.appliedMs == rhs.appliedMs)
  fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
  return fieldCheck
}

public extension Pogoprotos.Inventory {
  public struct AppliedItemRoot {
    public static var sharedInstance : AppliedItemRoot {
     struct Static {
         static let instance : AppliedItemRoot = AppliedItemRoot()
     }
     return Static.instance
    }
    public var extensionRegistry:ExtensionRegistry

    init() {
      extensionRegistry = ExtensionRegistry()
      registerAllExtensions(extensionRegistry)
      Pogoprotos.Inventory.Item.ItemIdRoot.sharedInstance.registerAllExtensions(extensionRegistry)
      Pogoprotos.Inventory.Item.ItemTypeRoot.sharedInstance.registerAllExtensions(extensionRegistry)
    }
    public func registerAllExtensions(registry:ExtensionRegistry) {
    }
  }

  final public class AppliedItem : GeneratedMessage, GeneratedMessageProtocol {
    public private(set) var itemId:Pogoprotos.Inventory.Item.ItemId = Pogoprotos.Inventory.Item.ItemId.ItemUnknown
    public private(set) var hasItemId:Bool = false
    public private(set) var itemType:Pogoprotos.Inventory.Item.ItemType = Pogoprotos.Inventory.Item.ItemType.ItemTypeNone
    public private(set) var hasItemType:Bool = false
    public private(set) var hasExpireMs:Bool = false
    public private(set) var expireMs:Int64 = Int64(0)

    public private(set) var hasAppliedMs:Bool = false
    public private(set) var appliedMs:Int64 = Int64(0)

    required public init() {
         super.init()
    }
    override public func isInitialized() -> Bool {
     return true
    }
    override public func writeToCodedOutputStream(output:CodedOutputStream) throws {
      if hasItemId {
        try output.writeEnum(1, value:itemId.rawValue)
      }
      if hasItemType {
        try output.writeEnum(2, value:itemType.rawValue)
      }
      if hasExpireMs {
        try output.writeInt64(3, value:expireMs)
      }
      if hasAppliedMs {
        try output.writeInt64(4, value:appliedMs)
      }
      try unknownFields.writeToCodedOutputStream(output)
    }
    override public func serializedSize() -> Int32 {
      var serialize_size:Int32 = memoizedSerializedSize
      if serialize_size != -1 {
       return serialize_size
      }

      serialize_size = 0
      if (hasItemId) {
        serialize_size += itemId.rawValue.computeEnumSize(1)
      }
      if (hasItemType) {
        serialize_size += itemType.rawValue.computeEnumSize(2)
      }
      if hasExpireMs {
        serialize_size += expireMs.computeInt64Size(3)
      }
      if hasAppliedMs {
        serialize_size += appliedMs.computeInt64Size(4)
      }
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    public class func parseArrayDelimitedFromInputStream(input:NSInputStream) throws -> Array<Pogoprotos.Inventory.AppliedItem> {
      var mergedArray = Array<Pogoprotos.Inventory.AppliedItem>()
      while let value = try parseFromDelimitedFromInputStream(input) {
        mergedArray += [value]
      }
      return mergedArray
    }
    public class func parseFromDelimitedFromInputStream(input:NSInputStream) throws -> Pogoprotos.Inventory.AppliedItem? {
      return try Pogoprotos.Inventory.AppliedItem.Builder().mergeDelimitedFromInputStream(input)?.build()
    }
    public class func parseFromData(data:NSData) throws -> Pogoprotos.Inventory.AppliedItem {
      return try Pogoprotos.Inventory.AppliedItem.Builder().mergeFromData(data, extensionRegistry:Pogoprotos.Inventory.AppliedItemRoot.sharedInstance.extensionRegistry).build()
    }
    public class func parseFromData(data:NSData, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Inventory.AppliedItem {
      return try Pogoprotos.Inventory.AppliedItem.Builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromInputStream(input:NSInputStream) throws -> Pogoprotos.Inventory.AppliedItem {
      return try Pogoprotos.Inventory.AppliedItem.Builder().mergeFromInputStream(input).build()
    }
    public class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Inventory.AppliedItem {
      return try Pogoprotos.Inventory.AppliedItem.Builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Inventory.AppliedItem {
      return try Pogoprotos.Inventory.AppliedItem.Builder().mergeFromCodedInputStream(input).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Inventory.AppliedItem {
      return try Pogoprotos.Inventory.AppliedItem.Builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func getBuilder() -> Pogoprotos.Inventory.AppliedItem.Builder {
      return Pogoprotos.Inventory.AppliedItem.classBuilder() as! Pogoprotos.Inventory.AppliedItem.Builder
    }
    public func getBuilder() -> Pogoprotos.Inventory.AppliedItem.Builder {
      return classBuilder() as! Pogoprotos.Inventory.AppliedItem.Builder
    }
    override public class func classBuilder() -> MessageBuilder {
      return Pogoprotos.Inventory.AppliedItem.Builder()
    }
    override public func classBuilder() -> MessageBuilder {
      return Pogoprotos.Inventory.AppliedItem.Builder()
    }
    public func toBuilder() throws -> Pogoprotos.Inventory.AppliedItem.Builder {
      return try Pogoprotos.Inventory.AppliedItem.builderWithPrototype(self)
    }
    public class func builderWithPrototype(prototype:Pogoprotos.Inventory.AppliedItem) throws -> Pogoprotos.Inventory.AppliedItem.Builder {
      return try Pogoprotos.Inventory.AppliedItem.Builder().mergeFrom(prototype)
    }
    override public func encode() throws -> Dictionary<String,AnyObject> {
      guard isInitialized() else {
        throw ProtocolBuffersError.InvalidProtocolBuffer("Uninitialized Message")
      }

      var jsonMap:Dictionary<String,AnyObject> = Dictionary<String,AnyObject>()
      if hasItemId {
        jsonMap["itemId"] = itemId.toString()
      }
      if hasItemType {
        jsonMap["itemType"] = itemType.toString()
      }
      if hasExpireMs {
        jsonMap["expireMs"] = "\(expireMs)"
      }
      if hasAppliedMs {
        jsonMap["appliedMs"] = "\(appliedMs)"
      }
      return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Inventory.AppliedItem {
      return try Pogoprotos.Inventory.AppliedItem.Builder.decodeToBuilder(jsonMap).build()
    }
    override class public func fromJSON(data:NSData) throws -> Pogoprotos.Inventory.AppliedItem {
      return try Pogoprotos.Inventory.AppliedItem.Builder.fromJSONToBuilder(data).build()
    }
    override public func getDescription(indent:String) throws -> String {
      var output = ""
      if (hasItemId) {
        output += "\(indent) itemId: \(itemId.description)\n"
      }
      if (hasItemType) {
        output += "\(indent) itemType: \(itemType.description)\n"
      }
      if hasExpireMs {
        output += "\(indent) expireMs: \(expireMs) \n"
      }
      if hasAppliedMs {
        output += "\(indent) appliedMs: \(appliedMs) \n"
      }
      output += unknownFields.getDescription(indent)
      return output
    }
    override public var hashValue:Int {
        get {
            var hashCode:Int = 7
            if hasItemId {
               hashCode = (hashCode &* 31) &+ Int(itemId.rawValue)
            }
            if hasItemType {
               hashCode = (hashCode &* 31) &+ Int(itemType.rawValue)
            }
            if hasExpireMs {
               hashCode = (hashCode &* 31) &+ expireMs.hashValue
            }
            if hasAppliedMs {
               hashCode = (hashCode &* 31) &+ appliedMs.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "Pogoprotos.Inventory.AppliedItem"
    }
    override public func className() -> String {
        return "Pogoprotos.Inventory.AppliedItem"
    }
    override public func classMetaType() -> GeneratedMessage.Type {
        return Pogoprotos.Inventory.AppliedItem.self
    }
    //Meta information declaration end

    final public class Builder : GeneratedMessageBuilder {
      private var builderResult:Pogoprotos.Inventory.AppliedItem = Pogoprotos.Inventory.AppliedItem()
      public func getMessage() -> Pogoprotos.Inventory.AppliedItem {
          return builderResult
      }

      required override public init () {
         super.init()
      }
        public var hasItemId:Bool{
            get {
                return builderResult.hasItemId
            }
        }
        public var itemId:Pogoprotos.Inventory.Item.ItemId {
            get {
                return builderResult.itemId
            }
            set (value) {
                builderResult.hasItemId = true
                builderResult.itemId = value
            }
        }
        public func setItemId(value:Pogoprotos.Inventory.Item.ItemId) -> Pogoprotos.Inventory.AppliedItem.Builder {
          self.itemId = value
          return self
        }
        public func clearItemId() -> Pogoprotos.Inventory.AppliedItem.Builder {
           builderResult.hasItemId = false
           builderResult.itemId = .ItemUnknown
           return self
        }
        public var hasItemType:Bool{
            get {
                return builderResult.hasItemType
            }
        }
        public var itemType:Pogoprotos.Inventory.Item.ItemType {
            get {
                return builderResult.itemType
            }
            set (value) {
                builderResult.hasItemType = true
                builderResult.itemType = value
            }
        }
        public func setItemType(value:Pogoprotos.Inventory.Item.ItemType) -> Pogoprotos.Inventory.AppliedItem.Builder {
          self.itemType = value
          return self
        }
        public func clearItemType() -> Pogoprotos.Inventory.AppliedItem.Builder {
           builderResult.hasItemType = false
           builderResult.itemType = .ItemTypeNone
           return self
        }
      public var hasExpireMs:Bool {
           get {
                return builderResult.hasExpireMs
           }
      }
      public var expireMs:Int64 {
           get {
                return builderResult.expireMs
           }
           set (value) {
               builderResult.hasExpireMs = true
               builderResult.expireMs = value
           }
      }
      public func setExpireMs(value:Int64) -> Pogoprotos.Inventory.AppliedItem.Builder {
        self.expireMs = value
        return self
      }
      public func clearExpireMs() -> Pogoprotos.Inventory.AppliedItem.Builder{
           builderResult.hasExpireMs = false
           builderResult.expireMs = Int64(0)
           return self
      }
      public var hasAppliedMs:Bool {
           get {
                return builderResult.hasAppliedMs
           }
      }
      public var appliedMs:Int64 {
           get {
                return builderResult.appliedMs
           }
           set (value) {
               builderResult.hasAppliedMs = true
               builderResult.appliedMs = value
           }
      }
      public func setAppliedMs(value:Int64) -> Pogoprotos.Inventory.AppliedItem.Builder {
        self.appliedMs = value
        return self
      }
      public func clearAppliedMs() -> Pogoprotos.Inventory.AppliedItem.Builder{
           builderResult.hasAppliedMs = false
           builderResult.appliedMs = Int64(0)
           return self
      }
      override public var internalGetResult:GeneratedMessage {
           get {
              return builderResult
           }
      }
      override public func clear() -> Pogoprotos.Inventory.AppliedItem.Builder {
        builderResult = Pogoprotos.Inventory.AppliedItem()
        return self
      }
      override public func clone() throws -> Pogoprotos.Inventory.AppliedItem.Builder {
        return try Pogoprotos.Inventory.AppliedItem.builderWithPrototype(builderResult)
      }
      override public func build() throws -> Pogoprotos.Inventory.AppliedItem {
           try checkInitialized()
           return buildPartial()
      }
      public func buildPartial() -> Pogoprotos.Inventory.AppliedItem {
        let returnMe:Pogoprotos.Inventory.AppliedItem = builderResult
        return returnMe
      }
      public func mergeFrom(other:Pogoprotos.Inventory.AppliedItem) throws -> Pogoprotos.Inventory.AppliedItem.Builder {
        if other == Pogoprotos.Inventory.AppliedItem() {
         return self
        }
        if other.hasItemId {
             itemId = other.itemId
        }
        if other.hasItemType {
             itemType = other.itemType
        }
        if other.hasExpireMs {
             expireMs = other.expireMs
        }
        if other.hasAppliedMs {
             appliedMs = other.appliedMs
        }
        try mergeUnknownFields(other.unknownFields)
        return self
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Inventory.AppliedItem.Builder {
           return try mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Inventory.AppliedItem.Builder {
        let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
        while (true) {
          let protobufTag = try input.readTag()
          switch protobufTag {
          case 0: 
            self.unknownFields = try unknownFieldsBuilder.build()
            return self

          case 8:
            let valueIntitemId = try input.readEnum()
            if let enumsitemId = Pogoprotos.Inventory.Item.ItemId(rawValue:valueIntitemId){
                 itemId = enumsitemId
            } else {
                 try unknownFieldsBuilder.mergeVarintField(1, value:Int64(valueIntitemId))
            }

          case 16:
            let valueIntitemType = try input.readEnum()
            if let enumsitemType = Pogoprotos.Inventory.Item.ItemType(rawValue:valueIntitemType){
                 itemType = enumsitemType
            } else {
                 try unknownFieldsBuilder.mergeVarintField(2, value:Int64(valueIntitemType))
            }

          case 24:
            expireMs = try input.readInt64()

          case 32:
            appliedMs = try input.readInt64()

          default:
            if (!(try parseUnknownField(input,unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
               unknownFields = try unknownFieldsBuilder.build()
               return self
            }
          }
        }
      }
      override class public func decodeToBuilder(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Inventory.AppliedItem.Builder {
        let resultDecodedBuilder = Pogoprotos.Inventory.AppliedItem.Builder()
        if let jsonValueItemId = jsonMap["itemId"] as? String {
          resultDecodedBuilder.itemId = try Pogoprotos.Inventory.Item.ItemId.fromString(jsonValueItemId)
        }
        if let jsonValueItemType = jsonMap["itemType"] as? String {
          resultDecodedBuilder.itemType = try Pogoprotos.Inventory.Item.ItemType.fromString(jsonValueItemType)
        }
        if let jsonValueExpireMs = jsonMap["expireMs"] as? String {
          resultDecodedBuilder.expireMs = Int64(jsonValueExpireMs)!
        }
        if let jsonValueAppliedMs = jsonMap["appliedMs"] as? String {
          resultDecodedBuilder.appliedMs = Int64(jsonValueAppliedMs)!
        }
        return resultDecodedBuilder
      }
      override class public func fromJSONToBuilder(data:NSData) throws -> Pogoprotos.Inventory.AppliedItem.Builder {
        let jsonData = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions(rawValue: 0))
        guard let jsDataCast = jsonData as? Dictionary<String,AnyObject> else {
          throw ProtocolBuffersError.InvalidProtocolBuffer("Invalid JSON data")
        }
        return try Pogoprotos.Inventory.AppliedItem.Builder.decodeToBuilder(jsDataCast)
      }
    }

  }

}

// @@protoc_insertion_point(global_scope)
