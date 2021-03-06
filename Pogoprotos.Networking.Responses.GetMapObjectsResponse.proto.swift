// Generated by the Protocol Buffers 3.0 compiler.  DO NOT EDIT!
// Source file "GetMapObjectsResponse.proto"
// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct Pogoprotos { public struct Networking { public struct Responses { }}}

public func == (lhs: Pogoprotos.Networking.Responses.GetMapObjectsResponse, rhs: Pogoprotos.Networking.Responses.GetMapObjectsResponse) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.mapCells == rhs.mapCells)
  fieldCheck = fieldCheck && (lhs.hasStatus == rhs.hasStatus) && (!lhs.hasStatus || lhs.status == rhs.status)
  fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
  return fieldCheck
}

public extension Pogoprotos.Networking.Responses {
  public struct GetMapObjectsResponseRoot {
    public static var sharedInstance : GetMapObjectsResponseRoot {
     struct Static {
         static let instance : GetMapObjectsResponseRoot = GetMapObjectsResponseRoot()
     }
     return Static.instance
    }
    public var extensionRegistry:ExtensionRegistry

    init() {
      extensionRegistry = ExtensionRegistry()
      registerAllExtensions(extensionRegistry)
      Pogoprotos.Map.MapCellRoot.sharedInstance.registerAllExtensions(extensionRegistry)
      Pogoprotos.Map.MapObjectsStatusRoot.sharedInstance.registerAllExtensions(extensionRegistry)
    }
    public func registerAllExtensions(registry:ExtensionRegistry) {
    }
  }

