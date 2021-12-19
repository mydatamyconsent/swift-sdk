//
// DigiLockerCompatIssuerAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class DigiLockerCompatIssuerAPI {

    /**
     Digilocker Compatible endpoint to Issue Documents.
     
     - parameter pushUriRequest: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func issuerIssuedoc1XmlPost(pushUriRequest: PushUriRequest? = nil, apiResponseQueue: DispatchQueue = OpenAPIClient.apiResponseQueue, completion: @escaping ((_ data: PushUriResponse?, _ error: Error?) -> Void)) {
        issuerIssuedoc1XmlPostWithRequestBuilder(pushUriRequest: pushUriRequest).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Digilocker Compatible endpoint to Issue Documents.
     - POST /issuer/issuedoc/1/xml
     - parameter pushUriRequest: (body)  (optional)
     - returns: RequestBuilder<PushUriResponse> 
     */
    open class func issuerIssuedoc1XmlPostWithRequestBuilder(pushUriRequest: PushUriRequest? = nil) -> RequestBuilder<PushUriResponse> {
        let localVariablePath = "/issuer/issuedoc/1/xml"
        let localVariableURLString = OpenAPIClient.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: pushUriRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<PushUriResponse>.Type = OpenAPIClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
