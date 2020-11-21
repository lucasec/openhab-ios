// Copyright (c) 2010-2020 Contributors to the openHAB project
//
// See the NOTICE file(s) distributed with this work for additional
// information.
//
// This program and the accompanying materials are made available under the
// terms of the Eclipse Public License 2.0 which is available at
// http://www.eclipse.org/legal/epl-2.0
//
// SPDX-License-Identifier: EPL-2.0

import Intents
import OpenHABCore

class IntentHandler: INExtension {
    override func handler(for intent: INIntent) -> Any {
        if intent is OpenHABGetItemStateIntent {
            return GetItemStateIntentHandler()
        } else if intent is OpenHABSetSwitchStateIntent {
            return SetSwitchStateIntentHandler()
        } else if intent is OpenHABSetNumberValueIntent {
            return SetNumberValueIntentHandler()
        } else if intent is OpenHABSetStringValueIntent {
            return SetStringValueIntentHandler()
        } else if intent is OpenHABSetColorValueIntent {
            return SetColorValueIntentHandler()
        } else if intent is OpenHABSetContactStateValueIntent {
            return SetContactStateValueIntentHandler()
        } else {
            return SetDimmerRollerValueIntentHandler()
        }
    }
}
