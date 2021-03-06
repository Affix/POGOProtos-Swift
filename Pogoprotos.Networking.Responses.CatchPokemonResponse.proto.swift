// Generated by the Protocol Buffers 3.0 compiler.  DO NOT EDIT!
// Source file "CatchPokemonResponse.proto"
// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct Pogoprotos { public struct Networking { public struct Responses { }}}

public func == (lhs: Pogoprotos.Networking.Responses.CatchPokemonResponse, rhs: Pogoprotos.Networking.Responses.CatchPokemonResponse) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasStatus == rhs.hasStatus) && (!lhs.hasStatus || lhs.status == rhs.status)
  fieldCheck = fieldCheck && (lhs.hasMissPercent == rhs.hasMissPercent) && (!lhs.hasMissPercent || lhs.missPercent == rhs.missPercent)
  fieldCheck = fieldCheck && (lhs.hasCapturedPokemonId == rhs.hasCapturedPokemonId) && (!lhs.hasCapturedPokemonId || lhs.capturedPokemonId == rhs.capturedPokemonId)
  fieldCheck = fieldCheck && (lhs.hasCaptureAward == rhs.hasCaptureAward) && (!lhs.hasCaptureAward || lhs.captureAward == rhs.captureAward)
  fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
  return fieldCheck
}

public extension Pogoprotos.Networking.Responses {
  public struct CatchPokemonResponseRoot {
    public static var sharedInstance : CatchPokemonResponseRoot {
     struct Static {
         static let instance : CatchPokemonResponseRoot = CatchPokemonResponseRoot()
     }
     return Static.instance
    }
    public var extensionRegistry:ExtensionRegistry

    init() {
      extensionRegistry = ExtensionRegistry()
      registerAllExtensions(extensionRegistry)
      Pogoprotos.Data.Capture.CaptureAwardRoot.sharedInstance.registerAllExtensions(extensionRegistry)
    }
    public func registerAllExtensions(registry:ExtensionRegistry) {
    }
  }

  final public class CatchPokemonResponse : GeneratedMessage, GeneratedMessageProtocol {


      //Enum type declaration start 

      public enum CatchStatus:Int32, CustomDebugStringConvertible, CustomStringConvertible {
        case CatchError = 0
        case CatchSuccess = 1
        case CatchEscape = 2
        case CatchFlee = 3
        case CatchMissed = 4
        public func toString() -> String {
          switch self {
          case .CatchError: return "CATCH_ERROR"
          case .CatchSuccess: return "CATCH_SUCCESS"
          case .CatchEscape: return "CATCH_ESCAPE"
          case .CatchFlee: return "CATCH_FLEE"
          case .CatchMissed: return "CATCH_MISSED"
          }
        }
        public static func fromString(str:String) throws -> Pogoprotos.Networking.Responses.CatchPokemonResponse.CatchStatus {
          switch str {
          case "CATCH_ERROR":  return .CatchError
          case "CATCH_SUCCESS":  return .CatchSuccess
          case "CATCH_ESCAPE":  return .CatchEscape
          case "CATCH_FLEE":  return .CatchFlee
          case "CATCH_MISSED":  return .CatchMissed
          default: throw ProtocolBuffersError.InvalidProtocolBuffer("Conversion String to Enum has failed.")
          }
        }
        public var debugDescription:String { return getDescription() }
        public var description:String { return getDescription() }
        private func getDescription() -> String { 
            switch self {
                case .CatchError: return ".CatchError"
                case .CatchSuccess: return ".CatchSuccess"
                case .CatchEscape: return ".CatchEscape"
                case .CatchFlee: return ".CatchFlee"
                case .CatchMissed: return ".CatchMissed"
            }
        }
      }

      //Enum type declaration end 

    public private(set) var status:Pogoprotos.Networking.Responses.CatchPokemonResponse.CatchStatus = Pogoprotos.Networking.Responses.CatchPokemonResponse.CatchStatus.CatchError
    public private(set) var hasStatus:Bool = false
    public private(set) var hasMissPercent:Bool = false
    public private(set) var missPercent:Double = Double(0)

    public private(set) var hasCapturedPokemonId:Bool = false
    public private(set) var capturedPokemonId:UInt64 = UInt64(0)

