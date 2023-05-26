depth = 20;

module head() {
    difference() {
        linear_extrude(depth)
            import("head.svg");
        hair(0);
        eyes_nose(0);
        stripe(0);
    }
}

module hair(offset) {
    translate([0, 0, -0.01])
        color("white")
            linear_extrude(depth+0.02)
                offset(delta = offset)
                    import("hair.svg");
}

module eyes_nose(offset) {
    translate([0, 0, -0.01])
        color("black")
            linear_extrude(depth+0.02)
                offset(delta = offset)
                    import("eyes-nose.svg");
}

module stripe(offset) {
    translate([0, 0, -0.01])
        color("white")
            linear_extrude(depth+0.02)
                offset(delta = offset)
                    import("stripe.svg");
}


// Comment out each piece to export as an STL
head();
hair(-0.4);
eyes_nose(-0.4);
stripe(-0.4);
