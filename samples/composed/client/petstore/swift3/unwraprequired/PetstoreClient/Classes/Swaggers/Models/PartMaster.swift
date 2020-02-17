//
// PartMaster.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class PartMaster: JSONEncodable {
    public var destination: OneOfPartMasterDestination?
    public var origin: OneOfPartMasterOrigin?


    public init(destination: OneOfPartMasterDestination?=nil, origin: OneOfPartMasterOrigin?=nil) {
        self.destination = destination
        self.origin = origin
    }
    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