    public private(set) var hasCaptureAward:Bool = false
    public private(set) var captureAward:Pogoprotos.Data.Capture.CaptureAward!
    required public init() {
         super.init()
    }
    override public func isInitialized() -> Bool {
     return true
    }
    override public func writeToCodedOutputStream(output:CodedOutputStream) throws {
      if hasStatus {
        try output.writeEnum(1, value:status.rawValue)
      }
      if hasMissPercent {
        try output.writeDouble(2, value:missPercent)
      }
      if hasCapturedPokemonId {
        try output.writeUInt64(3, value:capturedPokemonId)
      }
      if hasCaptureAward {
        try output.writeMessage(4, value:captureAward)
      }
      try unknownFields.writeToCodedOutputStream(output)
    }
    override public func serializedSize() -> Int32 {
      var serialize_size:Int32 = memoizedSerializedSize
      if serialize_size != -1 {
       return serialize_size
      }

      serialize_size = 0
      if (hasStatus) {
        serialize_size += status.rawValue.computeEnumSize(1)
      }
      if hasMissPercent {
        serialize_size += missPercent.computeDoubleSize(2)
      }
      if hasCapturedPokemonId {
        serialize_size += capturedPokemonId.computeUInt64Size(3)
      }
      if hasCaptureAward {
          if let varSizecaptureAward = captureAward?.computeMessageSize(4) {
              serialize_size += varSizecaptureAward
          }
      }
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    public class func parseArrayDelimitedFromInputStream(input:NSInputStream) throws -> Array<Pogoprotos.Networking.Responses.CatchPokemonResponse> {
      var mergedArray = Array<Pogoprotos.Networking.Responses.CatchPokemonResponse>()
      while let value = try parseFromDelimitedFromInputStream(input) {
        mergedArray += [value]
      }
      return mergedArray
    }
    public class func parseFromDelimitedFromInputStream(input:NSInputStream) throws -> Pogoprotos.Networking.Responses.CatchPokemonResponse? {
      return try Pogoprotos.Networking.Responses.CatchPokemonResponse.Builder().mergeDelimitedFromInputStream(input)?.build()
    }
    public class func parseFromData(data:NSData) throws -> Pogoprotos.Networking.Responses.CatchPokemonResponse {
      return try Pogoprotos.Networking.Responses.CatchPokemonResponse.Builder().mergeFromData(data, extensionRegistry:Pogoprotos.Networking.Responses.CatchPokemonResponseRoot.sharedInstance.extensionRegistry).build()
    }
    public class func parseFromData(data:NSData, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Responses.CatchPokemonResponse {
      return try Pogoprotos.Networking.Responses.CatchPokemonResponse.Builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromInputStream(input:NSInputStream) throws -> Pogoprotos.Networking.Responses.CatchPokemonResponse {
      return try Pogoprotos.Networking.Responses.CatchPokemonResponse.Builder().mergeFromInputStream(input).build()
    }
    public class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Responses.CatchPokemonResponse {
      return try Pogoprotos.Networking.Responses.CatchPokemonResponse.Builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Networking.Responses.CatchPokemonResponse {
      return try Pogoprotos.Networking.Responses.CatchPokemonResponse.Builder().mergeFromCodedInputStream(input).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Responses.CatchPokemonResponse {
      return try Pogoprotos.Networking.Responses.CatchPokemonResponse.Builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func getBuilder() -> Pogoprotos.Networking.Responses.CatchPokemonResponse.Builder {
      return Pogoprotos.Networking.Responses.CatchPokemonResponse.classBuilder() as! Pogoprotos.Networking.Responses.CatchPokemonResponse.Builder
    }
    public func getBuilder() -> Pogoprotos.Networking.Responses.CatchPokemonResponse.Builder {
      return classBuilder() as! Pogoprotos.Networking.Responses.CatchPokemonResponse.Builder
    }
    override public class func classBuilder() -> MessageBuilder {
      return Pogoprotos.Networking.Responses.CatchPokemonResponse.Builder()
    }
    override public func classBuilder() -> MessageBuilder {
      return Pogoprotos.Networking.Responses.CatchPokemonResponse.Builder()
    }
    public func toBuilder() throws -> Pogoprotos.Networking.Responses.CatchPokemonResponse.Builder {
      return try Pogoprotos.Networking.Responses.CatchPokemonResponse.builderWithPrototype(self)
    }
    public class func builderWithPrototype(prototype:Pogoprotos.Networking.Responses.CatchPokemonResponse) throws -> Pogoprotos.Networking.Responses.CatchPokemonResponse.Builder {
      return try Pogoprotos.Networking.Responses.CatchPokemonResponse.Builder().mergeFrom(prototype)
    }
    override public func encode() throws -> Dictionary<String,AnyObject> {
      guard isInitialized() else {
        throw ProtocolBuffersError.InvalidProtocolBuffer("Uninitialized Message")
      }

      var jsonMap:Dictionary<String,AnyObject> = Dictionary<String,AnyObject>()
      if hasStatus {
        jsonMap["status"] = status.toString()
      }
      if hasMissPercent {
        jsonMap["missPercent"] = NSNumber(double:missPercent)
      }
      if hasCapturedPokemonId {
        jsonMap["capturedPokemonId"] = "\(capturedPokemonId)"
      }
      if hasCaptureAward {
        jsonMap["captureAward"] = try captureAward.encode()
      }
      return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Networking.Responses.CatchPokemonResponse {
      return try Pogoprotos.Networking.Responses.CatchPokemonResponse.Builder.decodeToBuilder(jsonMap).build()
    }
    override class public func fromJSON(data:NSData) throws -> Pogoprotos.Networking.Responses.CatchPokemonResponse {
      return try Pogoprotos.Networking.Responses.CatchPokemonResponse.Builder.fromJSONToBuilder(data).build()
    }
    override public func getDescription(indent:String) throws -> String {
      var output = ""
      if (hasStatus) {
        output += "\(indent) status: \(status.description)\n"
      }
      if hasMissPercent {
        output += "\(indent) missPercent: \(missPercent) \n"
      }
      if hasCapturedPokemonId {
        output += "\(indent) capturedPokemonId: \(capturedPokemonId) \n"
      }
      if hasCaptureAward {
        output += "\(indent) captureAward {\n"
        if let outDescCaptureAward = captureAward {
          output += try outDescCaptureAward.getDescription("\(indent)  ")
        }
        output += "\(indent) }\n"
      }
      output += unknownFields.getDescription(indent)
      return output
    }
    override public var hashValue:Int {
        get {
            var hashCode:Int = 7
            if hasStatus {
               hashCode = (hashCode &* 31) &+ Int(status.rawValue)
            }
            if hasMissPercent {
               hashCode = (hashCode &* 31) &+ missPercent.hashValue
            }
            if hasCapturedPokemonId {
               hashCode = (hashCode &* 31) &+ capturedPokemonId.hashValue
            }
            if hasCaptureAward {
                if let hashValuecaptureAward = captureAward?.hashValue {
                    hashCode = (hashCode &* 31) &+ hashValuecaptureAward
                }
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "Pogoprotos.Networking.Responses.CatchPokemonResponse"
    }
    override public func className() -> String {
        return "Pogoprotos.Networking.Responses.CatchPokemonResponse"
    }
    override public func classMetaType() -> GeneratedMessage.Type {
        return Pogoprotos.Networking.Responses.CatchPokemonResponse.self
    }
    //Meta information declaration end

    final public class Builder : GeneratedMessageBuilder {
      private var builderResult:Pogoprotos.Networking.Responses.CatchPokemonResponse = Pogoprotos.Networking.Responses.CatchPokemonResponse()
      public func getMessage() -> Pogoprotos.Networking.Responses.CatchPokemonResponse {
          return builderResult
      }

      required override public init () {
         super.init()
      }
        public var hasStatus:Bool{
            get {
                return builderResult.hasStatus
            }
        }
        public var status:Pogoprotos.Networking.Responses.CatchPokemonResponse.CatchStatus {
            get {
                return builderResult.status
            }
            set (value) {
                builderResult.hasStatus = true
                builderResult.status = value
            }
        }
        public func setStatus(value:Pogoprotos.Networking.Responses.CatchPokemonResponse.CatchStatus) -> Pogoprotos.Networking.Responses.CatchPokemonResponse.Builder {
          self.status = value
          return self
        }
        public func clearStatus() -> Pogoprotos.Networking.Responses.CatchPokemonResponse.Builder {
           builderResult.hasStatus = false
           builderResult.status = .CatchError
           return self
        }
      public var hasMissPercent:Bool {
           get {
                return builderResult.hasMissPercent
           }
      }
      public var missPercent:Double {
           get {
                return builderResult.missPercent
           }
           set (value) {
               builderResult.hasMissPercent = true
               builderResult.missPercent = value
           }
      }
      public func setMissPercent(value:Double) -> Pogoprotos.Networking.Responses.CatchPokemonResponse.Builder {
        self.missPercent = value
        return self
      }
      public func clearMissPercent() -> Pogoprotos.Networking.Responses.CatchPokemonResponse.Builder{
           builderResult.hasMissPercent = false
           builderResult.missPercent = Double(0)
           return self
      }
      public var hasCapturedPokemonId:Bool {
           get {
                return builderResult.hasCapturedPokemonId
           }
      }
      public var capturedPokemonId:UInt64 {
           get {
                return builderResult.capturedPokemonId
           }
           set (value) {
               builderResult.hasCapturedPokemonId = true
               builderResult.capturedPokemonId = value
           }
      }
      public func setCapturedPokemonId(value:UInt64) -> Pogoprotos.Networking.Responses.CatchPokemonResponse.Builder {
        self.capturedPokemonId = value
        return self
      }
      public func clearCapturedPokemonId() -> Pogoprotos.Networking.Responses.CatchPokemonResponse.Builder{
           builderResult.hasCapturedPokemonId = false
           builderResult.capturedPokemonId = UInt64(0)
           return self
      }
      public var hasCaptureAward:Bool {
           get {
               return builderResult.hasCaptureAward
           }
      }
      public var captureAward:Pogoprotos.Data.Capture.CaptureAward! {
           get {
               if captureAwardBuilder_ != nil {
                  builderResult.captureAward = captureAwardBuilder_.getMessage()
               }
               return builderResult.captureAward
           }
           set (value) {
               builderResult.hasCaptureAward = true
               builderResult.captureAward = value
           }
      }
      private var captureAwardBuilder_:Pogoprotos.Data.Capture.CaptureAward.Builder! {
           didSet {
              builderResult.hasCaptureAward = true
           }
      }
      public func getCaptureAwardBuilder() -> Pogoprotos.Data.Capture.CaptureAward.Builder {
        if captureAwardBuilder_ == nil {
           captureAwardBuilder_ = Pogoprotos.Data.Capture.CaptureAward.Builder()
           builderResult.captureAward = captureAwardBuilder_.getMessage()
           if captureAward != nil {
              try! captureAwardBuilder_.mergeFrom(captureAward)
           }
        }
        return captureAwardBuilder_
      }
      public func setCaptureAward(value:Pogoprotos.Data.Capture.CaptureAward!) -> Pogoprotos.Networking.Responses.CatchPokemonResponse.Builder {
        self.captureAward = value
        return self
      }
      public func mergeCaptureAward(value:Pogoprotos.Data.Capture.CaptureAward) throws -> Pogoprotos.Networking.Responses.CatchPokemonResponse.Builder {
        if builderResult.hasCaptureAward {
          builderResult.captureAward = try Pogoprotos.Data.Capture.CaptureAward.builderWithPrototype(builderResult.captureAward).mergeFrom(value).buildPartial()
        } else {
          builderResult.captureAward = value
        }
        builderResult.hasCaptureAward = true
        return self
      }
      public func clearCaptureAward() -> Pogoprotos.Networking.Responses.CatchPokemonResponse.Builder {
        captureAwardBuilder_ = nil
        builderResult.hasCaptureAward = false
        builderResult.captureAward = nil
        return self
      }
      override public var internalGetResult:GeneratedMessage {
           get {
              return builderResult
           }
      }
      override public func clear() -> Pogoprotos.Networking.Responses.CatchPokemonResponse.Builder {
        builderResult = Pogoprotos.Networking.Responses.CatchPokemonResponse()
        return self
      }
      override public func clone() throws -> Pogoprotos.Networking.Responses.CatchPokemonResponse.Builder {
        return try Pogoprotos.Networking.Responses.CatchPokemonResponse.builderWithPrototype(builderResult)
      }
      override public func build() throws -> Pogoprotos.Networking.Responses.CatchPokemonResponse {
           try checkInitialized()
           return buildPartial()
      }
      public func buildPartial() -> Pogoprotos.Networking.Responses.CatchPokemonResponse {
        let returnMe:Pogoprotos.Networking.Responses.CatchPokemonResponse = builderResult
        return returnMe
      }
      public func mergeFrom(other:Pogoprotos.Networking.Responses.CatchPokemonResponse) throws -> Pogoprotos.Networking.Responses.CatchPokemonResponse.Builder {
        if other == Pogoprotos.Networking.Responses.CatchPokemonResponse() {
         return self
        }
        if other.hasStatus {
             status = other.status
        }
        if other.hasMissPercent {
             missPercent = other.missPercent
        }
        if other.hasCapturedPokemonId {
             capturedPokemonId = other.capturedPokemonId
        }
        if (other.hasCaptureAward) {
            try mergeCaptureAward(other.captureAward)
        }
        try mergeUnknownFields(other.unknownFields)
        return self
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Networking.Responses.CatchPokemonResponse.Builder {
           return try mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Responses.CatchPokemonResponse.Builder {
        let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
        while (true) {
          let protobufTag = try input.readTag()
          switch protobufTag {
          case 0: 
            self.unknownFields = try unknownFieldsBuilder.build()
            return self

          case 8:
            let valueIntstatus = try input.readEnum()
            if let enumsstatus = Pogoprotos.Networking.Responses.CatchPokemonResponse.CatchStatus(rawValue:valueIntstatus){
                 status = enumsstatus
            } else {
                 try unknownFieldsBuilder.mergeVarintField(1, value:Int64(valueIntstatus))
            }

          case 17:
            missPercent = try input.readDouble()

          case 24:
            capturedPokemonId = try input.readUInt64()

          case 34:
            let subBuilder:Pogoprotos.Data.Capture.CaptureAward.Builder = Pogoprotos.Data.Capture.CaptureAward.Builder()
            if hasCaptureAward {
              try subBuilder.mergeFrom(captureAward)
            }
            try input.readMessage(subBuilder, extensionRegistry:extensionRegistry)
            captureAward = subBuilder.buildPartial()

          default:
            if (!(try parseUnknownField(input,unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
               unknownFields = try unknownFieldsBuilder.build()
               return self
            }
          }
        }
      }
      override class public func decodeToBuilder(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Networking.Responses.CatchPokemonResponse.Builder {
        let resultDecodedBuilder = Pogoprotos.Networking.Responses.CatchPokemonResponse.Builder()
        if let jsonValueStatus = jsonMap["status"] as? String {
          resultDecodedBuilder.status = try Pogoprotos.Networking.Responses.CatchPokemonResponse.CatchStatus.fromString(jsonValueStatus)
        }
        if let jsonValueMissPercent = jsonMap["missPercent"] as? NSNumber {
          resultDecodedBuilder.missPercent = jsonValueMissPercent.doubleValue
        }
        if let jsonValueCapturedPokemonId = jsonMap["capturedPokemonId"] as? String {
          resultDecodedBuilder.capturedPokemonId = UInt64(jsonValueCapturedPokemonId)!
        }
        if let jsonValueCaptureAward = jsonMap["captureAward"] as? Dictionary<String,AnyObject> {
          resultDecodedBuilder.captureAward = try Pogoprotos.Data.Capture.CaptureAward.Builder.decodeToBuilder(jsonValueCaptureAward).build()

        }
        return resultDecodedBuilder
      }
      override class public func fromJSONToBuilder(data:NSData) throws -> Pogoprotos.Networking.Responses.CatchPokemonResponse.Builder {
        let jsonData = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions(rawValue: 0))
        guard let jsDataCast = jsonData as? Dictionary<String,AnyObject> else {
          throw ProtocolBuffersError.InvalidProtocolBuffer("Invalid JSON data")
        }
        return try Pogoprotos.Networking.Responses.CatchPokemonResponse.Builder.decodeToBuilder(jsDataCast)
      }
    }

  }

}

// @@protoc_insertion_point(global_scope)
