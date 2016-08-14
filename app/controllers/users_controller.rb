class UsersController < ApplicationController
  # Sets up authorization
  before_action :logged_in?, only: [:show, :edit, :update, :destroy, :new_survey, :results]

  # GET /users
  def index
    @users = User.all
  end

  # GET /users/1
  def show
    @user = current_user
    @choices = @user.choices
    
    # Math for calculating compatibility with candidates
    if @choices.empty? == false
      @policies = Policy.all
      @trump_counter = 0
      @hillary_counter = 0
      @hillary_compatible = 0
      @trump_compatible = 0

      @policies.each do |policy|
        @hillary_choice = policy.hillary_choice
        @trump_choice = policy.trump_choice
        @user_choice = @choices.find_by policy_id: policy.id

        if @hillary_choice == @user_choice.choice
          @hillary_counter +=1
        end

        if @trump_choice == @user_choice.choice
          @trump_counter +=1
        end
      end

      @hillary_compatible = ((@hillary_counter.to_f / 12) * 100).floor
      @trump_compatible = ((@trump_counter.to_f / 12) * 100).floor
    end
  end  

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # POST /users
  def create
    @user = User.new(user_params)
    if @user.save
      login(@user) # <-- login the user
      redirect_to profile_path # <-- go to show
    else
      # Error handling
      temp = @user.errors.full_messages.join(", ")
      render :json => temp
    end
  end

  # PATCH/PUT /users/1
  def update
    @user = User.find(params[:id])
    @user.update_attributes(user_params)
    redirect_to profile_path
  end

  # DELETE /users/1
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end

# Below are survey methods for the user
# Provides RESTful actions for user surveys
  
  # Main survey screen
  def new_survey
    @user = current_user
    @choices = @user.choices
    # Re-route user if survey has already been taken
    if @choices.empty? == false
      redirect_to results_path
    else 
      @policies = Policy.all
      render :new_survey
    end
  end

  # Save survey results to choices model
  # This is NOT DRY or scalable. Needs work. But works...
  def create_survey
    # Grab all answers
    answer1 = params[:policy_1]
    answer2 = params[:policy_2]
    answer3 = params[:policy_3]
    answer4 = params[:policy_4]
    answer5 = params[:policy_5]
    answer6 = params[:policy_6]
    answer7 = params[:policy_7]
    answer8 = params[:policy_8]
    answer9 = params[:policy_9]
    answer10 = params[:policy_10]
    answer11 = params[:policy_11]
    answer12 = params[:policy_12]
    
    # Create 12 choices in the DB
    choice1 = Choice.new()
      choice1.choice = answer1
      choice1.policy_id = 1
      choice1.user_id = current_user.id
    choice1.save

    choice2 = Choice.new()
      choice2.choice = answer2
      choice2.policy_id = 2
      choice2.user_id = current_user.id
    choice2.save

    choice3 = Choice.new()
      choice3.choice = answer3
      choice3.policy_id = 3
      choice3.user_id = current_user.id
    choice3.save

    choice4 = Choice.new()
      choice4.choice = answer4
      choice4.policy_id = 4
      choice4.user_id = current_user.id
    choice4.save
    
    choice5 = Choice.new()
      choice5.choice = answer5
      choice5.policy_id = 5
      choice5.user_id = current_user.id
    choice5.save
    
    choice6 = Choice.new()
      choice6.choice = answer6
      choice6.policy_id = 6
      choice6.user_id = current_user.id
    choice6.save

    choice7 = Choice.new()
      choice7.choice = answer7
      choice7.policy_id = 7
      choice7.user_id = current_user.id
    choice7.save

    choice8 = Choice.new()
      choice8.choice = answer8
      choice8.policy_id = 8
      choice8.user_id = current_user.id
    choice8.save

    choice9 = Choice.new()
      choice9.choice = answer9
      choice9.policy_id = 9
      choice9.user_id = current_user.id
    choice9.save

    choice10 = Choice.new()
      choice10.choice = answer10
      choice10.policy_id = 10
      choice10.user_id = current_user.id
    choice10.save

    choice11 = Choice.new()
      choice11.choice = answer11
      choice11.policy_id = 11
      choice11.user_id = current_user.id
    choice11.save

    choice12 = Choice.new()
      choice12.choice = answer12
      choice12.policy_id = 12
      choice12.user_id = current_user.id
    choice12.save

    redirect_to results_path
  end

  # Edit method for survey
  # Also not DRY - also needs work.
  def edit_survey
    @user = current_user
    @choices = @user.choices
    @policies = Policy.all
    render :edit_survey
  end

  # Save updates to DB
  def update_survey
    @user = current_user
    @choices = @user.choices

    answer1 = params[:policy_1]
    answer2 = params[:policy_2]
    answer3 = params[:policy_3]
    answer4 = params[:policy_4]
    answer5 = params[:policy_5]
    answer6 = params[:policy_6]
    answer7 = params[:policy_7]
    answer8 = params[:policy_8]
    answer9 = params[:policy_9]
    answer10 = params[:policy_10]
    answer11 = params[:policy_11]
    answer12 = params[:policy_12]

    @choices.find_by(policy_id: 1).update_attributes({choice: answer1})
    @choices.find_by(policy_id: 2).update_attributes({choice: answer2})
    @choices.find_by(policy_id: 3).update_attributes({choice: answer3})
    @choices.find_by(policy_id: 4).update_attributes({choice: answer4})
    @choices.find_by(policy_id: 5).update_attributes({choice: answer5})
    @choices.find_by(policy_id: 6).update_attributes({choice: answer6})    
    @choices.find_by(policy_id: 7).update_attributes({choice: answer7})
    @choices.find_by(policy_id: 8).update_attributes({choice: answer8})
    @choices.find_by(policy_id: 9).update_attributes({choice: answer9})
    @choices.find_by(policy_id: 10).update_attributes({choice: answer10})
    @choices.find_by(policy_id: 11).update_attributes({choice: answer11})
    @choices.find_by(policy_id: 12).update_attributes({choice: answer12})

    redirect_to results_path
  end

  # Delete a survey
  def delete_survey
    @user = current_user
    @choices = @user.choices
    
    @choices.each do |choice|
      choice.destroy
    end
    
    redirect_to user_path(@user)
  end

  # View survey results
  def results
    @policies = Policy.all
    @user = current_user
    @choices = @user.choices
    
    # Math for calculating compatibility with candidates
    if @choices.empty? == false
      @policies = Policy.all
      @trump_counter = 0
      @hillary_counter = 0
      @hillary_compatible = 0
      @trump_compatible = 0

        @policies.each do |policy|
          @hillary_choice = policy.hillary_choice
          @trump_choice = policy.trump_choice
          @user_choice = @choices.find_by policy_id: policy.id

          if @hillary_choice == @user_choice.choice
            @hillary_counter +=1
          end

          if @trump_choice == @user_choice.choice
            @trump_counter +=1
          end
        end

      @hillary_compatible = ((@hillary_counter.to_f / 12) * 100).floor
      @trump_compatible = ((@trump_counter.to_f / 12) * 100).floor
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:first_name, :last_name, :location, :party, :email, :profile_pic, :password)
    end
end
