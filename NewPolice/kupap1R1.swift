//
//  kupap1R1.swift
//  NewPolice
//
//  Created by Mor Di on 01.07.16.
//  Copyright © 2016 Mor Di. All rights reserved.
//

import UIKit

class kupap1R1: UITableViewController {
    
    var theStructure: [StructureKupap] = [
   
        //1
        StructureKupap(name:"Глава 1",
           
            subName: "Загальні положення",
            
            st: ["Стаття 1", "Стаття 2", "Стаття 5", "Стаття 6", "Стаття 7", "Стаття 8"],
            
            stName: ["Завдання Кодексу України про адміністративні правопорушення", "Законодавство України про адміністративні правопорушення", "Повноваження місцевих рад щодо прийняття рішень, за порушення яких передбачається адміністративна відповідальність", "Запобігання адміністративним правопорушенням", "Забезпечення законності при застосуванні заходів впливу за адміністративні правопорушення", "Чинність закону про відповідальність за адміністративні правопорушення" ])]
        
    
    
    
    
    
    
    
    
    
    
  // Third TextView
    
    var thirdTVC: [StructureKupap2] = [StructureKupap2(name: ["Стаття 1", "Стаття 2", "Стаття 5", "Стаття 6", "Стаття 7", "Стаття 8"],
        
        name2: [],
        
        text: ["Завдання Кодексу України про адміністративні правопорушення\n\nЗавданням Кодексу України про адміністративні правопорушення є охорона прав і свобод громадян, власності, конституційного ладу України, прав і законних інтересів підприємств, установ і організацій, встановленого правопорядку, зміцнення законності, запобігання правопорушенням, виховання громадян у дусі точного і неухильного додержання Конституції і законів України, поваги до прав, честі і гідності інших громадян, до правил співжиття, сумлінного виконання своїх обов'язків, відповідальності перед суспільством.",
            
            "Законодавство України про адміністративні правопорушення\n\nЗаконодавство України про адміністративні правопорушення складається з цього Кодексу та інших законів України.\n\nЗакони України про адміністративні правопорушення до включення їх у встановленому порядку до цього Кодексу застосовуються безпосередньо.\n\nПоложення цього Кодексу поширюються і на адміністративні правопорушення, відповідальність за вчинення яких передбачена законами, ще не включеними до Кодексу.\n\nПитання щодо адміністративної відповідальності за порушення митних правил регулюються Митним кодексом України.\n\n{Статтю 3 виключено на підставі Закону № 2342-III від 05.04.2001}\n\n{Статтю 4 виключено на підставі Закону № 2342-III від 05.04.2001}",
            
            "Повноваження місцевих рад щодо прийняття рішень, за порушення яких передбачається адміністративна відповідальність\n\nСільські, селищні, міські, обласні ради мають право приймати в межах, що визначаються законами, рішення з питань боротьби зі стихійним лихом і епідеміями, які передбачають за їх порушення адміністративну відповідальність, а також рішення з питань боротьби з епізоотіями, за порушення яких відповідальність встановлено статтею 107 цього Кодексу.\n\nСільські, селищні, міські ради встановлюють відповідно до законодавства правила, за порушення яких адміністративну відповідальність передбачено статтями 152, 159 і 182 цього Кодексу.",
            
            "Запобігання адміністративним правопорушенням\n\nОргани виконавчої влади та органи місцевого самоврядування, громадські організації, трудові колективи розробляють і здійснюють заходи, спрямовані на запобігання адміністративним правопорушенням, виявлення й усунення причин та умов, які сприяють їх вчиненню, на виховання громадян у дусі високої свідомості і дисципліни, суворого додержання законів України.\n\nОргани місцевого самоврядування, місцеві державні адміністрації, забезпечуючи відповідно до Конституції України додержання законів, охорону державного і громадського порядку, прав громадян, координують на своїй території роботу всіх державних і громадських органів по запобіганню адміністративним правопорушенням, керують діяльністю адміністративних комісій та інших підзвітних їм органів, покликаних вести боротьбу з адміністративними правопорушеннями.",
            
            "Забезпечення законності при застосуванні заходів впливу за адміністративні правопорушення\n\nНіхто не може бути підданий заходу впливу в зв'язку з адміністративним правопорушенням інакше як на підставах і в порядку, встановлених законом. Провадження в справах про адміністративні правопорушення здійснюється на основі суворого додержання законності.\nЗастосування уповноваженими на те органами і посадовими особами заходів адміністративного впливу провадиться в межах їх компетенції, у точній відповідності з законом.\n\nДодержання вимог закону при застосуванні заходів впливу за адміністративні правопорушення забезпечується систематичним контролем з боку вищестоящих органів і посадових осіб, правом оскарження, іншими встановленими законом способами.\n\nПрокурор здійснює нагляд за додержанням законів при застосуванні заходів впливу за адміністративні правопорушення шляхом реалізації повноважень щодо нагляду за додержанням законів при застосуванні заходів примусового характеру, пов’язаних з обмеженням особистої свободи громадян.",
            
            "Чинність закону про відповідальність за адміністративні правопорушення\n\nОсоба, яка вчинила адміністративне правопорушення, підлягає відповідальності на підставі закону, що діє під час і за місцем вчинення правопорушення.\n\nЗакони, які пом'якшують або скасовують відповідальність за адміністративні правопорушення, мають зворотну силу, тобто поширюються і на правопорушення, вчинені до видання цих законів. Закони, які встановлюють або посилюють відповідальність за адміністративні правопорушення, зворотної сили не мають.\n\nПровадження в справах про адміністративні правопорушення ведеться на підставі закону, що діє під час і за місцем розгляду справи про правопорушення."])]

    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.estimatedRowHeight = 70.0
        tableView.rowHeight = UITableViewAutomaticDimension

        title = "Розділ І"
        
        tableView.backgroundColor = UIColor(red: 45/255, green: 68/255, blue: 110/255, alpha: 1.0)
        
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.Plain, target: nil, action: nil)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return theStructure.count
    }

  
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("kupap1R1Cell", forIndexPath: indexPath) as! kupap1R1Cell

        
        cell.lbl.text = theStructure[indexPath.row].name
        
        cell.lblName.text = theStructure[indexPath.row].subName
        
        cell.lblSubName.text = ""
        
        cell.backgroundColor = UIColor(red: 45/255, green: 68/255, blue: 110/255, alpha: 1.0)
        
        cell.lbl.textColor = UIColor.whiteColor()
        cell.lblName.textColor = UIColor.whiteColor()
        cell.lblSubName.textColor = UIColor.whiteColor()

        return cell
    }
  

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "kupap1Segue" {
            
            let indexPath = self.tableView.indexPathForSelectedRow!
            
            let destinationVC = segue.destinationViewController as! kupap2R1
            
            var secondTableArrayTwo: StructureKupap
            
            secondTableArrayTwo = theStructure[indexPath.row]
            
            destinationVC.st = secondTableArrayTwo.st
            destinationVC.stName = secondTableArrayTwo.stName
            
            
            
            var thirdAnswerArray: StructureKupap2
            thirdAnswerArray = thirdTVC[indexPath.row]
            
            destinationVC.theName = thirdAnswerArray.name
            destinationVC.theName2 = thirdAnswerArray.name2
            destinationVC.theText = thirdAnswerArray.text
            


    }

}
}