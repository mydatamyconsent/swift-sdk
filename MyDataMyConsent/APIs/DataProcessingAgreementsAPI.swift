//
// DataProcessingAgreementsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class DataProcessingAgreementsAPI {

    /**
     Get all data processing agreements.
     
     - parameter pageNo: (query) Page number. (optional, default to 1)
     - parameter pageSize: (query) Number of items to return. (optional, default to 25)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func v1DataAgreementsGet(pageNo: Int? = nil, pageSize: Int? = nil, apiResponseQueue: DispatchQueue = MyDataMyConsent.apiResponseQueue, completion: @escaping ((_ data: DataProcessingAgreementPaginatedList?, _ error: Error?) -> Void)) {
        v1DataAgreementsGetWithRequestBuilder(pageNo: pageNo, pageSize: pageSize).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get all data processing agreements.
     - GET /v1/data-agreements
     - parameter pageNo: (query) Page number. (optional, default to 1)
     - parameter pageSize: (query) Number of items to return. (optional, default to 25)
     - returns: RequestBuilder<DataProcessingAgreementPaginatedList> 
     */
    open class func v1DataAgreementsGetWithRequestBuilder(pageNo: Int? = nil, pageSize: Int? = nil) -> RequestBuilder<DataProcessingAgreementPaginatedList> {
        let localVariablePath = "/v1/data-agreements"
        let localVariableURLString = MyDataMyConsent.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "pageNo": pageNo?.encodeToJSON(),
            "pageSize": pageSize?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<DataProcessingAgreementPaginatedList>.Type = MyDataMyConsent.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Delete a data processing agreement. This will not delete a published or a agreement in use with consents.
     
     - parameter id: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func v1DataAgreementsIdDelete(id: UUID, apiResponseQueue: DispatchQueue = MyDataMyConsent.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
        v1DataAgreementsIdDeleteWithRequestBuilder(id: id).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Delete a data processing agreement. This will not delete a published or a agreement in use with consents.
     - DELETE /v1/data-agreements/{id}
     - parameter id: (path)  
     - returns: RequestBuilder<Void> 
     */
    open class func v1DataAgreementsIdDeleteWithRequestBuilder(id: UUID) -> RequestBuilder<Void> {
        var localVariablePath = "/v1/data-agreements/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = MyDataMyConsent.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = MyDataMyConsent.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get data processing agreement by Id.
     
     - parameter id: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func v1DataAgreementsIdGet(id: UUID, apiResponseQueue: DispatchQueue = MyDataMyConsent.apiResponseQueue, completion: @escaping ((_ data: DataProcessingAgreement?, _ error: Error?) -> Void)) {
        v1DataAgreementsIdGetWithRequestBuilder(id: id).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get data processing agreement by Id.
     - GET /v1/data-agreements/{id}
     - parameter id: (path)  
     - returns: RequestBuilder<DataProcessingAgreement> 
     */
    open class func v1DataAgreementsIdGetWithRequestBuilder(id: UUID) -> RequestBuilder<DataProcessingAgreement> {
        var localVariablePath = "/v1/data-agreements/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = MyDataMyConsent.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<DataProcessingAgreement>.Type = MyDataMyConsent.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Update a data processing agreement.
     
     - parameter id: (path)  
     - parameter dataProcessingAgreement: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func v1DataAgreementsIdPut(id: UUID, dataProcessingAgreement: DataProcessingAgreement? = nil, apiResponseQueue: DispatchQueue = MyDataMyConsent.apiResponseQueue, completion: @escaping ((_ data: DataProcessingAgreement?, _ error: Error?) -> Void)) {
        v1DataAgreementsIdPutWithRequestBuilder(id: id, dataProcessingAgreement: dataProcessingAgreement).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Update a data processing agreement.
     - PUT /v1/data-agreements/{id}
     - parameter id: (path)  
     - parameter dataProcessingAgreement: (body)  (optional)
     - returns: RequestBuilder<DataProcessingAgreement> 
     */
    open class func v1DataAgreementsIdPutWithRequestBuilder(id: UUID, dataProcessingAgreement: DataProcessingAgreement? = nil) -> RequestBuilder<DataProcessingAgreement> {
        var localVariablePath = "/v1/data-agreements/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = MyDataMyConsent.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: dataProcessingAgreement)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<DataProcessingAgreement>.Type = MyDataMyConsent.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Terminate a data processing agreement.
     
     - parameter id: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func v1DataAgreementsIdTerminatePut(id: UUID, apiResponseQueue: DispatchQueue = MyDataMyConsent.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
        v1DataAgreementsIdTerminatePutWithRequestBuilder(id: id).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Terminate a data processing agreement.
     - PUT /v1/data-agreements/{id}/terminate
     - parameter id: (path)  
     - returns: RequestBuilder<Void> 
     */
    open class func v1DataAgreementsIdTerminatePutWithRequestBuilder(id: UUID) -> RequestBuilder<Void> {
        var localVariablePath = "/v1/data-agreements/{id}/terminate"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = MyDataMyConsent.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = MyDataMyConsent.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Create a data processing agreement.
     
     - parameter dataProcessingAgreement: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func v1DataAgreementsPost(dataProcessingAgreement: DataProcessingAgreement? = nil, apiResponseQueue: DispatchQueue = MyDataMyConsent.apiResponseQueue, completion: @escaping ((_ data: DataProcessingAgreement?, _ error: Error?) -> Void)) {
        v1DataAgreementsPostWithRequestBuilder(dataProcessingAgreement: dataProcessingAgreement).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Create a data processing agreement.
     - POST /v1/data-agreements
     - parameter dataProcessingAgreement: (body)  (optional)
     - returns: RequestBuilder<DataProcessingAgreement> 
     */
    open class func v1DataAgreementsPostWithRequestBuilder(dataProcessingAgreement: DataProcessingAgreement? = nil) -> RequestBuilder<DataProcessingAgreement> {
        let localVariablePath = "/v1/data-agreements"
        let localVariableURLString = MyDataMyConsent.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: dataProcessingAgreement)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<DataProcessingAgreement>.Type = MyDataMyConsent.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}