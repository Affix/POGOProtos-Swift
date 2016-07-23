// Generated by the Protocol Buffers 3.0 compiler.  DO NOT EDIT!
// Source file "ItemAward.proto"
// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct Pogoprotos { public struct Inventory { public struct Item { }}}

public func == (lhs: Pogoprotos.Inventory.Item.ItemAward, rhs: Pogoprotos.Inventory.Item.ItemAward) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasItemId == rhs.hasItemId) && (!lhs.hasItemId || lhs.itemId == rhs.itemId)
  fieldCheck = fieldCheck && (lhs.hasItemCount == rhs.hasItemCount) && (!lhs.hasItemCount || lhs.itemCount == rhs.itemCount)
  fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
  return fieldCheck
}

public extension Pogoprotos.Inventory.Item {
  public struct ItemAwardRoot {
    public static var sharedInstance : ItemAwardRoot {
     struct Static {
         static let instance : ItemAwardRoot = ItemAwardRoot()
     }
     return Static.instance
    }
    public var extensionRegistry:ExtensionRegistry

    init() {
      extensionRegistry = ExtensionRegistry()
      registerAllExtensions(extensionRegistry)
      Pogoprotos.Inventory.Item.ItemIdRoot.sharedInstance.registerAllExtensions(extensionRegistry)
    }
    public func registerAllExtensions(registry:ExtensionRegistry) {
    }
  }

