class Cli

    attr_accessor :user

    def initialize user=nil
        @user = user
    end

    def prompt
        TTY::Prompt.new
    end

    def welcome
        returning_user = prompt.yes? "Welcome to Scrapbook. Do you have an account with us?"
        if returning_user
            sign_in
        else
            sign_up
        end
    end

    def sign_up
        first_name = prompt.ask "What is your first name?"
        last_name = prompt.ask "What is your last name?"
        username = prompt.ask "What is your username?"
        email = prompt.ask "What is your email?"
        
        self.user = User.create(
            first_name: first_name,
            last_name: last_name,
            username: username,
            email: email
        )
        main_menu
    end


    def sign_in
        input_username = prompt.ask "Please enter your username:"
        found_user = User.find_by(username: input_username)
        if found_user
            self.user = found_user
            puts "Welcome back, #{user.first_name}!"
            sleep(2)
        else
            input_username = prompt.ask "Username does not exist. Please enter your email:"
            self.user = User.find_by_email input_username
        end
        main_menu
    end

    def main_menu
        system 'clear'
        prompt.select("What would you like to do?") do |menu|
            menu.choice "Browse concerts.", -> {concert_list}
            menu.choice "Create a concert memory.", -> {memory_helper}
            menu.choice "Edit details of a memory.", -> {edit_details}
            menu.choice "Remove a concert memory.", -> {delete_memory}
            menu.choice "Exit", -> {exit_helper}
        end
    end

    def concert_list
        puts Concert.concert_list
        sleep(5)
        main_menu
    end

    def memory_helper
        concerts = Concert.all_display_names
        chosen_concert_id = prompt.select("Which concert do you want to add an entry for?", concerts)
        memory_title = prompt.ask("Give this memory a title:")
        memory_prompt = prompt.ask("Now tell us what you remember:")
        create_memory = Memory.create(title: memory_title, details: memory_prompt, user_id: user.id, concert_id: chosen_concert_id)
        puts "Great. Your memory from #{create_memory.concert.display_name} has been added."
        sleep(4)
        main_menu
    end

    def edit_details
        
    end

    def delete_memory
       my_memories = Memory.all.select {|memory| memory.user_id == user.id}
       memory_to_delete = prompt.select("Which memory would you like to access?", my_memories)
       Memory.destroy(memory_to_delete.id)
    end

    def exit_helper
        puts "Gooooodbye to youuuuuu.."
    end

end

