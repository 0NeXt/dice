/*
 * SPDX-License-Identifier: GPL-3.0-or-later
 * SPDX-FileCopyrightText: 2021 Your Name <ylayne145@outlook.com>
 */
public class Dice : Gtk.Application {
    public Dice () {
        Object (
            application_id: "com.github.0next.dice",
            flags: ApplicationFlags.FLAGS_NONE
        );
    }

    protected override void activate () {
        var button_Dice = new Gtk.Button.with_label ("Click me!") {
            margin = 12
        };
        button_Dice.clicked.connect (() => {
            button_Dice.label = "Hello World!";
            button_Dice.sensitive = false;
        });
        var main_window = new Gtk.ApplicationWindow (this) {
            default_height = 400,
            default_width = 600,
            title = "Dice"
            
        };
        main_window.add (button_Dice);
        main_window.show_all ();
    }

    public static int main (string[] args) {
        return new Dice ().run (args);
    }
}
