////
////  IsNetworkConnectivityAvailable.swift
////  BookmarkMobile
////
////  Created by Özcan AKKOCA on 16.02.2018.
////  Copyright © 2018 Nookmark. All rights reserved.
////
//
//import SystemConfiguration
//
//protocol NetworkConnectivityChecking {
//    func isNetworkConnectivityAvailable() -> Bool
//}
//
//extension NetworkConnectivityChecking {
//    /// İnternet bağlantısı kontrol fonksiyonu
//    ///
//    /// - Returns: true or false
//    func isNetworkConnectivityAvailable() -> Bool {
//        var zeroAddress = sockaddr_in()
//        zeroAddress.sin_len = UInt8(MemoryLayout.size(ofValue: zeroAddress))
//        zeroAddress.sin_family = sa_family_t(AF_INET)
//
//        let defaultRouteReachability = withUnsafePointer(to: &zeroAddress) {
//            $0.withMemoryRebound(to: sockaddr.self, capacity: 1) {zeroSockAddress in
//                SCNetworkReachabilityCreateWithAddress(nil, zeroSockAddress)
//            }
//        }
//
//        var flags = SCNetworkReachabilityFlags()
//
//        if !SCNetworkReachabilityGetFlags(defaultRouteReachability!, &flags) {
//            return false
//        }
//
//        let isReachable = (flags.rawValue & UInt32(kSCNetworkFlagsReachable)) != 0
//        let needsConnection = (flags.rawValue & UInt32(kSCNetworkFlagsConnectionRequired)) != 0
//
//        return (isReachable && !needsConnection)
//    }
//}
