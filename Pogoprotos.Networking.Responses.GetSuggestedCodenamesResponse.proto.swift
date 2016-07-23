// Generated by the Protocol Buffers 3.0 compiler.  DO NOT EDIT!
// Source file "GetSuggestedCodenamesResponse.proto"
// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct Pogoprotos { public struct Networking { public struct Responses { }}}

public func == (lhs: Pogoprotos.Networking.Responses.GetSuggestedCodenamesResponse, rhs: Pogoprotos.Networking.Responses.GetSuggestedCodenamesResponse) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.codenames == rhs.codenames)
  fieldCheck = fieldCheck && (lhs.hasSuccess == rhs.hasSuccess) && (!lhs.hasSuccess || lhs.success == rhs.success)
  fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
  return fieldCheck
}

public extension Pogoprotos.Networking.Responses {
  public struct GetSuggestedCodenamesResponseRoot {
    public static var sharedInstance : GetSuggestedCodenamesResponseRoot {
     struct Static {
         static let instance : GetSuggestedCodenamesResponseRoot = GetSuggestedCodenamesResponseRoot()
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

  final public class GetSuggestedCodenamesResponse : GeneratedMessage, GeneratedMessageProtocol {
    public private(set) var codenames:Array<String> = Array<String>()
    public private(set) var hasSuccess:Bool = false
    public private(set) var success:Bool = false

    required public init() {
         super.init()
    }
    override public func isInitialized() -> Bool {
     return true
    }
    override public func writeToCodedOutputStream(output:CodedOutputStream) throws {
      if !codenames.isEmpty {
        for oneValuecodenames in codenames {
          try output.writeString(1, value:oneValuecodenames)
        }
      }
      if hasSuccess {
        try output.writeBool(2, value:success)
      }
      try unknownFields.writeToCodedOutputStream(output)
    }
    override public func serializedSize() -> Int32 {
      var serialize_size:Int32 = memoizedSerializedSize
      if serialize_size != -1 {
       return serialize_size
      }

      serialize_size = 0
      var dataSizeCodenames:Int32 = 0
      for oneValuecodenames in codenames {
          dataSizeCodenames += oneValuecodenames.computeStringSizeNoTag()
      }
      serialize_size += dataSizeCodenames
      serialize_size += 1 * Int32(codenames.count)
      if hasSuccess {
        serialize_size += success.computeBoolSize(2)
      }
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    public class func parseArrayDelimitedFromInputStream(input:NSInputStream) throws -> Array<Pogoprotos.Networking.Responses.GetSuggestedCodenamesResponse> {
      var mergedArray = Array<Pogoprotos.Networking.Responses.GetSuggestedCodenamesResponse>()
      while let value = try parseFromDelimitedFromInputStream(input) {
        mergedArray += [value]
      }
      return mergedArray
    }
    public class func parseFromDelimitedFromInputStream(input:NSInputStream) throws -> Pogoprotos.Networking.Responses.GetSuggestedCodenamesResponse? {
      return try Pogoprotos.Networking.Responses.GetSuggestedCodenamesResponse.Builder().mergeDelimitedFromInputStream(input)?.build()
    }
    public class func parseFromData(data:NSData) throws -> Pogoprotos.Networking.Responses.GetSuggestedCodenamesResponse {
      return try Pogoprotos.Networking.Responses.GetSuggestedCodenamesResponse.Builder().mergeFromData(data, extensionRegistry:Pogoprotos.Networking.Responses.GetSuggestedCodenamesResponseRoot.sharedInstance.extensionRegistry).build()
    }
    public class func parseFromData(data:NSData, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Responses.GetSuggestedCodenamesResponse {
      return try Pogoprotos.Networking.Responses.GetSuggestedCodenamesResponse.Builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromInputStream(input:NSInputStream) throws -> Pogoprotos.Networking.Responses.GetSuggestedCodenamesResponse {
      return try Pogoprotos.Networking.Responses.GetSuggestedCodenamesResponse.Builder().mergeFromInputStream(input).build()
    }
    public class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Responses.GetSuggestedCodenamesResponse {
      return try Pogoprotos.Networking.Responses.GetSuggestedCodenamesResponse.Builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Networking.Responses.GetSuggestedCodenamesResponse {
      return try Pogoprotos.Networking.Responses.GetSuggestedCodenamesResponse.Builder().mergeFromCodedInputStream(input).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Responses.GetSuggestedCodenamesResponse {
      return try Pogoprotos.Networking.Responses.GetSuggestedCodenamesResponse.Builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func getBuilder() -> Pogoprotos.Networking.Responses.GetSuggestedCodenamesResponse.Builder {
      return Pogoprotos.Networking.Responses.GetSuggestedCodenamesResponse.classBuilder() as! Pogoprotos.Networking.Responses.GetSuggestedCodenamesResponse.Builder
    }
    public func getBuilder() -> Pogoprotos.Networking.Responses.GetSuggestedCodenamesResponse.Builder {
      return classBuilder() as! Pogoprotos.Networking.Responses.GetSuggestedCodenamesResponse.Builder
    }
    override public class func classBuilder() -> MessageBuilder {
      return Pogoprotos.Networking.Responses.GetSuggestedCodenamesResponse.Builder()
    }
    override public func classBuilder() -> MessageBuilder {
      return Pogoprotos.Networking.Responses.GetSuggestedCodenamesResponse.Builder()
    }
    public func toBuilder() throws -> Pogoprotos.Networking.Responses.GetSuggestedCodenamesResponse.Builder {
      return try Pogoprotos.Networking.Responses.GetSuggestedCodenamesResponse.builderWithPrototype(self)
    }
    public class func builderWithPrototype(prototype:Pogoprotos.Networking.Responses.GetSuggestedCodenamesResponse) throws -> Pogoprotos.Networking.Responses.GetSuggestedCodenamesResponse.Builder {
      return try Pogoprotos.Networking.Responses.GetSuggestedCodenamesResponse.Builder().mergeFrom(prototype)
    }
    override public func encode() throws -> Dictionary<String,AnyObject> {
      guard isInitialized() else {
        throw ProtocolBuffersError.InvalidProtocolBuffer("Uninitialized Message")
      }

      var jsonMap:Dictionary<String,AnyObject> = Dictionary<String,AnyObject>()
      if !codenames.isEmpty {
        jsonMap["codenames"] = codenames
      }
      if hasSuccess {
        jsonMap["success"] = success
      }
      return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Networking.Responses.GetSuggestedCodenamesResponse {
      return try Pogoprotos.Networking.Responses.GetSuggestedCodenamesResponse.Builder.decodeToBuilder(jsonMap).build()
    }
    override class public func fromJSON(data:NSData) throws -> Pogoprotos.Networking.Responses.GetSuggestedCodenamesResponse {
      return try Pogoprotos.Networking.Responses.GetSuggestedCodenamesResponse.Builder.fromJSONToBuilder(data).build()
    }
    override public func getDescription(indent:String) throws -> String {
      var output = ""
      var codenamesElementIndex:Int = 0
      for oneValueCodenames in codenames  {
          output += "\(indent) codenames[\(codenamesElementIndex)]: \(oneValueCodenames)\n"
          codenamesElementIndex += 1
      }
      if hasSuccess {
        output += "\(indent) success: \(success) \n"
      }
      output += unknownFields.getDescription(indent)
      return output
    }
    override public var hashValue:Int {
        get {
            var hashCode:Int = 7
            for oneValueCodenames in codenames {
                hashCode = (hashCode &* 31) &+ oneValueCodenames.hashValue
            }
            if hasSuccess {
               hashCode = (hashCode &* 31) &+ success.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "Pogoprotos.Networking.Responses.GetSuggestedCodenamesResponse"
    }
    override public func className() -> String {
        return "Pogoprotos.Networking.Responses.GetSuggestedCodenamesResponse"
    }
    override public func classMetaType() -> GeneratedMessage.Type {
        return Pogoprotos.Networking.Responses.GetSuggestedCodenamesResponse.self
    }
    //Meta information declaration end

    final public class Builder : GeneratedMessageBuilder {
      private var builderResult:Pogoprotos.Networking.Responses.GetSuggestedCodenamesResponse = Pogoprotos.Networking.Responses.GetSuggestedCodenamesResponse()
      public func getMessage() -> Pogoprotos.Networking.Responses.GetSuggestedCodenamesResponse {
          return builderResult
      }

      required override public init () {
         super.init()
      }
      public var codenames:Array<String> {
           get {
               return builderResult.codenames
           }
           set (array) {
               builderResult.codenames = array
           }
      }
      public func setCodenames(value:Array<String>) -> Pogoprotos.Networking.Responses.GetSuggestedCodenamesResponse.Builder {
        self.codenames = value
        return self
      }
      public func clearCodenames() -> Pogoprotos.Networking.Responses.GetSuggestedCodenamesResponse.Builder {
         builderResult.codenames.removeAll(keepCapacity: false)
         return self
      }
      public var hasSuccess:Bool {
           get {
                return builderResult.hasSuccess
           }
      }
      public var success:Bool {
           get {
                return builderResult.success
           }
           set (value) {
               builderResult.hasSuccess = true
               builderResult.success = value
           }
      }
      public func setSuccess(value:Bool) -> Pogoprotos.Networking.Responses.GetSuggestedCodenamesResponse.Builder {
        self.success = value
        return self
      }
      public func clearSuccess() -> Pogoprotos.Networking.Responses.GetSuggestedCodenamesResponse.Builder{
           builderResult.hasSuccess = false
           builderResult.success = false
           return self
      }
      override public var internalGetResult:GeneratedMessage {
           get {
              return builderResult
           }
      }
      override public func clear() -> Pogoprotos.Networking.Responses.GetSuggestedCodenamesResponse.Builder {
        builderResult = Pogoprotos.Networking.Responses.GetSuggestedCodenamesResponse()
        return self
      }
      override public func clone() throws -> Pogoprotos.Networking.Responses.GetSuggestedCodenamesResponse.Builder {
        return try Pogoprotos.Networking.Responses.GetSuggestedCodenamesResponse.builderWithPrototype(builderResult)
      }
      override public func build() throws -> Pogoprotos.Networking.Responses.GetSuggestedCodenamesResponse {
           try checkInitialized()
           return buildPartial()
      }
      public func buildPartial() -> Pogoprotos.Networking.Responses.GetSuggestedCodenamesResponse {
        let returnMe:Pogoprotos.Networking.Responses.GetSuggestedCodenamesResponse = builderResult
        return returnMe
      }
      public func mergeFrom(other:Pogoprotos.Networking.Responses.GetSuggestedCodenamesResponse) throws -> Pogoprotos.Networking.Responses.GetSuggestedCodenamesResponse.Builder {
        if other == Pogoprotos.Networking.Responses.GetSuggestedCodenamesResponse() {
         return self
        }
        if !other.codenames.isEmpty {
            builderResult.codenames += other.codenames
        }
        if other.hasSuccess {
             success = other.success
        }
        try mergeUnknownFields(other.unknownFields)
        return self
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Networking.Responses.GetSuggestedCodenamesResponse.Builder {
           return try mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Responses.GetSuggestedCodenamesResponse.Builder {
        let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
        while (true) {
          let protobufTag = try input.readTag()
          switch protobufTag {
          case 0: 
            self.unknownFields = try unknownFieldsBuilder.build()
            return self

          case 10:
            codenames += [try input.readString()]

          case 16:
            success = try input.readBool()

          default:
            if (!(try parseUnknownField(input,unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
               unknownFields = try unknownFieldsBuilder.build()
               return self
            }
          }
        }
      }
      override class public func decodeToBuilder(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Networking.Responses.GetSuggestedCodenamesResponse.Builder {
        let resultDecodedBuilder = Pogoprotos.Networking.Responses.GetSuggestedCodenamesResponse.Builder()
        if let jsonValueCodenames = jsonMap["codenames"] as? Array<String> {
          resultDecodedBuilder.codenames = jsonValueCodenames
        }
        if let jsonValueSuccess = jsonMap["success"] as? Bool {
          resultDecodedBuilder.success = jsonValueSuccess
        }
        return resultDecodedBuilder
      }
      override class public func fromJSONToBuilder(data:NSData) throws -> Pogoprotos.Networking.Responses.GetSuggestedCodenamesResponse.Builder {
        let jsonData = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions(rawValue: 0))
        guard let jsDataCast = jsonData as? Dictionary<String,AnyObject> else {
          throw ProtocolBuffersError.InvalidProtocolBuffer("Invalid JSON data")
        }
        return try Pogoprotos.Networking.Responses.GetSuggestedCodenamesResponse.Builder.decodeToBuilder(jsDataCast)
      }
    }

  }

}

// @@protoc_insertion_point(global_scope)