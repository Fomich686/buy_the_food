defmodule BuyTheFoodWeb.SearchLive do
  use BuyTheFoodWeb, :live_view

  alias BuyTheFood.{Stores, Accounts}

  def mount(_params, %{"user_token" => user_token}, socket) do
    user = Accounts.get_user_by_session_token(user_token)
    IO.puts "#{inspect user}"
    socket =
        assign(socket,
               word: "",
               stores: [], #Stores.get_all()
               shop_list: []
              )
    {:ok, socket}
  end
  def mount(_, _, socket) do
    IO.puts "redirect"
    {:ok,
          socket
          |> put_flash(:info, "You need to login.")
          |> push_redirect(to: "/", replace: true)}
  end
  def render(assigns) do
    ~L"""
    <h1>Find a Store</h1>
    <div id="search">
      <form phx-change="search" phx-submit="add_new">
        <input type="text" name="word" value="<%= @word %>"
                placeholder="Enter product"
                autofocus autocomplete="off"
        />
        <button type="submit">
         Add
        </button>
      </form>

      <div class="row">
        <div class="col-sm-3">
        <%= for item <- @shop_list do %>
        <div class="row">
          <div class="selected-item" phx-click="but-_<%= item.id %>">
            <%= item.name %>
          </div>
        </div>
        <% end %>
        </div>

        <div class="col-sm-7">
        <%= for store <- @stores do %>
          <div class="row">
                <div class="store-item" phx-click="but+_<%= store.id %>">
                <%= store.name %>
                </div>
              </div>
            <% end %>
          </div>
        </div>
        </div>
        """
      end
      def handle_event("search", %{"word" => word}, socket) do
        stores =
          case word do
            #[] -> []
            "" -> []
            _ -> Stores.search_by_word(String.downcase(word))
          end
        socket =
          assign(socket,
            word: word,
            stores: stores)
        {:noreply, socket}
      end

      def handle_event("add_new", param, socket) do
        IO.puts "param #{inspect param} \n******"
        {:noreply, socket}
      end
      def handle_event("but+_"<> id, _param, socket) do
        case Stores.get_by_id(String.to_integer(id)) do
          [] -> {:noreply, socket}
          [item] ->

            {:noreply,
              update(socket, :shop_list, fn items -> [item|items] end)}
        end

      end


end
