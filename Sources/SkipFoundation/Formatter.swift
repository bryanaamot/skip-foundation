// Copyright 2023 Skip
//
// This is free software: you can redistribute and/or modify it
// under the terms of the GNU Lesser General Public License 3.0
// as published by the Free Software Foundation https://fsf.org

#if SKIP

public class Formatter {
    public func string(for obj: Any?) -> String? {
        return nil
    }

    @available(*, unavailable)
    public func attributedString(for obj: Any, withDefaultAttributes attrs: [AnyHashable : Any]? = nil) -> Any? {
        return nil
    }

    @available(*, unavailable)
    public func editingString(for obj: Any) -> String? {
        return nil
    }

    @available(*, unavailable)
    public func getObjectValue(_ obj: Any?, for string: String, errorDescription error: Any?) -> Bool {
        return false
    }

    @available(*, unavailable)
    public func isPartialStringValid(_ partialString: String, newEditingString newString: Any?, errorDescription error: Any?) -> Bool {
        return false
    }

    @available(*, unavailable)
    public func isPartialStringValid(_ partialStringPtr: Any, proposedSelectedRange proposedSelRangePtr: Any?, originalString origString: String, originalSelectedRange origSelRange: Any, errorDescription error: Any?) -> Bool {
        return false
    }

    public var formattingContext: Formatter.Context = .unknown

    @available(*, unavailable)
    public func getObjectValue(_ obj: Any?, for string: String, range rangep: Any?, unusedp: Nothing? = nil) throws {
    }
}

extension Formatter {
    public enum Context: Int {
        case unknown = 0
        @available(*, unavailable)
        case dynamic = 1
        case standalone = 2
        case listItem = 3
        case beginningOfSentence = 4
        case middleOfSentence = 5

        internal var capitalization: android.icu.text.DisplayContext {
            switch self {
            case .beginningOfSentence:
                android.icu.text.DisplayContext.CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE
//            case .dynamic:
//                android.icu.text.DisplayContext.CAPITALIZATION_NONE
            case .listItem:
                android.icu.text.DisplayContext.CAPITALIZATION_FOR_UI_LIST_OR_MENU
            case .middleOfSentence:
                android.icu.text.DisplayContext.CAPITALIZATION_FOR_MIDDLE_OF_SENTENCE
            case .standalone:
                android.icu.text.DisplayContext.CAPITALIZATION_FOR_STANDALONE
            case .unknown:
                android.icu.text.DisplayContext.CAPITALIZATION_NONE
            default:
                android.icu.text.DisplayContext.CAPITALIZATION_NONE
            }
        }
    }
}

#endif
