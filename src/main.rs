#[cfg(any(feature = "termion-backend", feature = "default"))]
use cursive::termion;

#[cfg(any(feature = "crossterm-backend"))]
use cursive::crossterm;

use cursive::views::ListView;
use cursive::views::TextView;

fn main() {
    #[cfg(any(feature = "termion-backend", feature = "default"))]
    let mut s = termion();

    #[cfg(feature = "crossterm-backend")]
    let mut s = crossterm();
    
    s.add_layer(ListView::new()
        .child("first", TextView::new("asdf"))
        .child("second", TextView::new("asdf"))
        .child("third", TextView::new("asdf"))
   );

    s.run();
}
