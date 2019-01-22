import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var arrayCities = [[String:String]]()
    
    @IBOutlet weak var imgCity: UIImageView!
    @IBOutlet weak var lblCityName: UILabel!
    @IBOutlet weak var txtCityDesc: UITextView!
    
    let kNOM = "KeyNombre"
    /*
    let dicJava = ["kTitle":"Java","KSub":"Oriented-Object Language","KImg":"java"]
    let dicNet = ["kTitle":"","KSub":"","KImg":""]
    let dicAWS = ["kTitle":"","KSub":"","KImg":""]
    let dic = ["kTitle":"","KSub":"","KImg":""] */
   // let dicTech = ["kTitle":"","KSub":"","KImg":""]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        let city1 = [kNOM:"Lima","kDesc":"Ciudad de los Reyes","kImg":"lima" ]
        let city2 = [kNOM:"Arequipa","kDesc":"Ciudad Blanca","kImg":"arequipa" ]
        let city3 = [kNOM:"Cusco","kDesc":"Ciudad imperial","kImg":"cusco" ]
        let city4 = [kNOM:"Trujillo","kDesc":"Ciudad de la Eterna Primavera","kImg":"trujillo" ]
        
        arrayCities.append(city1)
        arrayCities.append(city2)
        arrayCities.append(city3)
        arrayCities.append(city4)
        
    }

}

extension ViewController {
    
    // Llamar usando num
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    // siguientes, llamar usando table
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayCities.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let indexRow = indexPath.row
        let celda = tableView.dequeueReusableCell(withIdentifier: "celda1", for: indexPath)
        
        var city = arrayCities[indexRow]
        let name = city[kNOM]
        let desc = city["kDesc"]
        let img  = city["kImg"]
        
        celda.textLabel?.text = name
        celda.detailTextLabel?.text =  ""
        //celda.imageView?.image = UIImage(named: img ?? "lima")
        
        // si tienes varios table vui, si el tag es 1 una logica si es 2 otra logica
        return celda
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let indexRow = indexPath.row
        let celda = tableView.dequeueReusableCell(withIdentifier: "celda1", for: indexPath)
        
        var city = arrayCities[indexRow]
        let name = city[kNOM]
        let desc = city["kDesc"]
        let img  = city["kImg"]
        
        imgCity.image = UIImage(named: img ?? "lima")
        lblCityName.text = name
        txtCityDesc.text = desc
    
        
        
    }
    
    // tarea no menos de 10 elementos
    
}
