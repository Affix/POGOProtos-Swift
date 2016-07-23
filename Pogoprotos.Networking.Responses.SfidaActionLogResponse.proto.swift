// Generated by the Protocol Buffers 3.0 compiler.  DO NOT EDIT!
// Source file "SfidaActionLogResponse.proto"
// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct Pogoprotos { public struct Networking { public struct Responses { }}}

public func == (lhs: Pogoprotos.Networking.Responses.SfidaActionLogResponse, rhs: Pogoprotos.Networking.Responses.SfidaActionLogResponse) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasResult == rhs.hasResult) && (!lhs.hasResult || lhs.result == rhs.result)
  fieldCheck = fieldCheck && (lhs.logEntries == rhs.logEntries)
  fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
  return fieldCheck
}

public extension Pogoprotos.Networking.Responses {
  public struct SfidaActionLogResponseRoot {
    public static var sharedInstance : SfidaActionLogResponseRoot {
     struct Static {
         static let instance : SfidaActionLogResponseRoot = SfidaActionLogResponseRoot()
     }
     return Static.instance
    }
    public var extensionRegistry:ExtensionRegistry

    init() {
      extensionRegistry = ExtensionRegistry()
      registerAllExtensions(extensionRegistry)
      Pogoprotos.Data.Logs.ActionLogEntryRoot.sharedInstance.registerAllExtensions(extensionRegistry)
    }
    public func registerAllExtensions(registry:ExtensionRegistry) {
    }
  }

  final public class SfidaActionLogResponse : GeneratedMessage, GeneratedMessageProtocol {


      //Enum type declaration start 

      public enum Result:Int32, CustomDebugStringConvertible, CustomStringConvertible {
        case Unset = 0
        case Success = 1
        public func toString() -> String {
          switch self {
          case .Unset: return "UNSET"
          case .Success: return "SUCCESS"
          }
        }
        public static func fromString(str:String) throws -> Pogoprotos.Networking.Responses.SfidaActionLogResponse.Result {
          switch str {
          case "UNSET":  return .Unset
          case "SUCCESS":  return .Success
          default: throw ProtocolBuffersError.InvalidProtocolBuffer("Conversion String to Enum has failed.")
          }
        }
        public var debugDescription:String { return getDescription() }
        public var description:String { return getDescription() }
        private func getDescription() -> String { 
            switch self {
                case .Unset: return ".Unset"
                case .Success: return ".Success"
            }
        }
      }

      //Enum type declaration end 

