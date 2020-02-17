//
// Dog.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class Dog: Pet {
    public enum Breed: String {
        case dingo = "Dingo"
        case husky = "Husky"
        case retriever = "Retriever"
        case shepherd = "Shepherd"
    }
    public var bark: Bool?
    public var barkNum: NSNumber? {
        get {
            return bark.map({ return NSNumber(value: $0) })
        }
    }
        public var breed: Breed?

    

    // MARK: JSONEncodable
    override open func encodeToJSON() -> Any {
        var nillableDictionary = super.encodeToJSON() as? [String:Any?] ?? [String:Any?]()
        nillableDictionary["bark"] = self.bark
        nillableDictionary["breed"] = self.breed?.rawValue

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
