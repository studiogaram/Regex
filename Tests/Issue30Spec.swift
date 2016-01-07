final class Issue30Spec: QuickSpec {
  override func spec() {

    let regex = Regex("Custom from:([0-9]+) to:([0-9]+)")
    let value = "Custom from:1451811437 to:1452329837"

    it("matches") {
      expect(regex.matches(value)).to(beTrue())
    }

    it("captures as expected") {
      let captures = regex.match(value)!.captures
      expect(captures.count).to(equal(2))
      expect(captures.flatMap { $0 }).to(equal(["1451811437", "1452329837"]))
    }

  }
}

import Quick
import Nimble
import Regex
