{
  description = "A collection of flake templates, personally for xubaiw";

  outputs =
    { self }:
    {
      templates = {

        rust = {
          path = ./rust;
          description = "Rust dev shell template";
        };

        rust-bevy = {
          path = ./rust-bevy;
          description = "Rust dev shell template, used for bevy projects";
        };

      };
    };
}
