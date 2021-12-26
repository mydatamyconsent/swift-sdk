//
// DataProviderDiscoveryAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class DataProviderDiscoveryAPI {

    /**
     Discover all data providers in My Data My Consent by country and filters.
     
     - parameter accountType: (query) Account type. (optional)
     - parameter documentType: (query) Document type. (optional)
     - parameter organizationCategory: (query) Organization category. (optional)
     - parameter pageNo: (query) Page number. (optional)
     - parameter pageSize: (query) Page size. (optional)
     - parameter country: (query) ISO2 Country code. (optional, default to "IN")
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func v1DataProvidersGet(accountType: String? = nil, documentType: String? = nil, organizationCategory: String? = nil, pageNo: Int? = nil, pageSize: Int? = nil, country: String? = nil, apiResponseQueue: DispatchQueue = MyDataMyConsent.apiResponseQueue, completion: @escaping ((_ data: DataProviderPaginatedList?, _ error: Error?) -> Void)) {
        v1DataProvidersGetWithRequestBuilder(accountType: accountType, documentType: documentType, organizationCategory: organizationCategory, pageNo: pageNo, pageSize: pageSize, country: country).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Discover all data providers in My Data My Consent by country and filters.
     - GET /v1/data-providers
     - .
     - parameter accountType: (query) Account type. (optional)
     - parameter documentType: (query) Document type. (optional)
     - parameter organizationCategory: (query) Organization category. (optional)
     - parameter pageNo: (query) Page number. (optional)
     - parameter pageSize: (query) Page size. (optional)
     - parameter country: (query) ISO2 Country code. (optional, default to "IN")
     - returns: RequestBuilder<DataProviderPaginatedList> 
     */
    open class func v1DataProvidersGetWithRequestBuilder(accountType: String? = nil, documentType: String? = nil, organizationCategory: String? = nil, pageNo: Int? = nil, pageSize: Int? = nil, country: String? = nil) -> RequestBuilder<DataProviderPaginatedList> {
        let localVariablePath = "/v1/data-providers"
        let localVariableURLString = MyDataMyConsent.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "accountType": accountType?.encodeToJSON(),
            "documentType": documentType?.encodeToJSON(),
            "organizationCategory": organizationCategory?.encodeToJSON(),
            "pageNo": pageNo?.encodeToJSON(),
            "pageSize": pageSize?.encodeToJSON(),
            "country": country?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<DataProviderPaginatedList>.Type = MyDataMyConsent.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get a Data Provider details.
     
     - parameter providerId: (path) Provider Id. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func v1DataProvidersProviderIdGet(providerId: String, apiResponseQueue: DispatchQueue = MyDataMyConsent.apiResponseQueue, completion: @escaping ((_ data: DataProvider?, _ error: Error?) -> Void)) {
        v1DataProvidersProviderIdGetWithRequestBuilder(providerId: providerId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get a Data Provider details.
     - GET /v1/data-providers/{providerId}
     - .
     - parameter providerId: (path) Provider Id. 
     - returns: RequestBuilder<DataProvider> 
     */
    open class func v1DataProvidersProviderIdGetWithRequestBuilder(providerId: String) -> RequestBuilder<DataProvider> {
        var localVariablePath = "/v1/data-providers/{providerId}"
        let providerIdPreEscape = "\(APIHelper.mapValueToPathItem(providerId))"
        let providerIdPostEscape = providerIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{providerId}", with: providerIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = MyDataMyConsent.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<DataProvider>.Type = MyDataMyConsent.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}