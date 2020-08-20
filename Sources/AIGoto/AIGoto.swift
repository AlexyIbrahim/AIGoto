public let goto = Goto.self

// MARK: - Private
public struct Goto {
    static var shared = Goto()
    
    public typealias Closure = () -> Void
    private var closures = [String: Closure]()
    fileprivate mutating func set(_ label: String, closure: @escaping Closure) {
        self.closures[label] = closure
    }
    fileprivate func call(_ label: String) {
        self.closures[label]?()
    }
    
    fileprivate mutating func clear(_ labels: String...) { clear(labels) }
    fileprivate mutating func clear(_ labels: [String]) {
        labels.forEach {
            self.closures.removeValue(forKey: $0)
        }
    }
    
    fileprivate mutating func clearAll() {
        self.closures.removeAll()
    }
}

// MARK: - Public
extension Goto {
    public static func set(_ label: String, closure: @escaping Closure) {
        Goto.shared.set(label, closure: closure)
    }
    
    public static func clear(_ labels: String...) { clear(labels) }
    public static func clear(_ labels: [String]) {
        Goto.shared.clear(labels)
    }
    
    public static func clearAll() {
        Goto.shared.clearAll()
    }
}

// MARK: - Global
infix operator |->
public func |-> (goto: Goto, label: String) {
    Goto.shared.call(label)
}

prefix operator |->
public prefix func |-> (label: String) {
    Goto.shared.call(label)
}
