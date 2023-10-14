protocol AdvancedLifeSupport{
    func performPCR()
}
class EmergencyCallHander {
    var delegate:AdvancedLifeSupport?
    func assesSituation(){
        print("Söylermisin Ne Oldu?")
    }
    func medicalEmergency(){
        delegate?.performPCR()
    }
    // ------
    }
struct Parademic: AdvancedLifeSupport{
    func performPCR() {
        
    }
    
//    func performPCR() {
//    }
//    
    init(handler:EmergencyCallHander) {
        handler.delegate = self
    }
    class Doctor:AdvancedLifeSupport{
        func useStethescope() {
            print("Kalp Sesini Dinliyorum"   )
        }
        func performPCR() {
            print("Paramedic saniyede 30 göğüs kompresyonu yapıyor ")
        }
    }
    class Surgeon:Doctor{
        override func performPCR() {
            super.performPCR()
            print("Hasta Ölümün Eşiğinde")
        }
    }
//        init handler:EmergencyCallHander{
//            handler.delegate = self
}
    func useElectricDrill() {
    print("")
    }
let eren = EmergencyCallHander()
let pete = Parademic(handler: eren)
