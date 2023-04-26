import Foundation
import UIKit

let tick = String()
class Networking {
    
//    var vm = Colors()
    var angleHorizontal = 10
    var angleVertical = 45
    var power = 24
    var preTick : Int = 0
    func colorgenerateRequest(){
        let token = "6437cb2aaac9a6437cb2aaac9f"
        guard let url = URL(string: "http://api.datsart.dats.team/art/factory/generate") else { return }
        var request = URLRequest(url: url)
        let parameters = ["Authorization": "6437cb2aaac9a6437cb2aaac9f"]
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.setValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
        
        guard let httpBody = try? JSONSerialization.data(withJSONObject: parameters ,options: []) else { return }
        request.httpBody = httpBody
        
        let session = URLSession.shared
        session.dataTask(with: request) { (data, response, error) in
            if let response = response {
                print(response)
            }
            guard let data = data else { return }
            do {
//                let asdf = try JSONDecoder().decode(Colors.self, from: data)
//                print(asdf)
//                self.preTick += asdf.info.tick
            } catch let error{
                print(error)
            }
            
        }.resume()
        
    }
    
    
    func colorchooseRequest(){
        let token = "6437cb2aaac9a6437cb2aaac9f"
        guard let url = URL(string: "http://api.datsart.dats.team/art/factory/pick") else { return }
        var request = URLRequest(url: url)
        
        let parameters = ["num": "3", "tick": "\(preTick)"]
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.setValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
        
        guard let httpBody = try? JSONSerialization.data(withJSONObject: parameters ,options: []) else { return }
        request.httpBody = httpBody
        
        let session = URLSession.shared
        session.dataTask(with: request) { (data,response,error) in
            if let response = response {
                print(response)
            }
            guard let data = data else { return }
            do {
                let json = try JSONSerialization.jsonObject(with: data,options: [])
                print(json)
                
            } catch {
                print(error)
            }
            self.preTick = 0
        }.resume()
    }
    
    func cata(){
        let token = "6437cb2aaac9a6437cb2aaac9f"
        guard let url = URL(string: "http://api.datsart.dats.team/art/colors/list") else { return }
        var request = URLRequest(url: url)
        
        let parameters = ["name": "Adi"]
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.setValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
        
        guard let httpBody = try? JSONSerialization.data(withJSONObject: parameters ,options: []) else { return }
        request.httpBody = httpBody
        
        let session = URLSession.shared
        session.dataTask(with: request) { (data,response,error) in
            if let response = response {
                print(response)
            }
            guard let data = data else { return }
            do {
                let json = try JSONDecoder().decode(Catapult.self, from: data)
                print(json)
                
            } catch {
                print(error)
            }
            self.preTick = 0
        }.resume()
    }
    
    func Shoot(){
        let token = "6437cb2aaac9a6437cb2aaac9f"
        guard let url = URL(string: "http://api.datsart.dats.team/art/ballista/shoot") else { return }
        var request = URLRequest(url: url)
        
        let parameters = ["angleHorizontal": "hello"]
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.setValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
        
        guard let httpBody = try? JSONSerialization.data(withJSONObject: parameters ,options: []) else { return }
        request.httpBody = httpBody
        
        let session = URLSession.shared
        session.dataTask(with: request) { (data,response,error) in
            if let response = response {
                print(response)
            }
            guard let data = data else { return }
            do {
                let json = try JSONDecoder().decode(Catapult.self, from: data)
                print(json)
                
            } catch {
                print(error)
            }
            self.preTick = 0
        }.resume()
    }
    
    
    
    
    //struct Welcome: Decodable {
    //    let success: Bool
    //    let status: Int
    //    let info: Info
    //    let response: [String: Response]
    //}
    //
    //// MARK: - Info
    //struct Info: Codable {
    //    let m: Int
    //    let t: Double
    //    let c: Int
    //    let tick: Double
    //    let ns: Int
    //}
    //
    //// MARK: - Response
    //struct Response: Codable {
    //    let amount, color: Int
    //}
}
