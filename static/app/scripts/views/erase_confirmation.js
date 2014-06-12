/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

define([
  'views/base',
  'stache!templates/erase_confirmation',
  'lib/modal_manager',
  'models/erase_command'
], function (BaseView, EraseConfirmationTemplate, ModalManager, EraseCommand) {
  'use strict';

  var EraseView = BaseView.extend({
    template: EraseConfirmationTemplate,

    events: {
      'click button.cancel': 'cancel',
      'click button.erase': 'erase'
    },

    cancel: function (event) {
      ModalManager.close();
    },

    erase: function (event) {
      currentDevice.sendCommand(new EraseCommand());

      ModalManager.close();
    }
  });

  return EraseView;
});