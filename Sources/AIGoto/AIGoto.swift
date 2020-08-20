public let goto = Goto.self

// MARK: - Private
public struct Goto {
    static var shared = Goto()
    
    public typealias Closure = () -> Void
    private var closures = [String: Closure]()
    fileprivate mutating func define(_ tag: String, closure: @escaping Closure) -> Bool {
        if !self.closures.containsKey(tag) {
            self.closures[tag] = closure
            return true
        }
        return false
    }
    fileprivate func fire(_ tag: String) {
        self.closures[tag]?()
    }
    
    fileprivate mutating func clear(_ tags: String...) { clear(tags) }
    fileprivate mutating func clear(_ tags: [String]) {
        tags.forEach {
            self.closures.removeValue(forKey: $0)
        }
    }
    
    fileprivate mutating func clearAll() {
        self.closures.removeAll()
    }
}

// MARK: - Public
extension Goto {
    public static func define(_ tag: String, closure: @escaping Closure) -> Bool {
        return Goto.shared.define(tag, closure: closure)
    }
    
    public static func clear(_ tags: String...) { clear(tags) }
    public static func clear(_ tags: [String]) {
        Goto.shared.clear(tags)
    }
    
    public static func clearAll() {
        Goto.shared.clearAll()
    }
}

// MARK: - Global
infix operator |->
public func |-> (goto: Goto, tag: String) {
    Goto.shared.fire(tag)
}

prefix operator |->
public prefix func |-> (tag: String) {
    Goto.shared.fire(tag)
}
