// Generated by the Protocol Buffers 3.0 compiler.  DO NOT EDIT!
// Source file "RecycleInventoryItemResponse.proto"
// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct Pogoprotos { public struct Networking { public struct Responses { }}}

public func == (lhs: Pogoprotos.Networking.Responses.RecycleInventoryItemResponse, rhs: Pogoprotos.Networking.Responses.RecycleInventoryItemResponse) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasResult == rhs.hasResult) && (!lhs.hasResult || lhs.result == rhs.result)
  fieldCheck = fieldCheck && (lhs.hasNewCount == rhs.hasNewCount) && (!lhs.hasNewCount || lhs.newCount == rhs.newCount)
  fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
  return fieldCheck
}

public extension Pogoprotos.Networking.Responses {
  public struct RecycleInventoryItemResponseRoot {
    public static var sharedInstance : RecycleInventoryItemResponseRoot {
     struct Static {
         static let instance : RecycleInventoryItemResponseRoot = RecycleInventoryItemResponseRoot()
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

  final public class RecycleInventoryItemResponse : GeneratedMessage, GeneratedMessageProtocol {


      //Enum type declaration start 

      public enum Result:Int32, CustomDebugStringConvertible, CustomStringConvertible {
        case Unset = 0
        case Success = 1
        case ErrorNotEnoughCopies = 2
        case ErrorCannotRecycleIncubators = 3
        public func toString() -> String {
          switch self {
          case .Unset: return "UNSET"
          case .Success: return "SUCCESS"
          case .ErrorNotEnoughCopies: return "ERROR_NOT_ENOUGH_COPIES"
          case .ErrorCannotRecycleIncubators: return "ERROR_CANNOT_RECYCLE_INCUBATORS"
          }
        }
        public static func fromString(str:String) throws -> Pogoprotos.Networking.Responses.RecycleInventoryItemResponse.Result {
          switch str {
          case "UNSET":  return .Unset
          case "SUCCESS":  return .Success
          case "ERROR_NOT_ENOUGH_COPIES":  return .ErrorNotEnoughCopies
          case "ERROR_CANNOT_RECYCLE_INCUBATORS":  return .ErrorCannotRecycleIncubators
          default: throw ProtocolBuffersError.InvalidProtocolBuffer("Conversion String to Enum has failed.")
          }
        }
        public var debugDescription:String { return getDescription() }
        public var description:String { return getDescription() }
        private func getDescription() -> String { 
            switch self {
                case .Unset: return ".Unset"
                case .Success: return ".Success"
                case .ErrorNotEnoughCopies: return ".ErrorNotEnoughCopies"
                case .ErrorCannotRecycleIncubators: return ".ErrorCannotRecycleIncubators"
            }
        }
      }

      //Enum type declaration end 

    public private(set) var result:Pogoprotos.Networking.Responses.RecycleInventoryItemResponse.Result = Pogoprotos.Networking.Responses.RecycleInventoryItemResponse.Result.Unset
    public private(set) var hasResult:Bool = false
    public private(set) var hasNewCount:Bool = false
    public private(set) var newCount:Int32 = Int32(0)

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
      if hasNewCount {
        try output.writeInt32(2, value:newCount)
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
      if hasNewCount {
        serialize_size += newCount.computeInt32Size(2)
      }
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    public class func parseArrayDelimitedFromInputStream(input:NSInputStream) throws -> Array<Pogoprotos.Networking.Responses.RecycleInventoryItemResponse> {
      var mergedArray = Array<Pogoprotos.Networking.Responses.RecycleInventoryItemResponse>()
      while let value = try parseFromDelimitedFromInputStream(input) {
        mergedArray += [value]
      }
      return mergedArray
    }
    public class func parseFromDelimitedFromInputStream(input:NSInputStream) throws -> Pogoprotos.Networking.Responses.RecycleInventoryItemResponse? {
      return try Pogoprotos.Networking.Responses.RecycleInventoryItemResponse.Builder().mergeDelimitedFromInputStream(input)?.build()
    }
    public class func parseFromData(data:NSData) throws -> Pogoprotos.Networking.Responses.RecycleInventoryItemResponse {
      return try Pogoprotos.Networking.Responses.RecycleInventoryItemResponse.Builder().mergeFromData(data, extensionRegistry:Pogoprotos.Networking.Responses.RecycleInventoryItemResponseRoot.sharedInstance.extensionRegistry).build()
    }
    public class func parseFromData(data:NSData, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Responses.RecycleInventoryItemResponse {
      return try Pogoprotos.Networking.Responses.RecycleInventoryItemResponse.Builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromInputStream(input:NSInputStream) throws -> Pogoprotos.Networking.Responses.RecycleInventoryItemResponse {
      return try Pogoprotos.Networking.Responses.RecycleInventoryItemResponse.Builder().mergeFromInputStream(input).build()
    }
    public class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Responses.RecycleInventoryItemResponse {
      return try Pogoprotos.Networking.Responses.RecycleInventoryItemResponse.Builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Networking.Responses.RecycleInventoryItemResponse {
      return try Pogoprotos.Networking.Responses.RecycleInventoryItemResponse.Builder().mergeFromCodedInputStream(input).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Responses.RecycleInventoryItemResponse {
      return try Pogoprotos.Networking.Responses.RecycleInventoryItemResponse.Builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func getBuilder() -> Pogoprotos.Networking.Responses.RecycleInventoryItemResponse.Builder {
      return Pogoprotos.Networking.Responses.RecycleInventoryItemResponse.classBuilder() as! Pogoprotos.Networking.Responses.RecycleInventoryItemResponse.Builder
    }
    public func getBuilder() -> Pogoprotos.Networking.Responses.RecycleInventoryItemResponse.Builder {
      return classBuilder() as! Pogoprotos.Networking.Responses.RecycleInventoryItemResponse.Builder
    }
    override public class func classBuilder() -> MessageBuilder {
      return Pogoprotos.Networking.Responses.RecycleInventoryItemResponse.Builder()
    }
    override public func classBuilder() -> MessageBuilder {
      return Pogoprotos.Networking.Responses.RecycleInventoryItemResponse.Builder()
    }
    public func toBuilder() throws -> Pogoprotos.Networking.Responses.RecycleInventoryItemResponse.Builder {
      return try Pogoprotos.Networking.Responses.RecycleInventoryItemResponse.builderWithPrototype(self)
    }
    public class func builderWithPrototype(prototype:Pogoprotos.Networking.Responses.RecycleInventoryItemResponse) throws -> Pogoprotos.Networking.Responses.RecycleInventoryItemResponse.Builder {
      return try Pogoprotos.Networking.Responses.RecycleInventoryItemResponse.Builder().mergeFrom(prototype)
    }
    override public func encode() throws -> Dictionary<String,AnyObject> {
      guard isInitialized() else {
        throw ProtocolBuffersError.InvalidProtocolBuffer("Uninitialized Message")
      }

      var jsonMap:Dictionary<String,AnyObject> = Dictionary<String,AnyObject>()
      if hasResult {
        jsonMap["result"] = result.toString()
      }
      if hasNewCount {
        jsonMap["newCount"] = NSNumber(int:newCount)
      }
      return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Networking.Responses.RecycleInventoryItemResponse {
      return try Pogoprotos.Networking.Responses.RecycleInventoryItemResponse.Builder.decodeToBuilder(jsonMap).build()
    }
    override class public func fromJSON(data:NSData) throws -> Pogoprotos.Networking.Responses.RecycleInventoryItemResponse {
      return try Pogoprotos.Networking.Responses.RecycleInventoryItemResponse.Builder.fromJSONToBuilder(data).build()
    }
    override public func getDescription(indent:String) throws -> String {
      var output = ""
      if (hasResult) {
        output += "\(indent) result: \(result.description)\n"
      }
      if hasNewCount {
        output += "\(indent) newCount: \(newCount) \n"
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
            if hasNewCount {
               hashCode = (hashCode &* 31) &+ newCount.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "Pogoprotos.Networking.Responses.RecycleInventoryItemResponse"
    }
    override public func className() -> String {
        return "Pogoprotos.Networking.Responses.RecycleInventoryItemResponse"
    }
    override public func classMetaType() -> GeneratedMessage.Type {
        return Pogoprotos.Networking.Responses.RecycleInventoryItemResponse.self
    }
    //Meta information declaration end

    final public class Builder : GeneratedMessageBuilder {
      private var builderResult:Pogoprotos.Networking.Responses.RecycleInventoryItemResponse = Pogoprotos.Networking.Responses.RecycleInventoryItemResponse()
      public func getMessage() -> Pogoprotos.Networking.Responses.RecycleInventoryItemResponse {
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
        public var result:Pogoprotos.Networking.Responses.RecycleInventoryItemResponse.Result {
            get {
                return builderResult.result
            }
            set (value) {
                builderResult.hasResult = true
                builderResult.result = value
            }
        }
        public func setResult(value:Pogoprotos.Networking.Responses.RecycleInventoryItemResponse.Result) -> Pogoprotos.Networking.Responses.RecycleInventoryItemResponse.Builder {
          self.result = value
          return self
        }
        public func clearResult() -> Pogoprotos.Networking.Responses.RecycleInventoryItemResponse.Builder {
           builderResult.hasResult = false
           builderResult.result = .Unset
           return self
        }
      public var hasNewCount:Bool {
           get {
                return builderResult.hasNewCount
           }
      }
      public var newCount:Int32 {
           get {
                return builderResult.newCount
           }
           set (value) {
               builderResult.hasNewCount = true
               builderResult.newCount = value
           }
      }
      public func setNewCount(value:Int32) -> Pogoprotos.Networking.Responses.RecycleInventoryItemResponse.Builder {
        self.newCount = value
        return self
      }
      public func clearNewCount() -> Pogoprotos.Networking.Responses.RecycleInventoryItemResponse.Builder{
           builderResult.hasNewCount = false
           builderResult.newCount = Int32(0)
           return self
      }
      override public var internalGetResult:GeneratedMessage {
           get {
              return builderResult
           }
      }
      override public func clear() -> Pogoprotos.Networking.Responses.RecycleInventoryItemResponse.Builder {
        builderResult = Pogoprotos.Networking.Responses.RecycleInventoryItemResponse()
        return self
      }
      override public func clone() throws -> Pogoprotos.Networking.Responses.RecycleInventoryItemResponse.Builder {
        return try Pogoprotos.Networking.Responses.RecycleInventoryItemResponse.builderWithPrototype(builderResult)
      }
      override public func build() throws -> Pogoprotos.Networking.Responses.RecycleInventoryItemResponse {
           try checkInitialized()
           return buildPartial()
      }
      public func buildPartial() -> Pogoprotos.Networking.Responses.RecycleInventoryItemResponse {
        let returnMe:Pogoprotos.Networking.Responses.RecycleInventoryItemResponse = builderResult
        return returnMe
      }
      public func mergeFrom(other:Pogoprotos.Networking.Responses.RecycleInventoryItemResponse) throws -> Pogoprotos.Networking.Responses.RecycleInventoryItemResponse.Builder {
        if other == Pogoprotos.Networking.Responses.RecycleInventoryItemResponse() {
         return self
        }
        if other.hasResult {
             result = other.result
        }
        if other.hasNewCount {
             newCount = other.newCount
        }
        try mergeUnknownFields(other.unknownFields)
        return self
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Networking.Responses.RecycleInventoryItemResponse.Builder {
           return try mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Responses.RecycleInventoryItemResponse.Builder {
        let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
        while (true) {
          let protobufTag = try input.readTag()
          switch protobufTag {
          case 0: 
            self.unknownFields = try unknownFieldsBuilder.build()
            return self

          case 8:
            let valueIntresult = try input.readEnum()
            if let enumsresult = Pogoprotos.Networking.Responses.RecycleInventoryItemResponse.Result(rawValue:valueIntresult){
                 result = enumsresult
            } else {
                 try unknownFieldsBuilder.mergeVarintField(1, value:Int64(valueIntresult))
            }

          case 16:
            newCount = try input.readInt32()

          default:
            if (!(try parseUnknownField(input,unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
               unknownFields = try unknownFieldsBuilder.build()
               return self
            }
          }
        }
      }
      override class public func decodeToBuilder(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Networking.Responses.RecycleInventoryItemResponse.Builder {
        let resultDecodedBuilder = Pogoprotos.Networking.Responses.RecycleInventoryItemResponse.Builder()
        if let jsonValueResult = jsonMap["result"] as? String {
          resultDecodedBuilder.result = try Pogoprotos.Networking.Responses.RecycleInventoryItemResponse.Result.fromString(jsonValueResult)
        }
        if let jsonValueNewCount = jsonMap["newCount"] as? NSNumber {
          resultDecodedBuilder.newCount = jsonValueNewCount.intValue
        }
        return resultDecodedBuilder
      }
      override class public func fromJSONToBuilder(data:NSData) throws -> Pogoprotos.Networking.Responses.RecycleInventoryItemResponse.Builder {
        let jsonData = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions(rawValue: 0))
        guard let jsDataCast = jsonData as? Dictionary<String,AnyObject> else {
          throw ProtocolBuffersError.InvalidProtocolBuffer("Invalid JSON data")
        }
        return try Pogoprotos.Networking.Responses.RecycleInventoryItemResponse.Builder.decodeToBuilder(jsDataCast)
      }
    }

  }

}

// @@protoc_insertion_point(global_scope)