  final public class GetMapObjectsResponse : GeneratedMessage, GeneratedMessageProtocol {
    public private(set) var mapCells:Array<Pogoprotos.Map.MapCell>  = Array<Pogoprotos.Map.MapCell>()
    public private(set) var status:Pogoprotos.Map.MapObjectsStatus = Pogoprotos.Map.MapObjectsStatus.UnsetStatus
    public private(set) var hasStatus:Bool = false
    required public init() {
         super.init()
    }
    override public func isInitialized() -> Bool {
     return true
    }
    override public func writeToCodedOutputStream(output:CodedOutputStream) throws {
      for oneElementMapCells in mapCells {
          try output.writeMessage(1, value:oneElementMapCells)
      }
      if hasStatus {
        try output.writeEnum(2, value:status.rawValue)
      }
      try unknownFields.writeToCodedOutputStream(output)
    }
    override public func serializedSize() -> Int32 {
      var serialize_size:Int32 = memoizedSerializedSize
      if serialize_size != -1 {
       return serialize_size
      }

      serialize_size = 0
      for oneElementMapCells in mapCells {
          serialize_size += oneElementMapCells.computeMessageSize(1)
      }
      if (hasStatus) {
        serialize_size += status.rawValue.computeEnumSize(2)
      }
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    public class func parseArrayDelimitedFromInputStream(input:NSInputStream) throws -> Array<Pogoprotos.Networking.Responses.GetMapObjectsResponse> {
      var mergedArray = Array<Pogoprotos.Networking.Responses.GetMapObjectsResponse>()
      while let value = try parseFromDelimitedFromInputStream(input) {
        mergedArray += [value]
      }
      return mergedArray
    }
    public class func parseFromDelimitedFromInputStream(input:NSInputStream) throws -> Pogoprotos.Networking.Responses.GetMapObjectsResponse? {
      return try Pogoprotos.Networking.Responses.GetMapObjectsResponse.Builder().mergeDelimitedFromInputStream(input)?.build()
    }
    public class func parseFromData(data:NSData) throws -> Pogoprotos.Networking.Responses.GetMapObjectsResponse {
      return try Pogoprotos.Networking.Responses.GetMapObjectsResponse.Builder().mergeFromData(data, extensionRegistry:Pogoprotos.Networking.Responses.GetMapObjectsResponseRoot.sharedInstance.extensionRegistry).build()
    }
    public class func parseFromData(data:NSData, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Responses.GetMapObjectsResponse {
      return try Pogoprotos.Networking.Responses.GetMapObjectsResponse.Builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromInputStream(input:NSInputStream) throws -> Pogoprotos.Networking.Responses.GetMapObjectsResponse {
      return try Pogoprotos.Networking.Responses.GetMapObjectsResponse.Builder().mergeFromInputStream(input).build()
    }
    public class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Responses.GetMapObjectsResponse {
      return try Pogoprotos.Networking.Responses.GetMapObjectsResponse.Builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Networking.Responses.GetMapObjectsResponse {
      return try Pogoprotos.Networking.Responses.GetMapObjectsResponse.Builder().mergeFromCodedInputStream(input).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Responses.GetMapObjectsResponse {
      return try Pogoprotos.Networking.Responses.GetMapObjectsResponse.Builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func getBuilder() -> Pogoprotos.Networking.Responses.GetMapObjectsResponse.Builder {
      return Pogoprotos.Networking.Responses.GetMapObjectsResponse.classBuilder() as! Pogoprotos.Networking.Responses.GetMapObjectsResponse.Builder
    }
    public func getBuilder() -> Pogoprotos.Networking.Responses.GetMapObjectsResponse.Builder {
      return classBuilder() as! Pogoprotos.Networking.Responses.GetMapObjectsResponse.Builder
    }
    override public class func classBuilder() -> MessageBuilder {
      return Pogoprotos.Networking.Responses.GetMapObjectsResponse.Builder()
    }
    override public func classBuilder() -> MessageBuilder {
      return Pogoprotos.Networking.Responses.GetMapObjectsResponse.Builder()
    }
    public func toBuilder() throws -> Pogoprotos.Networking.Responses.GetMapObjectsResponse.Builder {
      return try Pogoprotos.Networking.Responses.GetMapObjectsResponse.builderWithPrototype(self)
    }
    public class func builderWithPrototype(prototype:Pogoprotos.Networking.Responses.GetMapObjectsResponse) throws -> Pogoprotos.Networking.Responses.GetMapObjectsResponse.Builder {
      return try Pogoprotos.Networking.Responses.GetMapObjectsResponse.Builder().mergeFrom(prototype)
    }
    override public func encode() throws -> Dictionary<String,AnyObject> {
      guard isInitialized() else {
        throw ProtocolBuffersError.InvalidProtocolBuffer("Uninitialized Message")
      }

      var jsonMap:Dictionary<String,AnyObject> = Dictionary<String,AnyObject>()
      if !mapCells.isEmpty {
        var jsonArrayMapCells:Array<Dictionary<String,AnyObject>> = []
          for oneValueMapCells in mapCells {
            let ecodedMessageMapCells = try oneValueMapCells.encode()
            jsonArrayMapCells += [ecodedMessageMapCells]
          }
        jsonMap["mapCells"] = jsonArrayMapCells
      }
      if hasStatus {
        jsonMap["status"] = status.toString()
      }
      return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Networking.Responses.GetMapObjectsResponse {
      return try Pogoprotos.Networking.Responses.GetMapObjectsResponse.Builder.decodeToBuilder(jsonMap).build()
    }
    override class public func fromJSON(data:NSData) throws -> Pogoprotos.Networking.Responses.GetMapObjectsResponse {
      return try Pogoprotos.Networking.Responses.GetMapObjectsResponse.Builder.fromJSONToBuilder(data).build()
    }
    override public func getDescription(indent:String) throws -> String {
      var output = ""
      var mapCellsElementIndex:Int = 0
      for oneElementMapCells in mapCells {
          output += "\(indent) mapCells[\(mapCellsElementIndex)] {\n"
          output += try oneElementMapCells.getDescription("\(indent)  ")
          output += "\(indent)}\n"
          mapCellsElementIndex += 1
      }
      if (hasStatus) {
        output += "\(indent) status: \(status.description)\n"
      }
      output += unknownFields.getDescription(indent)
      return output
    }
    override public var hashValue:Int {
        get {
            var hashCode:Int = 7
            for oneElementMapCells in mapCells {
                hashCode = (hashCode &* 31) &+ oneElementMapCells.hashValue
            }
            if hasStatus {
               hashCode = (hashCode &* 31) &+ Int(status.rawValue)
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "Pogoprotos.Networking.Responses.GetMapObjectsResponse"
    }
    override public func className() -> String {
        return "Pogoprotos.Networking.Responses.GetMapObjectsResponse"
    }
    override public func classMetaType() -> GeneratedMessage.Type {
        return Pogoprotos.Networking.Responses.GetMapObjectsResponse.self
    }
    //Meta information declaration end

    final public class Builder : GeneratedMessageBuilder {
      private var builderResult:Pogoprotos.Networking.Responses.GetMapObjectsResponse = Pogoprotos.Networking.Responses.GetMapObjectsResponse()
      public func getMessage() -> Pogoprotos.Networking.Responses.GetMapObjectsResponse {
          return builderResult
      }

      required override public init () {
         super.init()
      }
      public var mapCells:Array<Pogoprotos.Map.MapCell> {
           get {
               return builderResult.mapCells
           }
           set (value) {
               builderResult.mapCells = value
           }
      }
      public func setMapCells(value:Array<Pogoprotos.Map.MapCell>) -> Pogoprotos.Networking.Responses.GetMapObjectsResponse.Builder {
        self.mapCells = value
        return self
      }
      public func clearMapCells() -> Pogoprotos.Networking.Responses.GetMapObjectsResponse.Builder {
        builderResult.mapCells.removeAll(keepCapacity: false)
        return self
      }
        public var hasStatus:Bool{
            get {
                return builderResult.hasStatus
            }
        }
        public var status:Pogoprotos.Map.MapObjectsStatus {
            get {
                return builderResult.status
            }
            set (value) {
                builderResult.hasStatus = true
                builderResult.status = value
            }
        }
        public func setStatus(value:Pogoprotos.Map.MapObjectsStatus) -> Pogoprotos.Networking.Responses.GetMapObjectsResponse.Builder {
          self.status = value
          return self
        }
        public func clearStatus() -> Pogoprotos.Networking.Responses.GetMapObjectsResponse.Builder {
           builderResult.hasStatus = false
           builderResult.status = .UnsetStatus
           return self
        }
      override public var internalGetResult:GeneratedMessage {
           get {
              return builderResult
           }
      }
      override public func clear() -> Pogoprotos.Networking.Responses.GetMapObjectsResponse.Builder {
        builderResult = Pogoprotos.Networking.Responses.GetMapObjectsResponse()
        return self
      }
      override public func clone() throws -> Pogoprotos.Networking.Responses.GetMapObjectsResponse.Builder {
        return try Pogoprotos.Networking.Responses.GetMapObjectsResponse.builderWithPrototype(builderResult)
      }
      override public func build() throws -> Pogoprotos.Networking.Responses.GetMapObjectsResponse {
           try checkInitialized()
           return buildPartial()
      }
      public func buildPartial() -> Pogoprotos.Networking.Responses.GetMapObjectsResponse {
        let returnMe:Pogoprotos.Networking.Responses.GetMapObjectsResponse = builderResult
        return returnMe
      }
      public func mergeFrom(other:Pogoprotos.Networking.Responses.GetMapObjectsResponse) throws -> Pogoprotos.Networking.Responses.GetMapObjectsResponse.Builder {
        if other == Pogoprotos.Networking.Responses.GetMapObjectsResponse() {
         return self
        }
        if !other.mapCells.isEmpty  {
           builderResult.mapCells += other.mapCells
        }
        if other.hasStatus {
             status = other.status
        }
        try mergeUnknownFields(other.unknownFields)
        return self
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream) throws -> Pogoprotos.Networking.Responses.GetMapObjectsResponse.Builder {
           return try mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
      }
      override public func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Pogoprotos.Networking.Responses.GetMapObjectsResponse.Builder {
        let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
        while (true) {
          let protobufTag = try input.readTag()
          switch protobufTag {
          case 0: 
            self.unknownFields = try unknownFieldsBuilder.build()
            return self

          case 10:
            let subBuilder = Pogoprotos.Map.MapCell.Builder()
            try input.readMessage(subBuilder,extensionRegistry:extensionRegistry)
            mapCells += [subBuilder.buildPartial()]

          case 16:
            let valueIntstatus = try input.readEnum()
            if let enumsstatus = Pogoprotos.Map.MapObjectsStatus(rawValue:valueIntstatus){
                 status = enumsstatus
            } else {
                 try unknownFieldsBuilder.mergeVarintField(2, value:Int64(valueIntstatus))
            }

          default:
            if (!(try parseUnknownField(input,unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
               unknownFields = try unknownFieldsBuilder.build()
               return self
            }
          }
        }
      }
      override class public func decodeToBuilder(jsonMap:Dictionary<String,AnyObject>) throws -> Pogoprotos.Networking.Responses.GetMapObjectsResponse.Builder {
        let resultDecodedBuilder = Pogoprotos.Networking.Responses.GetMapObjectsResponse.Builder()
        if let jsonValueMapCells = jsonMap["mapCells"] as? Array<Dictionary<String,AnyObject>> {
          var jsonArrayMapCells:Array<Pogoprotos.Map.MapCell> = []
          for oneValueMapCells in jsonValueMapCells {
            let messageFromStringMapCells = try Pogoprotos.Map.MapCell.Builder.decodeToBuilder(oneValueMapCells).build()

            jsonArrayMapCells += [messageFromStringMapCells]
          }
          resultDecodedBuilder.mapCells = jsonArrayMapCells
        }
        if let jsonValueStatus = jsonMap["status"] as? String {
          resultDecodedBuilder.status = try Pogoprotos.Map.MapObjectsStatus.fromString(jsonValueStatus)
        }
        return resultDecodedBuilder
      }
      override class public func fromJSONToBuilder(data:NSData) throws -> Pogoprotos.Networking.Responses.GetMapObjectsResponse.Builder {
        let jsonData = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions(rawValue: 0))
        guard let jsDataCast = jsonData as? Dictionary<String,AnyObject> else {
          throw ProtocolBuffersError.InvalidProtocolBuffer("Invalid JSON data")
        }
        return try Pogoprotos.Networking.Responses.GetMapObjectsResponse.Builder.decodeToBuilder(jsDataCast)
      }
    }

  }

}

// @@protoc_insertion_point(global_scope)
