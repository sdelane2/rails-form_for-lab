class SchoolClassesController < ApplicationController

    def index 
    end

    def show
        @school_class = SchoolClass.find(params[:id])
    end

    def create
        strong_params = params.require(:school_class).permit!
        @school_class = SchoolClass.create(strong_params)
        redirect_to school_class_path(@school_class)
    end

    def update
        strong_params = params.require(:school_class).permit!
        @school_class = SchoolClass.update(strong_params)
        redirect_to school_class_path(@school_class)
    end

    def edit 
        @school_class = SchoolClass.find(params[:id])
    end

    def new
        @school_class = SchoolClass.new 
    end


end