  final public class ItemAward : GeneratedMessage, GeneratedMessageProtocol {
    public private(set) var itemId:Pogoprotos.Inventory.Item.ItemId = Pogoprotos.Inventory.Item.ItemId.ItemUnknown
    public private(set) var hasItemId:Bool = false
    public private(set) var hasItemCount:Bool = false
    public private(set) var itemCount:Int32 = Int32(0)

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
      if hasItemCount {
        try output.writeInt32(2, value:itemCount)
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
      if hasItemCount {
        serialize_size += itemCount.computeInt32Size(2)
      }
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    public class func parseArrayDelimitedFromInputStream(input:NSInputStream) throws -> Array<Pogoprotos.Inventory.Item.ItemAward> {
      var mergedArray = Array<Pogoprotos.Inventory.Item.ItemAward>()
      while let value = try parseFromDelimitedFromInputStream(input) {
        mergedArray += [value]
      }
      return mergedArray
    }
    public class func parseFromDelimitedFromInputStream(input:NSInputStream) throws -> Pogoprotos.Inventory.Item.ItemAward? {
      return try Pogoprotos.Inventory.Item.ItemAward.Builder().mergeDelimitedFromInputStream(input)?.build()
    }
    public class func parseFromData(data:NSData) throws -> Pogoprotos.Inventory.Item.ItemAward {
      return try Pogoprotos.Inventory.Item.ItemAward.Builder().mergeFromData(data, extensionRegistry:Pogoprotos.Inventory.Item.ItemAwardRoot.sharedInstance.extensionRegistry).build()
    }
    public class func parseFromData(data:NSData, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Inventory.Item.ItemAward {
      return try Pogoprotos.Inventory.Item.ItemAward.Builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromInputStream(input:NSInputStream) throws -> Pogoprotos.Inventory.Item.ItemAward {
      return try Pogoprotos.Inventory.Item.ItemAward.Builder().mergeFromInputStream(input).build()
    }
    public class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Inventory.Item.ItemAward {
      return try Pogoprotos.Inventory.Item.ItemAward.Builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Inventory.Item.ItemAward {
      return try Pogoprotos.Inventory.Item.ItemAward.Builder().mergeFromCodedInputStream(input).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Inventory.Item.ItemAward {
      return try Pogoprotos.Inventory.Item.ItemAward.Builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func getBuilder() -> Pogoprotos.Inventory.Item.ItemAward.Builder {
      return Pogoprotos.Inventory.Item.ItemAward.classBuilder() as! Pogoprotos.Inventory.Item.ItemAward.Builder
    }
    public func getBuilder() -> Pogoprotos.Inventory.Item.ItemAward.Builder {
      return classBuilder() as! Pogoprotos.Inventory.Item.ItemAward.Builder
    }
    override public class func classBuilder() -> MessageBuilder {
      return Pogoprotos.Inventory.Item.ItemAward.Builder()
    }
    override public func classBuilder() -> MessageBuilder {
      return Pogoprotos.Inventory.Item.ItemAward.Builder()
    }
    public func toBuilder() throws -> Pogoprotos.Inventory.Item.ItemAward.Builder {
      return try Pogoprotos.Inventory.Item.ItemAward.builderWithPrototype(self)
    }
    public class func builderWithPrototype(prototype:Pogoprotos.Inventory.Item.ItemAward) throws -> Pogoprotos.Inventory.Item.ItemAward.Builder {
      return try Pogoprotos.Inventory.Item.ItemAward.Builder().mergeFrom(prototype)
    }
    override public func encode() throws -> Dictionary<String,AnyObject> {
      guard isInitialized() else {
        throw ProtocolBuffersError.InvalidProtocolBuffer("Uninitialized Message")
      }

      var jsonMap:Dictionary<String,AnyObject> = Dictionary<String,AnyObject>()
      if hasItemId {
        jsonMap["itemId"] = itemId.toString()
      }
      if hasItemCount {
        jsonMap["itemCount"] = NSNumber(int:itemCount)
      }
      return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Inventory.Item.ItemAward {
      return try Pogoprotos.Inventory.Item.ItemAward.Builder.decodeToBuilder(jsonMap).build()
    }
    override class public func fromJSON(data:NSData) throws -> Pogoprotos.Inventory.Item.ItemAward {
      return try Pogoprotos.Inventory.Item.ItemAward.Builder.fromJSONToBuilder(data).build()
    }
    override public func getDescription(indent:String) throws -> String {
      var output = ""
      if (hasItemId) {
        output += "\(indent) itemId: \(itemId.description)\n"
      }
      if hasItemCount {
        output += "\(indent) itemCount: \(itemCount) \n"
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
            if hasItemCount {
               hashCode = (hashCode &* 31) &+ itemCount.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "Pogoprotos.Inventory.Item.ItemAward"
    }
    override public func className() -> String {
        return "Pogoprotos.Inventory.Item.ItemAward"
    }
    override public func classMetaType() -> GeneratedMessage.Type {
        return Pogoprotos.Inventory.Item.ItemAward.self
    }
    //Meta information declaration end

    final public class Builder : GeneratedMessageBuilder {
      private var builderResult:Pogoprotos.Inventory.Item.ItemAward = Pogoprotos.Inventory.Item.ItemAward()
      public func getMessage() -> Pogoprotos.Inventory.Item.ItemAward {
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
        public func setItemId(value:Pogoprotos.Inventory.Item.ItemId) -> Pogoprotos.Inventory.Item.ItemAward.Builder {
          self.itemId = value
          return self
        }
        public func clearItemId() -> Pogoprotos.Inventory.Item.ItemAward.Builder {
           builderResult.hasItemId = false
           builderResult.itemId = .ItemUnknown
           return self
        }
      public var hasItemCount:Bool {
           get {
                return builderResult.hasItemCount
           }
      }
      public var itemCount:Int32 {
           get {
                return builderResult.itemCount
           }
           set (value) {
               builderResult.hasItemCount = true
               builderResult.itemCount = value
           }
      }
      public func setItemCount(value:Int32) -> Pogoprotos.Inventory.Item.ItemAward.Builder {
        self.itemCount = value
        return self
      }
      public func clearItemCount() -> Pogoprotos.Inventory.Item.ItemAward.Builder{
           builderResult.hasItemCount = false
           builderResult.itemCount = Int32(0)
           return self
      }
      override public var internalGetResult:GeneratedMessage {
           get {
              return builderResult
           }
      }
      override public func clear() -> Pogoprotos.Inventory.Item.ItemAward.Builder {
        builderResult = Pogoprotos.Inventory.Item.ItemAward()
        return self
      }
      override public func clone() throws -> Pogoprotos.Inventory.Item.ItemAward.Builder {
        return try Pogoprotos.Inventory.Item.ItemAward.builderWithPrototype(builderResult)
      }
      override public func build() throws -> Pogoprotos.Inventory.Item.ItemAward {
           try checkInitialized()
           return buildPartial()
      }
      public func buildPartial() -> Pogoprotos.Inventory.Item.ItemAward {
        let returnMe:Pogoprotos.Inventory.Item.ItemAward = builderResult
        return returnMe
      }
      public func mergeFrom(other:Pogoprotos.Inventory.Item.ItemAward) throws -> Pogoprotos.Inventory.Item.ItemAward.Builder {
        if other == Pogoprotos.Inventory.Item.ItemAward() {
         return self
        }
        if other.hasItemId {
             itemId = other.itemId
        }
        if other.hasItemCount {
             itemCount = other.itemCount
        }
        try mergeUnknownFields(other.unknownFields)
        return self
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Inventory.Item.ItemAward.Builder {
           return try mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Inventory.Item.ItemAward.Builder {
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
            itemCount = try input.readInt32()

          default:
            if (!(try parseUnknownField(input,unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
               unknownFields = try unknownFieldsBuilder.build()
               return self
            }
          }
        }
      }
      override class public func decodeToBuilder(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Inventory.Item.ItemAward.Builder {
        let resultDecodedBuilder = Pogoprotos.Inventory.Item.ItemAward.Builder()
        if let jsonValueItemId = jsonMap["itemId"] as? String {
          resultDecodedBuilder.itemId = try Pogoprotos.Inventory.Item.ItemId.fromString(jsonValueItemId)
        }
        if let jsonValueItemCount = jsonMap["itemCount"] as? NSNumber {
          resultDecodedBuilder.itemCount = jsonValueItemCount.intValue
        }
        return resultDecodedBuilder
      }
      override class public func fromJSONToBuilder(data:NSData) throws -> Pogoprotos.Inventory.Item.ItemAward.Builder {
        let jsonData = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions(rawValue: 0))
        guard let jsDataCast = jsonData as? Dictionary<String,AnyObject> else {
          throw ProtocolBuffersError.InvalidProtocolBuffer("Invalid JSON data")
        }
        return try Pogoprotos.Inventory.Item.ItemAward.Builder.decodeToBuilder(jsDataCast)
      }
    }

  }

}

// @@protoc_insertion_point(global_scope)