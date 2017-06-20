import Kitura
import HeliumLogger
import Foundation

// Initialize HeliumLogger
HeliumLogger.use()

// Create a new router
let router = Router()


// Handle HTTP GET requests to /
router.get("/") {
    request, response, next in
    response.send("Hello, Norman!\n")
    next()
}

let port: String = ProcessInfo.processInfo.environment["PORT"] ?? "8080"

print("kitura port is : \(port)")


// Add an HTTP server and connect it to the router
Kitura.addHTTPServer(onPort: Int(port)!, with: router)


// Start the Kitura runloop (this call never returns)
Kitura.run()
