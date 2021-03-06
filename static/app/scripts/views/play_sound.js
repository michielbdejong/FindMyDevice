/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

define([
  'views/base',
  'stache!templates/play_sound',
  'models/ring_command',
  'lib/modal_manager',
  'lib/notifier'
], function (BaseView, PlaySoundTemplate, RingCommand, ModalManager, Notifier) {
  'use strict';

  var PlaySoundView = BaseView.extend({
    template: PlaySoundTemplate,

    events: {
      'click button.play-sound': 'playSound'
    },

    initialize: function (options) {
      this.device = options.device;
    },

    playSound: function (event) {
      this.device.sendCommand(new RingCommand({ duration: 30, period: 5 }));

      this.device.set('activity', 'sound');

      ModalManager.close();
    }
  });

  return PlaySoundView;
});
