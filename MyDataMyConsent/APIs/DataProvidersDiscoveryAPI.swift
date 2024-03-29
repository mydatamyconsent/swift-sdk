//
// DataProvidersDiscoveryAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class DataProvidersDiscoveryAPI {

    /**
     Discover all data providers in my data my consent by country and filters.
     
     - parameter countryIso2Code: (query)  
     - parameter pageNo: (query)  (optional)
     - parameter pageSize: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func v1DataProvidersGet(countryIso2Code: String, pageNo: Int? = nil, pageSize: Int? = nil, apiResponseQueue: DispatchQueue = MyDataMyConsentAPI.apiResponseQueue, completion: @escaping ((_ data: PaginatedListOfDataProviders?, _ error: Error?) -> Void)) -> RequestTask {
        return v1DataProvidersGetWithRequestBuilder(countryIso2Code: countryIso2Code, pageNo: pageNo, pageSize: pageSize).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Discover all data providers in my data my consent by country and filters.
     - GET /v1/data-providers
     - OAuth:
       - type: oauth2
       - name: OAuth2ClientCredentials
     - parameter countryIso2Code: (query)  
     - parameter pageNo: (query)  (optional)
     - parameter pageSize: (query)  (optional)
     - returns: RequestBuilder<PaginatedListOfDataProviders> 
     */
    open class func v1DataProvidersGetWithRequestBuilder(countryIso2Code: String, pageNo: Int? = nil, pageSize: Int? = nil) -> RequestBuilder<PaginatedListOfDataProviders> {
        let localVariablePath = "/v1/data-providers"
        let localVariableURLString = MyDataMyConsentAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "country_iso2_code": (wrappedValue: countryIso2Code.encodeToJSON(), isExplode: true),
            "page_no": (wrappedValue: pageNo?.encodeToJSON(), isExplode: true),
            "page_size": (wrappedValue: pageSize?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<PaginatedListOfDataProviders>.Type = MyDataMyConsentAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Get a data provider details by provider id.
     
     - parameter id: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func v1DataProvidersIdGet(id: String, apiResponseQueue: DispatchQueue = MyDataMyConsentAPI.apiResponseQueue, completion: @escaping ((_ data: DataProviderDetails?, _ error: Error?) -> Void)) -> RequestTask {
        return v1DataProvidersIdGetWithRequestBuilder(id: id).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get a data provider details by provider id.
     - GET /v1/data-providers/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2ClientCredentials
     - parameter id: (path)  
     - returns: RequestBuilder<DataProviderDetails> 
     */
    open class func v1DataProvidersIdGetWithRequestBuilder(id: String) -> RequestBuilder<DataProviderDetails> {
        var localVariablePath = "/v1/data-providers/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = MyDataMyConsentAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<DataProviderDetails>.Type = MyDataMyConsentAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
