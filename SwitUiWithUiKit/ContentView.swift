//
//  ContentView.swift
//  SwitUiWithUiKit
//
//  Created by Stephane Bressani on 01.06.21.
//
//

import SwiftUI
import Macaw

class MacawTextView: MacawView {

    required init?(coder aDecoder: NSCoder) {
        let svg = """
                  <?xml version="1.0" encoding="UTF-8" standalone="no"?>
                  <!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 20010904//EN"
                  "http://www.w3.org/TR/2001/REC-SVG-20010904/DTD/svg10.dtd">
                  <!-- Created with Sodipodi ("http://www.sodipodi.com/") -->
                  <svg
                     xmlns="http://www.w3.org/2000/svg"
                     xmlns:odm="http://product.corel.com/CGS/11/cddns/"
                     xml:space="preserve"
                     width="183pt"
                     height="188pt"
                     style="shape-rendering:geometricPrecision; text-rendering:geometricPrecision; image-rendering:optimizeQuality; fill-rule:evenodd"
                     viewBox="0 0 8268 11692"
                     xmlns:sodipodi="http://sodipodi.sourceforge.net/DTD/sodipodi-0.dtd"
                     xmlns:xlink="http://www.w3.org/1999/xlink"
                     id="svg620"
                     sodipodi:version="0.34"
                     sodipodi:docname="D:\\Dokumenty\\Wikipedie\\images\\svg\\Astro\\gemini.svg"><sodipodi:namedview
                     id="base" /><defs
                     id="defs621"><style
                     type="text/css"
                     id="style622"><![CDATA[
                      .fil0 {fill:#000000}
                     ]]></style></defs><g
                     id="Layer 1"
                     transform="matrix(5.152124,0,0,5.157475,-9408.358,-14342.93)"><path
                     class="fil0"
                     d="M1524 5048l0 -167c186,-49 359,-84 518,-103l0 -1730c-172,-16 -345,-49 -518,-99l0 -168c300,83 668,125 1104,125 437,0 805,-42 1105,-125l0 168c-174,50 -347,83 -519,99l0 1730c159,19 332,54 519,103l0 167c-342,-90 -710,-134 -1105,-134 -395,0 -763,44 -1104,134zm719 -282c115,-13 243,-19 385,-19 142,0 270,6 385,19l0 -1704c-104,7 -232,11 -385,11 -154,0 -282,-4 -385,-11l0 1704z"
                     id="path624" /></g></svg>
                  """
        //super.init(node: node, coder: aDecoder)
        super.init(frame: CGRect.zero)
        node = try! SVGParser.parse(text: svg)
    }

    init() {
        let svg = """
                  <?xml version="1.0" encoding="UTF-8" standalone="no"?>
                  <!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 20010904//EN"
                  "http://www.w3.org/TR/2001/REC-SVG-20010904/DTD/svg10.dtd">
                  <!-- Created with Sodipodi ("http://www.sodipodi.com/") -->
                  <svg
                     xmlns="http://www.w3.org/2000/svg"
                     xmlns:odm="http://product.corel.com/CGS/11/cddns/"
                     xml:space="preserve"
                     width="183pt"
                     height="188pt"
                     style="shape-rendering:geometricPrecision; text-rendering:geometricPrecision; image-rendering:optimizeQuality; fill-rule:evenodd"
                     viewBox="0 0 8268 11692"
                     xmlns:sodipodi="http://sodipodi.sourceforge.net/DTD/sodipodi-0.dtd"
                     xmlns:xlink="http://www.w3.org/1999/xlink"
                     id="svg620"
                     sodipodi:version="0.34"
                     sodipodi:docname="D:\\Dokumenty\\Wikipedie\\images\\svg\\Astro\\gemini.svg"><sodipodi:namedview
                     id="base" /><defs
                     id="defs621"><style
                     type="text/css"
                     id="style622"><![CDATA[
                      .fil0 {fill:#000000}
                     ]]></style></defs><g
                     id="Layer 1"
                     transform="matrix(5.152124,0,0,5.157475,-9408.358,-14342.93)"><path
                     class="fil0"
                     d="M1524 5048l0 -167c186,-49 359,-84 518,-103l0 -1730c-172,-16 -345,-49 -518,-99l0 -168c300,83 668,125 1104,125 437,0 805,-42 1105,-125l0 168c-174,50 -347,83 -519,99l0 1730c159,19 332,54 519,103l0 167c-342,-90 -710,-134 -1105,-134 -395,0 -763,44 -1104,134zm719 -282c115,-13 243,-19 385,-19 142,0 270,6 385,19l0 -1704c-104,7 -232,11 -385,11 -154,0 -282,-4 -385,-11l0 1704z"
                     id="path624" /></g></svg>
                  """
        let rect  = CGRect(x: 100, y: 20, width: 100, height: 100)
        super.init(frame: rect)
        node = try! SVGParser.parse(text: svg)
    }
    /*
    required init?(coder aDecoder: NSCoder) {
        let text = Text(text: "Hello, World!", place: .move(dx: 145, dy: 100))
        super.init(frame: CGRect.zero)
        node = text
    }*/
/*
    init() {
        let rect  = CGRect(x: 100, y: 20, width: 100, height: 100)
        let text = Text(text: "Hello, World!", place: .move(dx: 145, dy: 100))
        super.init(frame: rect)
        node = text
    }*/
}

struct TextsViewController: UIViewRepresentable {
    func makeUIView(context: Context) -> MacawTextView {
        return MacawTextView()
    }
    func updateUIView(_ activityIndicator: MacawTextView, context: Context) {
    }
}


struct ContentView: View {
    var body: some View {
        VStack {
            TextsViewController()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