    public private(set) var result:Pogoprotos.Networking.Responses.SfidaActionLogResponse.Result = Pogoprotos.Networking.Responses.SfidaActionLogResponse.Result.Unset
    public private(set) var hasResult:Bool = false
    public private(set) var logEntries:Array<Pogoprotos.Data.Logs.ActionLogEntry>  = Array<Pogoprotos.Data.Logs.ActionLogEntry>()
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
      for oneElementLogEntries in logEntries {
          try output.writeMessage(2, value:oneElementLogEntries)
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
      for oneElementLogEntries in logEntries {
          serialize_size += oneElementLogEntries.computeMessageSize(2)
      }
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    public class func parseArrayDelimitedFromInputStream(input:NSInputStream) throws -> Array<Pogoprotos.Networking.Responses.SfidaActionLogResponse> {
      var mergedArray = Array<Pogoprotos.Networking.Responses.SfidaActionLogResponse>()
      while let value = try parseFromDelimitedFromInputStream(input) {
        mergedArray += [value]
      }
      return mergedArray
    }
    public class func parseFromDelimitedFromInputStream(input:NSInputStream) throws -> Pogoprotos.Networking.Responses.SfidaActionLogResponse? {
      return try Pogoprotos.Networking.Responses.SfidaActionLogResponse.Builder().mergeDelimitedFromInputStream(input)?.build()
    }
    public class func parseFromData(data:NSData) throws -> Pogoprotos.Networking.Responses.SfidaActionLogResponse {
      return try Pogoprotos.Networking.Responses.SfidaActionLogResponse.Builder().mergeFromData(data, extensionRegistry:Pogoprotos.Networking.Responses.SfidaActionLogResponseRoot.sharedInstance.extensionRegistry).build()
    }
    public class func parseFromData(data:NSData, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Responses.SfidaActionLogResponse {
      return try Pogoprotos.Networking.Responses.SfidaActionLogResponse.Builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromInputStream(input:NSInputStream) throws -> Pogoprotos.Networking.Responses.SfidaActionLogResponse {
      return try Pogoprotos.Networking.Responses.SfidaActionLogResponse.Builder().mergeFromInputStream(input).build()
    }
    public class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Responses.SfidaActionLogResponse {
      return try Pogoprotos.Networking.Responses.SfidaActionLogResponse.Builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Networking.Responses.SfidaActionLogResponse {
      return try Pogoprotos.Networking.Responses.SfidaActionLogResponse.Builder().mergeFromCodedInputStream(input).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Responses.SfidaActionLogResponse {
      return try Pogoprotos.Networking.Responses.SfidaActionLogResponse.Builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func getBuilder() -> Pogoprotos.Networking.Responses.SfidaActionLogResponse.Builder {
      return Pogoprotos.Networking.Responses.SfidaActionLogResponse.classBuilder() as! Pogoprotos.Networking.Responses.SfidaActionLogResponse.Builder
    }
    public func getBuilder() -> Pogoprotos.Networking.Responses.SfidaActionLogResponse.Builder {
      return classBuilder() as! Pogoprotos.Networking.Responses.SfidaActionLogResponse.Builder
    }
    override public class func classBuilder() -> MessageBuilder {
      return Pogoprotos.Networking.Responses.SfidaActionLogResponse.Builder()
    }
    override public func classBuilder() -> MessageBuilder {
      return Pogoprotos.Networking.Responses.SfidaActionLogResponse.Builder()
    }
    public func toBuilder() throws -> Pogoprotos.Networking.Responses.SfidaActionLogResponse.Builder {
      return try Pogoprotos.Networking.Responses.SfidaActionLogResponse.builderWithPrototype(self)
    }
    public class func builderWithPrototype(prototype:Pogoprotos.Networking.Responses.SfidaActionLogResponse) throws -> Pogoprotos.Networking.Responses.SfidaActionLogResponse.Builder {
      return try Pogoprotos.Networking.Responses.SfidaActionLogResponse.Builder().mergeFrom(prototype)
    }
    override public func encode() throws -> Dictionary<String,AnyObject> {
      guard isInitialized() else {
        throw ProtocolBuffersError.InvalidProtocolBuffer("Uninitialized Message")
      }

      var jsonMap:Dictionary<String,AnyObject> = Dictionary<String,AnyObject>()
      if hasResult {
        jsonMap["result"] = result.toString()
      }
      if !logEntries.isEmpty {
        var jsonArrayLogEntries:Array<Dictionary<String,AnyObject>> = []
          for oneValueLogEntries in logEntries {
            let ecodedMessageLogEntries = try oneValueLogEntries.encode()
            jsonArrayLogEntries += [ecodedMessageLogEntries]
          }
        jsonMap["logEntries"] = jsonArrayLogEntries
      }
      return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Networking.Responses.SfidaActionLogResponse {
      return try Pogoprotos.Networking.Responses.SfidaActionLogResponse.Builder.decodeToBuilder(jsonMap).build()
    }
    override class public func fromJSON(data:NSData) throws -> Pogoprotos.Networking.Responses.SfidaActionLogResponse {
      return try Pogoprotos.Networking.Responses.SfidaActionLogResponse.Builder.fromJSONToBuilder(data).build()
    }
    override public func getDescription(indent:String) throws -> String {
      var output = ""
      if (hasResult) {
        output += "\(indent) result: \(result.description)\n"
      }
      var logEntriesElementIndex:Int = 0
      for oneElementLogEntries in logEntries {
          output += "\(indent) logEntries[\(logEntriesElementIndex)] {\n"
          output += try oneElementLogEntries.getDescription("\(indent)  ")
          output += "\(indent)}\n"
          logEntriesElementIndex += 1
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
            for oneElementLogEntries in logEntries {
                hashCode = (hashCode &* 31) &+ oneElementLogEntries.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "Pogoprotos.Networking.Responses.SfidaActionLogResponse"
    }
    override public func className() -> String {
        return "Pogoprotos.Networking.Responses.SfidaActionLogResponse"
    }
    override public func classMetaType() -> GeneratedMessage.Type {
        return Pogoprotos.Networking.Responses.SfidaActionLogResponse.self
    }
    //Meta information declaration end

    final public class Builder : GeneratedMessageBuilder {
      private var builderResult:Pogoprotos.Networking.Responses.SfidaActionLogResponse = Pogoprotos.Networking.Responses.SfidaActionLogResponse()
      public func getMessage() -> Pogoprotos.Networking.Responses.SfidaActionLogResponse {
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
        public var result:Pogoprotos.Networking.Responses.SfidaActionLogResponse.Result {
            get {
                return builderResult.result
            }
            set (value) {
                builderResult.hasResult = true
                builderResult.result = value
            }
        }
        public func setResult(value:Pogoprotos.Networking.Responses.SfidaActionLogResponse.Result) -> Pogoprotos.Networking.Responses.SfidaActionLogResponse.Builder {
          self.result = value
          return self
        }
        public func clearResult() -> Pogoprotos.Networking.Responses.SfidaActionLogResponse.Builder {
           builderResult.hasResult = false
           builderResult.result = .Unset
           return self
        }
      public var logEntries:Array<Pogoprotos.Data.Logs.ActionLogEntry> {
           get {
               return builderResult.logEntries
           }
           set (value) {
               builderResult.logEntries = value
           }
      }
      public func setLogEntries(value:Array<Pogoprotos.Data.Logs.ActionLogEntry>) -> Pogoprotos.Networking.Responses.SfidaActionLogResponse.Builder {
        self.logEntries = value
        return self
      }
      public func clearLogEntries() -> Pogoprotos.Networking.Responses.SfidaActionLogResponse.Builder {
        builderResult.logEntries.removeAll(keepCapacity: false)
        return self
      }
      override public var internalGetResult:GeneratedMessage {
           get {
              return builderResult
           }
      }
      override public func clear() -> Pogoprotos.Networking.Responses.SfidaActionLogResponse.Builder {
        builderResult = Pogoprotos.Networking.Responses.SfidaActionLogResponse()
        return self
      }
      override public func clone() throws -> Pogoprotos.Networking.Responses.SfidaActionLogResponse.Builder {
        return try Pogoprotos.Networking.Responses.SfidaActionLogResponse.builderWithPrototype(builderResult)
      }
      override public func build() throws -> Pogoprotos.Networking.Responses.SfidaActionLogResponse {
           try checkInitialized()
           return buildPartial()
      }
      public func buildPartial() -> Pogoprotos.Networking.Responses.SfidaActionLogResponse {
        let returnMe:Pogoprotos.Networking.Responses.SfidaActionLogResponse = builderResult
        return returnMe
      }
      public func mergeFrom(other:Pogoprotos.Networking.Responses.SfidaActionLogResponse) throws -> Pogoprotos.Networking.Responses.SfidaActionLogResponse.Builder {
        if other == Pogoprotos.Networking.Responses.SfidaActionLogResponse() {
         return self
        }
        if other.hasResult {
             result = other.result
        }
        if !other.logEntries.isEmpty  {
           builderResult.logEntries += other.logEntries
        }
        try mergeUnknownFields(other.unknownFields)
        return self
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Networking.Responses.SfidaActionLogResponse.Builder {
           return try mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Responses.SfidaActionLogResponse.Builder {
        let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
        while (true) {
          let protobufTag = try input.readTag()
          switch protobufTag {
          case 0: 
            self.unknownFields = try unknownFieldsBuilder.build()
            return self

          case 8:
            let valueIntresult = try input.readEnum()
            if let enumsresult = Pogoprotos.Networking.Responses.SfidaActionLogResponse.Result(rawValue:valueIntresult){
                 result = enumsresult
            } else {
                 try unknownFieldsBuilder.mergeVarintField(1, value:Int64(valueIntresult))
            }

          case 18:
            let subBuilder = Pogoprotos.Data.Logs.ActionLogEntry.Builder()
            try input.readMessage(subBuilder,extensionRegistry:extensionRegistry)
            logEntries += [subBuilder.buildPartial()]

          default:
            if (!(try parseUnknownField(input,unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
               unknownFields = try unknownFieldsBuilder.build()
               return self
            }
          }
        }
      }
      override class public func decodeToBuilder(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Networking.Responses.SfidaActionLogResponse.Builder {
        let resultDecodedBuilder = Pogoprotos.Networking.Responses.SfidaActionLogResponse.Builder()
        if let jsonValueResult = jsonMap["result"] as? String {
          resultDecodedBuilder.result = try Pogoprotos.Networking.Responses.SfidaActionLogResponse.Result.fromString(jsonValueResult)
        }
        if let jsonValueLogEntries = jsonMap["logEntries"] as? Array<Dictionary<String,AnyObject>> {
          var jsonArrayLogEntries:Array<Pogoprotos.Data.Logs.ActionLogEntry> = []
          for oneValueLogEntries in jsonValueLogEntries {
            let messageFromStringLogEntries = try Pogoprotos.Data.Logs.ActionLogEntry.Builder.decodeToBuilder(oneValueLogEntries).build()

            jsonArrayLogEntries += [messageFromStringLogEntries]
          }
          resultDecodedBuilder.logEntries = jsonArrayLogEntries
        }
        return resultDecodedBuilder
      }
      override class public func fromJSONToBuilder(data:NSData) throws -> Pogoprotos.Networking.Responses.SfidaActionLogResponse.Builder {
        let jsonData = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions(rawValue: 0))
        guard let jsDataCast = jsonData as? Dictionary<String,AnyObject> else {
          throw ProtocolBuffersError.InvalidProtocolBuffer("Invalid JSON data")
        }
        return try Pogoprotos.Networking.Responses.SfidaActionLogResponse.Builder.decodeToBuilder(jsDataCast)
      }
    }

  }

}

// @@protoc_insertion_point(global_scope)