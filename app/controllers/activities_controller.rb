class ActivitiesController < ApplicationController
  before_action :set_activity, only: %i[show edit update destroy]

  # GET /activities or /activities.json
  def index
    current_user = User.find(session[:user_id])
    @activities = if params[:ungrouped]
                    current_user.ungrouped_activities_from_user(current_user.id)
                  else
                    current_user.activities.all
                  end

    puts 'hello'
  end

  # GET /activities/1 or /activities/1.json
  def show
    @activity = Activity.find(params[:id])
    @groups = @activity.group.nil? ? nil : @activity.group
  end

  # GET /activities/new
  def new
    @activity = Activity.new
    @groups = Group.all
    @groups_array = create_groups_array
    @activities_created = activities_created
  end

  # GET /activities/1/edit
  def edit
    @activity = Activity.find(params[:id])
    @groups = Group.all
    @groups_array = create_groups_array
    @activities_created = activities_created
  end

  # POST /activities or /activities.json
  def create
    @activity = Activity.new(activity_params)
    @activity.author_id = session[:user_id]
    respond_to do |format|
      if @activity.save
        format.html { redirect_to @activity, notice: 'Activity was successfully created.' }
        format.json { render :show, status: :created, location: @activity }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /activities/1 or /activities/1.json
  def update
    respond_to do |format|
      if @activity.update(activity_params)
        format.html { redirect_to @activity, notice: 'Activity was successfully updated.' }
        format.json { render :show, status: :ok, location: @activity }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /activities/1 or /activities/1.json
  def destroy
    @activity.destroy
    respond_to do |format|
      format.html { redirect_to activities_url, notice: 'Activity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def icon_activity
    @icon = activity.group.icon
  end

  private

  def activities_created
    Activity.ascending.pluck(:name)
  end

  def create_groups_array
    arr = Group.all.pluck(:name, :id)
    arr.insert(0, ['No group', nil])
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_activity
    @activity = Activity.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def activity_params
    params.require(:activity).permit(:name, :group_id, :amount)
  end
end
