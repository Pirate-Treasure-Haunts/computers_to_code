# rust from beginning too end of project:

this assumes you have rust installed, preferably the latest version and also the path present in your env. vars.


1. in rust projects folder, right click to open a terminal right there and type in `cargo new <project title>`

2. you can now close that terminal and carry on using windows explorer or whatever suits you ot manage files as necessary.

3. when all coding is don i.e. there is at minimum a `main.rs` in the `src` folder and a completed `cargo.toml` in the root directory,
then you may go ahead and attempt to build the project ready to run as an `.exe`:

type `cargo build` if it's the first time, or else you can dive straight into `cargo run` and it will auto pick p with what needs to be installed again/extra from before.
then you can either continue to repeatedly cycle edits of code and `cargo run` or `cargo build` and even if necessary occasional `cargo clean` if things have changed very massively/become exceedingly messed up.


Putting It All Together
So a typical minimal file-size approach might look like:

 Update Cargo.toml (optional, but nice):
`[profile.release]`
`to = true`
`panic = "abort"`
`codegen-units = 1`


`cargo build --release`


Strip (GNU example):
`strip target/release/<your_project_name>.exe`

Distribute your super-slim .exe to your heart’s content!


not bad huh - you just got from creating a new project to exporting final release exe in mere minutes. [in reality there's the horrors of actually coding the files in between! :P ]