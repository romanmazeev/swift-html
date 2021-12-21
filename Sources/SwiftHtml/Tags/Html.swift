//
//  Html.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

/// The `<html>` tag represents the root of an HTML document.
///
/// The `<html>` tag is the container for all other HTML elements (except for the `<!DOCTYPE>` tag).
///
/// **Note:** You should always include the lang attribute inside the `<html>` tag, to declare the language of the Web page. This is meant to assist search engines and browsers.
public final class Html: Tag {

    public init(@TagBuilder _ builder: () -> [Tag]) {
        super.init(Node(type: .standard, name: "html"), children: builder())
    }
}

public extension Html {
    /// Specifies the XML namespace attribute (If you need your content to conform to XHTML)
    func xmlns() -> Self {
        node.upsert(Attribute(key: "xmlns", value: "http://www.w3.org/1999/xhtml"))
        return self
    }
}