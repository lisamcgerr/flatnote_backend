class NotesController < ApplicationController
    def index
        render json: Note.all
    end

    def show
        note = Note.find_by(id:params[:id])
        render json: note
    end

    def create
        note = Note.create(note_param)
        render json: note
    end
    
    def update
        note = Note.find(params[:id])
        note.update_attributes(note_param)
        render json: note
    end
    
    def destroy
        note = Note.find(params[:id])
        note.destroy
        head :no_content, status: :ok
    end
      
      private
    def note_param
        params.require(:note).permit(:date, :entry, :goal_id)
    end
end
