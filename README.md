# elixir-playground
My learning elixir projects

## Let’s Build a Real-Time Chat Application with Elixir and Phoenix
Link: https://learning.oreilly.com/videos/lets-build-a/10000MNCS2022134/10000MNCS2022134-aaaaa/
Source: ./chat

### Creating the app
Install Elixir, then install Phoenix, details here: https://hexdocs.pm/phoenix/installation.html
```
 mix archive.install hex phx_new
 mix phx.new --live --no-ecto chat
```
### Running the app
Some Errors after ` iex -S mix phx.server ` upgrading xcode and accepting the license... `✗ sudo xcodebuild -license accept`  http://localhost:4000/ is responding

### Updating the landing page

Update `lib/chat_web/templates/layout/root.html.heex` - Clean up Menu

### Add dependencies 
Add: https://github.com/devshane/mnemonic_slugs
`mix deps.get` and `iex -S mix phx.server`

### Update Landing page Index

The view is using different version of Phx. 
I had to create a Live View Controller.